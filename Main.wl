(* ::Package:: *)

Quiet[ClearAll["Global`*"], General::wrsym];

projectRoot = DirectoryName[$InputFileName];

safeGet[file_] := Module[{path = FileNameJoin[{projectRoot, file}]},
  If[FileExistsQ[path],
    Get[path],
    Print["Missing file: ", path]
  ]
];

safeGet["kernel/ExerciseGenerator.wl"];
safeGet["kernel/AnswerChecker.wl"];
safeGet["kernel/QuestionRenderer.wl"];
safeGet["kernel/UIComponents.wl"];

exercisePath = FileNameJoin[{projectRoot, "kernel", "ExerciseBank"}];

questionFiles = FileNames["*Questions.wl", exercisePath];

If[questionFiles === {},
  Print["No question files found in ", exercisePath]
];

questionBanks = Association[];

Do[
  Module[{fileBase, correctedBase, topicName, varName, questionVar},

    Get[file];

    fileBase = FileBaseName[file];

    correctedBase = StringReplace[fileBase, "Funtion" -> "Function"];

    topicName = StringReplace[correctedBase, "Questions" -> ""];

    varName = ToLowerCase[StringTake[correctedBase, 1]] <> StringDrop[correctedBase, 1];

    questionVar = ToExpression[varName];

    If[ListQ[questionVar],
      questionBanks[topicName] = questionVar,
      Print["Warning: variable \"", varName, "\" not found in ", file]
    ];
  ],
  {file, questionFiles}
];

allQuestions = questionBanks;

getQuestions[topic_] := Lookup[questionBanks, topic, {}];

Print["==================================="];
Print["Mathematica Teaching System Loaded"];
Print["Topics Loaded: ", Keys[questionBanks]];
Print["==================================="];
