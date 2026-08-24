(* ::Package:: *)

Unprotect[cardWidth];
cardWidth = 640;
Protect[cardWidth];

ClearAll[formatAnswerValue, wrappedText, renderQuestionInput, renderQuestionHeader, renderFeedbackPanel, renderResultRow];
formatAnswerValue[x_List] :=
  If[x === {}, "(none selected)", StringRiffle[ToString /@ x, ", "]];
formatAnswerValue[x_String] :=
  If[StringTrim[x] === "", "(no answer given)", x];
formatAnswerValue[x_] := ToString[x];

wrappedText[content_, styleDirectives___] :=
  Pane[Style[content, styleDirectives], cardWidth - 40, Alignment -> Left];

renderQuestionInput[q_Association, dUserAnswer_Dynamic, dSelectedOptions_Dynamic, enabled_: True] :=
  Which[
    q["Type"] === "MCQ-Single",
      Column[
        RadioButtonBar[dUserAnswer, {#}, Enabled -> enabled] & /@ q["Options"],
        Alignment -> Left,
        Spacings -> 0.7
      ],

    q["Type"] === "MCQ-Multiple",
      Column[
        CheckboxBar[dSelectedOptions, {#}, Enabled -> enabled] & /@ q["Options"],
        Alignment -> Left,
        Spacings -> 0.7
      ],

    q["Type"] === "Blanks",
      InputField[dUserAnswer, String, FieldSize -> {40, 1}, Enabled -> enabled],

    q["Type"] === "Code Writing",
      InputField[dUserAnswer, String, FieldSize -> {60, 5}, Enabled -> enabled],

    True,
      Style["Unsupported question type: " <> ToString[q["Type"]], Red]
  ];

renderQuestionHeader[q_Association, current_Integer, total_Integer] :=
  Column[{
    Style["Question " <> ToString[current] <> " / " <> ToString[total], Bold, 14],
    ProgressIndicator[current, {0, total}, ImageSize -> 300],
    Style[
      q["Difficulty"] <> " - " <> q["Type"] <> "  (" <> ToString[Lookup[q, "Points", 1]] <> " pts)",
      Gray, 12
    ],
    wrappedText[q["Question"], 15]
  }];

renderFeedbackPanel[answerRecord_Association] :=
  Panel[
    Column[{
      If[answerRecord["Correct"],
        Style["Correct!", Green, Bold, 14],
        Style["Wrong", Red, Bold, 14]
      ],
      wrappedText["Your Answer: " <> formatAnswerValue[answerRecord["UserAnswer"]], 13],
      wrappedText["Correct Answer: " <> formatAnswerValue[answerRecord["CorrectAnswer"]], 13],
      wrappedText[answerRecord["Explanation"], Gray, 12]
    }],
    ImageSize -> {cardWidth, Automatic}
  ];

renderResultRow[i_Integer, answerRecord_Association] :=
  Panel[
    Column[{
      Style[
        "Q" <> ToString[i] <> "  (" <> ToString[answerRecord["Points"]] <>
          " / " <> ToString[answerRecord["MaxPoints"]] <> " pts)",
        Bold, 14
      ],
      wrappedText[answerRecord["Question"], 13],
      wrappedText["Your Answer: " <> formatAnswerValue[answerRecord["UserAnswer"]], 13],
      wrappedText["Correct Answer: " <> formatAnswerValue[answerRecord["CorrectAnswer"]], 13],
      If[answerRecord["Correct"],
        Style["Correct", Green, Bold, 13],
        Style["Wrong", Red, Bold, 13]
      ],
      wrappedText[answerRecord["Explanation"], Gray, 12]
    }],
    ImageSize -> {cardWidth, Automatic}
  ];
