(* ::Package:: *)

poolForTopics[topics_List] :=
  Flatten[Lookup[questionBanks, topics, {}]];

countAvailable[topics_List, difficulties_List, type_String] :=
  Count[
    poolForTopics[topics],
    q_ /; MemberQ[difficulties, q["Difficulty"]] && q["Type"] === type
  ];

ClearAll[generateExerciseSet];

generateExerciseSet[topics_List, difficulties_List, types_List, count_Integer] :=
  Module[{pool},
    pool = Select[
      poolForTopics[topics],
      MemberQ[difficulties, #["Difficulty"]] && MemberQ[types, #["Type"]] &
    ];
    RandomSample[pool, Min[count, Length[pool]]]
  ];


difficultyRank = <|"Beginner" -> 1, "Intermediate" -> 2, "Advanced" -> 3|>;

ClearAll[orderQuestions];

orderQuestions[questions_List, "By Difficulty"] :=
  SortBy[
    RandomSample[questions, Length[questions]],
    Lookup[difficultyRank, #["Difficulty"], 99] &
  ];

orderQuestions[questions_List, _] :=
  RandomSample[questions, Length[questions]];
