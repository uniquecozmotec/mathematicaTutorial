(* ::Package:: *)

ClearAll[normalize, checkMCQSingle, checkMCQMultiple, checkBlanks, checkCodeWriting, checkAnswer];

normalize[x_] := ToLowerCase @ StringReplace[
  StringTrim[ToString[x]],
  {"." -> "", "," -> ""}
];

checkMCQSingle[question_, userAnswer_] := Module[{correct},

  correct = question["Answer"];

  normalize[userAnswer] === normalize[correct]
];

checkMCQMultiple[question_, userAnswer_] := Module[
  {correct, ua, ca},

  correct = question["Answer"];

  ua = Sort[normalize /@ userAnswer];
  ca = Sort[normalize /@ correct];
  ua === ca
];

checkBlanks[question_, userAnswer_] := Module[{correct},

  correct = question["Answer"];

  normalize[userAnswer] === normalize[correct]
];

checkCodeWriting[question_, studentCode_String] := Module[
  {template, funcNameMatches, funcName, argsMatches, argsText, arity,
   uniqueSymbol, patchedCode, testCases, inputs, expected, outputs, ok},

  template = question["Template"];

  funcNameMatches = StringCases[
    template,
    StartOfString ~~ name : (LetterCharacter | DigitCharacter).. ~~ "[" :> name
  ];

  If[funcNameMatches === {}, Return[False]];

  funcName = First[funcNameMatches];

  argsMatches = StringCases[
    template,
    StartOfString ~~ Except["["].. ~~ "[" ~~ Shortest[args___] ~~ "]" :> args
  ];
  argsText = If[argsMatches === {}, "", First[argsMatches]];
  arity = If[StringTrim[argsText] === "", 1, Length[StringSplit[argsText, ","]]];

  uniqueSymbol = SymbolName[Unique[funcName]];

  patchedCode = StringReplace[
    studentCode,
    RegularExpression["\\b" <> funcName <> "\\b"] -> uniqueSymbol
  ];

  testCases = question["TestCases"];
  inputs = testCases[[All, 1]];
  expected = testCases[[All, 2]];

  ok = Quiet @ Check[
    ToExpression[patchedCode];
    outputs = Table[
      Quiet @ Check[
        TimeConstrained[
          If[arity > 1,
            ToExpression[uniqueSymbol] @@ input,
            ToExpression[uniqueSymbol][input]
          ],
          2, $Failed
        ],
        $Failed
      ],
      {input, inputs}
    ];
    outputs === expected,

    False
  ];

  Quiet[ClearAll[uniqueSymbol]];

  ok
];

checkAnswer[question_, userAnswer_] := Module[{type},

  type = question["Type"];

  Which[
    type === "MCQ-Single",
      checkMCQSingle[question, userAnswer],

    type === "MCQ-Multiple",
      checkMCQMultiple[question, userAnswer],

    type === "Blanks",
      checkBlanks[question, userAnswer],

    type === "Code Writing",
      checkCodeWriting[question, userAnswer],

    True,
      False
  ]
];
