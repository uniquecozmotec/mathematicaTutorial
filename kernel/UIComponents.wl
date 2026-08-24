(* ::Package:: *)

ClearAll[LaunchExerciseSystem];

LaunchExerciseSystem[initialTopics_List : {}] := DynamicModule[
  {
    allTopics = If[AssociationQ[questionBanks], Keys[questionBanks], {}],
    topicLabels = If[AssociationQ[questionBanks],
      Association[
        # -> Lookup[First[questionBanks[#], <||>], "Topic", #] & /@ Keys[questionBanks]
      ],
      <||>
    ],

    topics = initialTopics,
    difficulties = {"Beginner"},
    questionTypes = {"MCQ-Single", "MCQ-Multiple", "Blanks", "Code Writing"},
    mode = "Practice",
    orderMode = "Random",

    typeCounts = <|
      "MCQ-Single" -> 0,
      "MCQ-Multiple" -> 0,
      "Blanks" -> 0,
      "Code Writing" -> 0
    |>,

    questions = {},
    current = 1,

    userAnswer = "",
    selectedOptions = {},
    hasAnswer = False,
    answers = {},
    finished = False,
    showFeedback = False,
    clampCounts,
    resetSession
  },

  clampCounts[] := Module[{avail},
    Do[
      avail = countAvailable[topics, difficulties, t];
      typeCounts[t] = Clip[typeCounts[t], {0, avail}],
      {t, questionTypes}
    ]
  ];

  resetSession[] := (
    questions = {};
    current = 1;
    answers = {};
    finished = False;
    showFeedback = False;
    userAnswer = "";
    selectedOptions = {};
    hasAnswer = False;
  );

  Column[{

    Style["Exercise System", 22, Bold],

    Panel[
      Column[{

        Row[
          Prepend[
            Riffle[
              (
                With[{tk = #},
                  Row[{
                    Checkbox[
                      Dynamic[
                        MemberQ[topics, tk],
                        (topics = If[TrueQ[#], Union[topics, {tk}], DeleteCases[topics, tk]];
                         clampCounts[]) &
                      ]
                    ],
                    Spacer[4],
                    Lookup[topicLabels, tk, tk]
                  }]
                ]
              ) & /@ allTopics,
              Spacer[10]
            ],
            "Topics: "
          ]
        ],

        Row[{
          "Difficulty: ",
          CheckboxBar[
            Dynamic[difficulties, (difficulties = #; clampCounts[]) &],
            {"Beginner", "Intermediate", "Advanced"}
          ]
        }],

        Row[{
          Style["Mode: ", Bold],
          RadioButtonBar[Dynamic[mode], {"Practice", "Test"}]
        }],

        Dynamic[
          Style[
            If[mode === "Practice",
              "Immediate feedback and explanation shown after each question.",
              "Feedback and explanations shown only at the end, with a final score."
            ],
            Gray, 12
          ]
        ],

        Row[{
          Style["Order: ", Bold],
          RadioButtonBar[Dynamic[orderMode], {"Random", "By Difficulty"}]
        }],

        Style["Question types:", Bold],

        Dynamic[
          Grid[
            Table[
              With[{tt = t},
                {
                  Style[tt, Bold, 13],
                  Dynamic[Style["(" <> ToString[countAvailable[topics, difficulties, tt]] <> " available)", Gray, 12]],
                  Button["-",
                    typeCounts[tt] = Max[typeCounts[tt] - 1, 0],
                    Enabled -> Dynamic[typeCounts[tt] > 0],
                    ImageSize -> {28, 24}
                  ],
                  Dynamic[typeCounts[tt]],
                  Button["+",
                    typeCounts[tt] = Min[
                      typeCounts[tt] + 1,
                      countAvailable[topics, difficulties, tt]
                    ],
                    Enabled -> Dynamic[typeCounts[tt] < countAvailable[topics, difficulties, tt]],
                    ImageSize -> {28, 24}
                  ]
                }
              ],
              {t, questionTypes}
            ],
            Alignment -> {{Left, Left, Center, Center, Center}, Center},
            Spacings -> {1.5, 1.2},
            Dividers -> {False, {False, {GrayLevel[0.85]}, False}}
          ]
        ],

        Row[{
          Style["Total selected: ", Bold],
          Dynamic[Total[Values[typeCounts]]]
        }],

        Button["Generate",
          resetSession[];
          questions = Flatten[
            KeyValueMap[
              generateExerciseSet[topics, difficulties, {#1}, #2] &,
              typeCounts
            ]
          ];
          questions = orderQuestions[questions, orderMode];
          ,
          Enabled -> Dynamic[Total[Values[typeCounts]] > 0]
        ]
      }],
      ImageSize -> {cardWidth, Automatic}
    ],

    Dynamic[
      If[questions === {},
        Panel[
          Style["Select question types and generate to start.", Italic, 13],
          ImageSize -> {cardWidth, Automatic}
        ],

        If[finished,

          Module[
            {
              earnedPoints = Total[answers[[All, "Points"]]],
              totalPoints = Total[answers[[All, "MaxPoints"]]],
              numCorrect = Count[answers, a_ /; a["Correct"]]
            },
            Panel[
              Column[{
                Style["Completed", 18, Bold],

                Style[
                  "Score: " <> ToString[earnedPoints] <> " / " <> ToString[totalPoints] <> " points"
                  <> "  (" <> ToString[numCorrect] <> " / " <> ToString[Length[answers]] <> " correct)",
                  16
                ],

                ProgressIndicator[
                  If[totalPoints > 0, earnedPoints/totalPoints, 0],
                  ImageSize -> 300
                ],

                Column[
                  Table[renderResultRow[i, answers[[i]]], {i, Length[answers]}]
                ],

                Button["New Exercise Set", resetSession[], ImageSize -> Full]
              }],
              ImageSize -> {cardWidth, Automatic}
            ]
          ],

          Module[{q = questions[[current]], pts},

            pts = Lookup[q, "Points", 1];

            Panel[
              Column[{

                renderQuestionHeader[q, current, Length[questions]],

                renderQuestionInput[
                  q,
                  Dynamic[userAnswer, (userAnswer = #; hasAnswer = StringTrim[#] =!= "") &],
                  Dynamic[selectedOptions, (selectedOptions = #; hasAnswer = # =!= {}) &],
                  !showFeedback
                ],

                If[mode === "Practice" && showFeedback,
                  renderFeedbackPanel[Last[answers]],
                  Nothing
                ],

                Button[
                  Dynamic[If[showFeedback, "Next", "Submit"]],

                  If[!showFeedback,

                    Module[{q = questions[[current]], pts = Lookup[questions[[current]], "Points", 1], ans, correct},

                      ans = Which[
                        q["Type"] === "MCQ-Multiple",
                          selectedOptions,

                        True,
                          userAnswer
                      ];

                      correct = checkAnswer[q, ans];

                      AppendTo[answers,
                        <|
                          "Question" -> q["Question"],
                          "UserAnswer" -> ans,
                          "CorrectAnswer" -> Lookup[q, "Answer", Lookup[q, "SampleAnswer", ""]],
                          "Correct" -> correct,
                          "Explanation" -> Lookup[q, "Explanation", ""],
                          "Points" -> If[correct, pts, 0],
                          "MaxPoints" -> pts
                        |>
                      ];

                      If[mode === "Practice",
                        showFeedback = True,

                        If[current == Length[questions],
                          finished = True,
                          current++;
                          userAnswer = "";
                          selectedOptions = {};
                          hasAnswer = False;
                        ];
                      ];
                    ],

                    (
                      showFeedback = False;
                      If[current == Length[questions],
                        finished = True,
                        current++;
                        userAnswer = "";
                        selectedOptions = {};
                        hasAnswer = False;
                      ];
                    )
                  ],
                  ImageSize -> Full,
                  Enabled -> Dynamic[showFeedback || hasAnswer]
                ]
              }],
              ImageSize -> {cardWidth, Automatic}
            ]
          ]
        ]
      ]
    ]
  }]
];
