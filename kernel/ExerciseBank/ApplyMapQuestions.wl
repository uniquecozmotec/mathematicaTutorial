ClearAll[applyMapQuestions];
applyMapQuestions = {

  <|
    "ID"           "am-mcq-single-beg-1",
    "Topic"        "Apply and Map",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Single",
    "Tags"         {"Map", "/@"},
    "Question"     "What does Map[f, {1, 2, 3}] return?",
    "Options"      {"f[{1, 2, 3}]", "{f[1], f[2], f[3]}", "{1, 2, 3}", "f[1, 2, 3]"},
    "Answer"       "{f[1], f[2], f[3]}",
    "Explanation"  "Map applies f to each element of the list individually, producing a new list of results.",
    "Points"       1
  |>,

  <|
    "ID"           "am-mcq-multi-beg-1",
    "Topic"        "Apply and Map",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Multiple",
    "Tags"         {"Map", "shorthand"},
    "Question"     "Which of the following are equivalent to Map[f, list]?",
    "Options"      {"f /@ list", "Map[f][list]", "list /@ f", "f[list]"},
    "Answer"       {"f /@ list", "Map[f][list]"},
    "Explanation"  "f /@ list is the shorthand infix form of Map, and Map[f][list] uses Map's operator form. The other two options are not equivalent.",
    "Points"       2
  |>,

  <|
    "ID"           "am-blank-beg-1",
    "Topic"        "Apply and Map",
    "Difficulty"   "Beginner",
    "Type"         "Blanks",
    "Tags"         {"Map", "shorthand"},
    "Question"     "Complete the shorthand for mapping the function square over the list {1, 2, 3}.",
    "Template"     "square ____ {1, 2, 3}",
    "Hint"         "The infix operator for Map looks like a forward slash followed by an at sign.",
    "Answer"       "/@",
    "Explanation"  "square /@ {1, 2, 3} is shorthand for Map[square, {1, 2, 3}].",
    "Points"       1
  |>,

  <|
    "ID"            "am-code-beg-1",
    "Topic"         "Apply and Map",
    "Difficulty"    "Beginner",
    "Type"          "Code Writing",
    "Tags"          {"Map"},
    "Question"      "Write a function squareAll that takes a list of numbers and returns a list of their squares using Map.",
    "Template"      "squareAll[list_] := ____",
    "Hint"          "Use Map or its shorthand /@ with a pure function or named function to square each element.",
    "TestCases"     {{{1, 2, 3}, {1, 4, 9}}, {{4, 5}, {16, 25}}, {{0}, {0}}},
    "SampleAnswer"  "squareAll[list_] := (#^2 &) /@ list",
    "Explanation"   "Map applies the squaring pure function (#^2 &) to every element of the list, returning a new list.",
    "Points"        3
  |>,

  <|
    "ID"           "am-mcq-single-int-1",
    "Topic"        "Apply and Map",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Single",
    "Tags"         {"Apply", "@@"},
    "Question"     "What does Apply[Plus, {1, 2, 3}] (equivalently Plus @@ {1, 2, 3}) return?",
    "Options"      {"{1, 2, 3}", "Plus[1, 2, 3]", "6", "{Plus[1], Plus[2], Plus[3]}"},
    "Answer"       "6",
    "Explanation"  "Apply replaces the head List with Plus, giving Plus[1,2,3], which evaluates to 6.",
    "Points"       1
  |>,

  <|
    "ID"           "am-mcq-multi-int-1",
    "Topic"        "Apply and Map",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Multiple",
    "Tags"         {"Map", "Apply", "difference"},
    "Question"     "Which statements correctly distinguish Map from Apply?",
    "Options"      {"Map applies a function to each element; Apply replaces the head", "Both always return a list", "Apply[f, {a,b,c}] gives f[a,b,c]; Map[f, {a,b,c}] gives {f[a],f[b],f[c]}", "Map and Apply are interchangeable in all cases"},
    "Answer"       {"Map applies a function to each element; Apply replaces the head", "Apply[f, {a,b,c}] gives f[a,b,c]; Map[f, {a,b,c}] gives {f[a],f[b],f[c]}"},
    "Explanation"  "Map distributes a function over elements producing a list of results. Apply replaces the head of the expression, producing a single combined result, not necessarily a list.",
    "Points"       2
  |>,

  <|
    "ID"           "am-blank-int-1",
    "Topic"        "Apply and Map",
    "Difficulty"   "Intermediate",
    "Type"         "Blanks",
    "Tags"         {"Apply", "shorthand"},
    "Question"     "Complete the shorthand to apply Times across the list {2, 3, 4} to get their product.",
    "Template"     "Times ____ {2, 3, 4}",
    "Hint"         "The infix operator for Apply looks like two at signs.",
    "Answer"       "@@",
    "Explanation"  "Times @@ {2, 3, 4} is shorthand for Apply[Times, {2, 3, 4}], evaluating to 24.",
    "Points"       2
  |>,

  <|
    "ID"            "am-code-int-1",
    "Topic"         "Apply and Map",
    "Difficulty"    "Intermediate",
    "Type"          "Code Writing",
    "Tags"          {"Map", "MapIndexed"},
    "Question"      "Write a function indexedList that takes a list and returns a list of {index, value} pairs using MapIndexed.",
    "Template"      "indexedList[list_] := ____",
    "Hint"          "MapIndexed gives each element along with its position as a list, e.g. {pos}.",
    "TestCases"     {{{10, 20, 30}, {{1, 10}, {2, 20}, {3, 30}}}, {{5}, {{1, 5}}}},
    "SampleAnswer"  "indexedList[list_] := MapIndexed[{First[#2], #1} &, list]",
    "Explanation"   "MapIndexed passes each element along with its position (as a one-element list); First extracts the numeric index from that position list.",
    "Points"        4
  |>,

  <|
    "ID"           "am-mcq-single-adv-1",
    "Topic"        "Apply and Map",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Single",
    "Tags"         {"Map", "levelspec", "nested lists"},
    "Question"     "What does Map[f, {{1, 2}, {3, 4}}, {2}] do differently from Map[f, {{1, 2}, {3, 4}}]?",
    "Options"      {"Nothing, they are identical", "It applies f to the innermost elements (level 2) instead of the sublists (level 1)", "It applies f only once to the whole expression", "It throws an error since {2} is invalid"},
    "Answer"       "It applies f to the innermost elements (level 2) instead of the sublists (level 1)",
    "Explanation"  "The level specification {2} tells Map to descend two levels deep, applying f to each individual number rather than each sublist.",
    "Points"       1
  |>,

  <|
    "ID"           "am-mcq-multi-adv-1",
    "Topic"        "Apply and Map",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Multiple",
    "Tags"         {"Apply", "levelspec", "MapThread"},
    "Question"     "Which of the following correctly use a level specification or multi-list mapping?",
    "Options"      {"Apply[f, expr, {1}] applies f at level 1 only", "MapThread[f, {{1,2},{3,4}}] applies f to corresponding elements pairwise", "Map[f, list, Infinity] applies f at every level", "Apply always ignores level specifications"},
    "Answer"       {"Apply[f, expr, {1}] applies f at level 1 only", "MapThread[f, {{1,2},{3,4}}] applies f to corresponding elements pairwise", "Map[f, list, Infinity] applies f at every level"},
    "Explanation"  "Apply and Map both accept level specifications. MapThread applies a function across corresponding elements of multiple lists, e.g. {f[1,3], f[2,4]}.",
    "Points"       2
  |>,

  <|
    "ID"           "am-blank-adv-1",
    "Topic"        "Apply and Map",
    "Difficulty"   "Advanced",
    "Type"         "Blanks",
    "Tags"         {"Apply", "levelspec"},
    "Question"     "Complete the Apply call that replaces only the heads of the sublists in {{1,2},{3,4}} with Plus, leaving the outer List head intact.",
    "Template"     "Apply[Plus, {{1, 2}, {3, 4}}, ____]",
    "Hint"         "A level specification of {1} targets only the first level, i.e. the sublists.",
    "Answer"       "{1}",
    "Explanation"  "Apply[Plus, {{1,2},{3,4}}, {1}] replaces the head of each sublist with Plus, giving {3, 7}.",
    "Points"       3
  |>,

  <|
    "ID"            "am-code-adv-1",
    "Topic"         "Apply and Map",
    "Difficulty"    "Advanced",
    "Type"          "Code Writing",
    "Tags"          {"MapThread", "multi-list mapping"},
    "Question"      "Write a function dotProduct that takes two equal-length lists and returns their dot product using MapThread and Apply.",
    "Template"      "dotProduct[a_, b_] := ____",
    "Hint"          "Use MapThread with Times to multiply corresponding elements, then Apply Plus to sum the results.",
    "TestCases"     {{{{1, 2, 3}, {4, 5, 6}}, 32}, {{{1, 0}, {5, 5}}, 5}, {{{2, 2}, {3, 3}}, 12}},
    "SampleAnswer"  "dotProduct[a_, b_] := Plus @@ MapThread[Times, {a, b}]",
    "Explanation"   "MapThread[Times, {a, b}] multiplies corresponding elements pairwise; Apply (@@) with Plus then sums all the products.",
    "Points"        5
  |>,

  (* ---- BEGINNER (added) ---- *)

  <|
    "ID" -> "am-mcq-single-beg-2",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Map", "operator form"},
    "Question" -> "What does Map[f] represent on its own, without a list argument yet?",
    "Options" -> {"An error, Map always needs two arguments", "The operator form of Map, which can later be applied to a list as Map[f][list]", "The same as Apply[f]", "A pure function equivalent to f itself"},
    "Answer" -> "The operator form of Map, which can later be applied to a list as Map[f][list]",
    "Explanation" -> "Map[f] returns an operator that, when applied to a list via Map[f][list], behaves exactly like Map[f, list]. This operator form is useful for composing with other functions.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-mcq-multi-beg-2",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Map", "Association", "levelspec"},
    "Question" -> "Which of the following are true about Map?",
    "Options" -> {"Map[f, assoc] applies f to each value of an Association, preserving the keys", "Map only works on lists, never on Associations", "Map[f, {1, 2, 3}] and f /@ {1, 2, 3} are equivalent", "Map can take a level specification as a third argument"},
    "Answer" -> {"Map[f, assoc] applies f to each value of an Association, preserving the keys", "Map[f, {1, 2, 3}] and f /@ {1, 2, 3} are equivalent", "Map can take a level specification as a third argument"},
    "Explanation" -> "Map works on Associations too, applying f to each value while keeping keys unchanged. /@ is shorthand for Map, and Map also accepts an optional level specification.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-blank-beg-2",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"Map", "pure function"},
    "Question" -> "Complete the pure function so Map adds 1 to every element of {1, 2, 3}.",
    "Template" -> "Map[(# + ____) &, {1, 2, 3}]",
    "Hint" -> "What number, added to #, gives one more than each element?",
    "Answer" -> "1",
    "Explanation" -> "Map[(#+1)&, {1,2,3}] adds 1 to every element via a pure function, giving {2, 3, 4}.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-code-beg-2",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"Map", "StringLength"},
    "Question" -> "Write a function lengths that takes a list of strings and returns a list of their lengths using Map.",
    "Template" -> "lengths[list_] := ____",
    "Hint" -> "Map StringLength over the list, or use the /@ shorthand.",
    "TestCases" -> {{{"a", "bb", "ccc"}, {1, 2, 3}}, {{"hello"}, {5}}, {{}, {}}},
    "SampleAnswer" -> "lengths[list_] := StringLength /@ list",
    "Explanation" -> "StringLength /@ list maps StringLength over every string in the list, returning their character counts.",
    "Points" -> 3
  |>,

  (* ---- INTERMEDIATE (added) ---- *)

  <|
    "ID" -> "am-mcq-single-int-2",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Apply", "levelspec", "default level"},
    "Question" -> "What is the default level for Apply[f, expr] when no level specification is given?",
    "Options" -> {"Level 0 (just replaces the top-level head)", "All levels, recursively", "Level 1 (the arguments)", "It depends on the head of expr"},
    "Answer" -> "Level 0 (just replaces the top-level head)",
    "Explanation" -> "By default Apply replaces only the outermost head of the expression (level 0); a level specification is needed to replace heads deeper in the expression.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-mcq-multi-int-2",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"MapIndexed"},
    "Question" -> "Which of the following are true about MapIndexed?",
    "Options" -> {"MapIndexed[f, list] calls f with each element and a list containing its position, like f[elem, {pos}]", "The position argument is always a bare integer, not wrapped in a list", "MapIndexed can be used to attach an index to each element of a list", "MapIndexed is equivalent to Map when the function ignores its second argument"},
    "Answer" -> {"MapIndexed[f, list] calls f with each element and a list containing its position, like f[elem, {pos}]", "MapIndexed can be used to attach an index to each element of a list", "MapIndexed is equivalent to Map when the function ignores its second argument"},
    "Explanation" -> "MapIndexed passes each element's position as a one-element list (e.g. {3}), not a bare integer \[LongDash] that's why First is often needed to extract the plain index.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-blank-int-2",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"MapIndexed"},
    "Question" -> "Complete the call that applies f to each element of {a, b, c} along with its position.",
    "Template" -> "____[f, {a, b, c}]",
    "Hint" -> "This is the indexed variant of Map.",
    "Answer" -> "MapIndexed",
    "Explanation" -> "MapIndexed[f, {a,b,c}] calls f on each element together with a list containing its position.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-code-int-2",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"MapIndexed", "string building"},
    "Question" -> "Write a function labelPositions that takes a list and returns a list of \"position:value\" strings for each element, using MapIndexed.",
    "Template" -> "labelPositions[list_] := ____",
    "Hint" -> "Use First[#2] to pull the plain index out of the position list MapIndexed provides.",
    "TestCases" -> {{{10, 20}, {"1:10", "2:20"}}, {{5}, {"1:5"}}},
    "SampleAnswer" -> "labelPositions[list_] := MapIndexed[ToString[First[#2]] <> \":\" <> ToString[#1] &, list]",
    "Explanation" -> "MapIndexed supplies each element (#1) together with its position wrapped in a list (#2); First[#2] extracts the plain index, which is then joined with the value into a label string.",
    "Points" -> 4
  |>,

  (* ---- ADVANCED (added) ---- *)

  <|
    "ID" -> "am-mcq-single-adv-2",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Map", "levelspec", "negative level"},
    "Question" -> "What does Map[f, expr, {-1}] do?",
    "Options" -> {"Applies f only at the top level", "Applies f to the deepest-level parts of expr (the leaves)", "It's invalid syntax", "Applies f to every level except the top"},
    "Answer" -> "Applies f to the deepest-level parts of expr (the leaves)",
    "Explanation" -> "A negative level specification like {-1} counts levels from the leaves inward, so {-1} targets only the deepest (leaf) parts of the expression.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-mcq-multi-adv-2",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Apply", "levelspec", "@@@"},
    "Question" -> "Which of the following are true?",
    "Options" -> {"Apply[f, expr, {1}] applies f to the sub-expressions at level 1 (replacing each sublist's head)", "MapThread requires all input lists to have the same length", "Map[f, expr, {2}] applies f the same way Apply[f, expr, {2}] does, since Map and Apply always coincide", "@@@ is shorthand for applying at level 1, equivalent to Apply[f, expr, {1}]"},
    "Answer" -> {"Apply[f, expr, {1}] applies f to the sub-expressions at level 1 (replacing each sublist's head)", "MapThread requires all input lists to have the same length", "@@@ is shorthand for applying at level 1, equivalent to Apply[f, expr, {1}]"},
    "Explanation" -> "Apply replaces heads while Map applies over elements, so they generally do not coincide even at the same level. @@@ is the shorthand for Apply at level 1, and MapThread strictly requires equal-length lists.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-blank-adv-2",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Apply", "@@@", "levelspec"},
    "Question" -> "Complete the operator that applies f at level 1, shorthand for Apply[f, expr, {1}].",
    "Template" -> "f ____ expr",
    "Hint" -> "It looks like Apply's @@ operator with one extra @.",
    "Answer" -> "@@@",
    "Explanation" -> "@@@ is the shorthand operator for Apply at level 1, equivalent to Apply[f, expr, {1}].",
    "Points" -> 3
  |>,

  <|
    "ID" -> "am-code-adv-2",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Apply", "@@@", "levelspec"},
    "Question" -> "Write a function sumRows that takes a list of rows (a list of lists) and returns a list of each row's sum, using Apply at level 1 (@@@).",
    "Template" -> "sumRows[matrix_] := ____",
    "Hint" -> "Plus @@@ matrix applies Plus @@ to each row.",
    "TestCases" -> {{{{1, 2, 3}, {4, 5, 6}}, {6, 15}}, {{{1, 1}, {2, 2}, {3, 3}}, {2, 4, 6}}},
    "SampleAnswer" -> "sumRows[matrix_] := Plus @@@ matrix",
    "Explanation" -> "Plus @@@ matrix applies Apply[Plus, #]& to each row of the matrix (level 1), summing each row independently.",
    "Points" -> 5
  |>,

  (* ================= BEGINNER (rounds 3-5) ================= *)

  <|
    "ID" -> "am-mcq-single-beg-3",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Map", "empty list"},
    "Question" -> "What does Map[f, {}] (mapping over an empty list) return?",
    "Options" -> {"{}", "f[{}]", "An error", "Null"},
    "Answer" -> "{}",
    "Explanation" -> "Mapping any function over an empty list simply returns another empty list, since there are no elements to apply f to.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-mcq-multi-beg-3",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Map", "list length"},
    "Question" -> "Which of the following are true about Map[f, list]?",
    "Options" -> {"The result always has the same length as the original list", "Map applies f to each element independently", "Map can change the length of the list, adding or removing elements", "f is applied once per element, in order"},
    "Answer" -> {"The result always has the same length as the original list", "Map applies f to each element independently", "f is applied once per element, in order"},
    "Explanation" -> "Map always produces a result the same length as the input list, applying f to each element independently and in order; it never changes the number of elements.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-blank-beg-3",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"Map", "shorthand"},
    "Question" -> "Complete the shorthand for mapping the built-in function Sqrt over {4, 9, 16}.",
    "Template" -> "Sqrt ____ {4, 9, 16}",
    "Hint" -> "This is the same shorthand used for Map throughout this topic.",
    "Answer" -> "/@",
    "Explanation" -> "Sqrt /@ {4,9,16} maps Sqrt over each element, giving {2,3,4}.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-code-beg-3",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"Map", "pure function"},
    "Question" -> "Write a function negateAll that returns a list with every element negated, using Map or its shorthand.",
    "Template" -> "negateAll[list_] := ___",
    "Hint" -> "Map a pure function that negates its argument.",
    "TestCases" -> {{{1, -2, 3}, {-1, 2, -3}}, {{}, {}}, {{0}, {0}}},
    "SampleAnswer" -> "negateAll[list_] := -# & /@ list",
    "Explanation" -> "The pure function -#& negates whatever it's given; /@ maps it over every element of list.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "am-mcq-single-beg-4",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Map", "named function"},
    "Question" -> "What does Map[Sqrt, {4, 9, 16}] return?",
    "Options" -> {"{2,3,4}", "Sqrt[{4,9,16}]", "{4,9,16}", "An error, Map requires a pure function"},
    "Answer" -> "{2,3,4}",
    "Explanation" -> "Map works with any function, named or pure; Map[Sqrt, {4,9,16}] applies Sqrt to each element, giving {2,3,4}.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-mcq-multi-beg-4",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Apply", "general heads"},
    "Question" -> "Which of the following are true about Apply[f, expr]?",
    "Options" -> {"Apply[Plus, {1,2,3}] replaces List with Plus, giving Plus[1,2,3] which evaluates to 6", "Apply only works when expr has head List", "Apply[f, g[a,b]] gives f[a,b], replacing g with f", "Apply requires exactly two arguments to expr"},
    "Answer" -> {"Apply[Plus, {1,2,3}] replaces List with Plus, giving Plus[1,2,3] which evaluates to 6", "Apply[f, g[a,b]] gives f[a,b], replacing g with f"},
    "Explanation" -> "Apply replaces the head of any expression (not just lists) with the given function, and works for any number of arguments, not just two.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-blank-beg-4",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"Apply", "shorthand"},
    "Question" -> "Complete the shorthand that replaces the head of {1, 2, 3} with Max to find the largest element.",
    "Template" -> "Max ____ {1, 2, 3}",
    "Hint" -> "This is the shorthand operator for Apply.",
    "Answer" -> "@@",
    "Explanation" -> "Max @@ {1,2,3} is shorthand for Apply[Max, {1,2,3}], giving 3, the largest element.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-code-beg-4",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"Apply", "Max"},
    "Question" -> "Write a function listMax that returns the largest element of a list, using Apply with Max.",
    "Template" -> "listMax[list_] := ___",
    "Hint" -> "Max @@ list replaces the list's head with Max.",
    "TestCases" -> {{{1, 5, 2}, 5}, {{-1, -5}, -1}, {{3}, 3}},
    "SampleAnswer" -> "listMax[list_] := Max @@ list",
    "Explanation" -> "Max @@ list replaces the head List of list with Max, returning the largest element.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "am-mcq-single-beg-5",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Map", "Apply", "choosing between them"},
    "Question" -> "If you want to double every number in a list individually, should you use Map or Apply?",
    "Options" -> {"Map, since it processes each element separately", "Apply, since it processes each element separately", "Either works identically for this purpose", "Neither can do this"},
    "Answer" -> "Map, since it processes each element separately",
    "Explanation" -> "Map applies a function to each element of a list individually; Apply instead replaces the list's head, which isn't what you want for per-element transformation.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-mcq-multi-beg-5",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Map", "MapThread"},
    "Question" -> "Which of the following are true about trying to Map over two lists at once?",
    "Options" -> {"Map[f, {1,2}, {3,4}] is not the standard way to combine two lists element-wise", "MapThread[f, {{1,2},{3,4}}] is the standard way to combine two lists element-wise", "Map only accepts one list (or one expression) to map over at a time in its basic form", "Map and MapThread are exactly interchangeable in every case"},
    "Answer" -> {"Map[f, {1,2}, {3,4}] is not the standard way to combine two lists element-wise", "MapThread[f, {{1,2},{3,4}}] is the standard way to combine two lists element-wise", "Map only accepts one list (or one expression) to map over at a time in its basic form"},
    "Explanation" -> "Map's basic form works over a single list; to combine corresponding elements of multiple lists, MapThread is the standard tool instead.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-blank-beg-5",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"MapThread"},
    "Question" -> "Complete the call that combines {1, 2} and {3, 4} element-wise using Plus, via MapThread.",
    "Template" -> "MapThread[Plus, ____]",
    "Hint" -> "MapThread takes a list of the lists to combine.",
    "Answer" -> "{{1, 2}, {3, 4}}",
    "Explanation" -> "MapThread[Plus, {{1,2},{3,4}}] adds corresponding elements pairwise, giving {4,6}.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-code-beg-5",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"MapThread"},
    "Question" -> "Write a function pairSum that takes two equal-length lists and returns their element-wise sum, using MapThread.",
    "Template" -> "pairSum[a_, b_] := ___",
    "Hint" -> "MapThread[Plus, {a, b}] adds corresponding elements.",
    "TestCases" -> {{{{1, 2, 3}, {10, 20, 30}}, {11, 22, 33}}, {{{0}, {5}}, {5}}},
    "SampleAnswer" -> "pairSum[a_, b_] := MapThread[Plus, {a, b}]",
    "Explanation" -> "MapThread[Plus, {a, b}] applies Plus to corresponding elements of a and b, pairwise.",
    "Points" -> 3
  |>,

  (* ================= INTERMEDIATE (rounds 3-5) ================= *)

  <|
    "ID" -> "am-mcq-single-int-3",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Fold"},
    "Question" -> "What does Fold[f, init, list] do?",
    "Options" -> {"It threads an accumulator through the list, applying f to the running result and each element in turn", "It applies f to only the first element", "It's identical to Map", "It requires init to be a list"},
    "Answer" -> "It threads an accumulator through the list, applying f to the running result and each element in turn",
    "Explanation" -> "Fold[f, init, list] starts with init and repeatedly applies f to the current accumulated value and the next list element, producing a single final result.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-mcq-multi-int-3",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"FoldList", "Fold"},
    "Question" -> "Which of the following are true about FoldList compared to Fold?",
    "Options" -> {"FoldList returns a list of all intermediate accumulated values, including the final one", "Fold returns only the single final accumulated value", "FoldList[f, init, list] has one more element than list (including init)", "FoldList and Fold always return the same thing"},
    "Answer" -> {"FoldList returns a list of all intermediate accumulated values, including the final one", "Fold returns only the single final accumulated value", "FoldList[f, init, list] has one more element than list (including init)"},
    "Explanation" -> "FoldList keeps every intermediate step of the accumulation, while Fold discards everything except the final result; FoldList's output includes the initial value, so it's one element longer than the input list.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-blank-int-3",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"FoldList"},
    "Question" -> "Complete the call that computes the running sum of {1, 2, 3, 4}, keeping every intermediate total, starting from 0.",
    "Template" -> "____[Plus, 0, {1, 2, 3, 4}]",
    "Hint" -> "This is the variant of Fold that keeps every intermediate result.",
    "Answer" -> "FoldList",
    "Explanation" -> "FoldList[Plus, 0, {1,2,3,4}] returns {0,1,3,6,10}, the running total after each step.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-code-int-3",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"FoldList"},
    "Question" -> "Write a function runningTotal that returns the list of running sums of a list, starting from 0 (so the result has one more element than the input), using FoldList.",
    "Template" -> "runningTotal[list_] := ___",
    "Hint" -> "FoldList[Plus, 0, list] keeps every intermediate sum.",
    "TestCases" -> {{{1, 2, 3}, {0, 1, 3, 6}}, {{}, {0}}, {{5}, {0, 5}}},
    "SampleAnswer" -> "runningTotal[list_] := FoldList[Plus, 0, list]",
    "Explanation" -> "FoldList[Plus, 0, list] keeps every intermediate running sum, starting from the initial 0.",
    "Points" -> 4
  |>,

  <|
    "ID" -> "am-mcq-single-int-4",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"GroupBy"},
    "Question" -> "What does GroupBy[list, criterion] do?",
    "Options" -> {"It partitions list into an Association of groups, keyed by the result of applying criterion to each element", "It sorts list according to criterion", "It removes elements that don't satisfy criterion", "It's identical to Select"},
    "Answer" -> "It partitions list into an Association of groups, keyed by the result of applying criterion to each element",
    "Explanation" -> "GroupBy organizes list into an Association where each key is a distinct output of criterion, and the corresponding value is the list of elements that produced that key.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-mcq-multi-int-4",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"SortBy"},
    "Question" -> "Which of the following are true about SortBy[list, f]?",
    "Options" -> {"It sorts list based on comparing f applied to each element, not the elements themselves directly", "SortBy[{-3,1,-2}, Abs] sorts by absolute value, giving {1,-2,-3}", "It always sorts in decreasing order", "SortBy applies f to each element exactly once, similar in spirit to how Map applies a function to each element"},
    "Answer" -> {"It sorts list based on comparing f applied to each element, not the elements themselves directly", "SortBy[{-3,1,-2}, Abs] sorts by absolute value, giving {1,-2,-3}", "SortBy applies f to each element exactly once, similar in spirit to how Map applies a function to each element"},
    "Explanation" -> "SortBy compares the results of applying f to each element (rather than the elements directly) to determine sort order; it defaults to increasing order of the computed keys.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-blank-int-4",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"SortBy"},
    "Question" -> "Complete the call that sorts {-3, 1, -2} by absolute value.",
    "Template" -> "SortBy[{-3, 1, -2}, ____]",
    "Hint" -> "Which built-in function computes absolute value?",
    "Answer" -> "Abs",
    "Explanation" -> "SortBy[{-3,1,-2}, Abs] sorts the list according to each element's absolute value, giving {1,-2,-3}.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-code-int-4",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"SortBy", "StringLength"},
    "Question" -> "Write a function sortByLength that takes a list of strings and returns them sorted from shortest to longest, using SortBy.",
    "Template" -> "sortByLength[list_] := ___",
    "Hint" -> "SortBy[list, StringLength] sorts by each string's length.",
    "TestCases" -> {{{"ccc", "a", "bb"}, {"a", "bb", "ccc"}}, {{"x"}, {"x"}}},
    "SampleAnswer" -> "sortByLength[list_] := SortBy[list, StringLength]",
    "Explanation" -> "SortBy compares each string's StringLength to determine order, sorting from shortest to longest.",
    "Points" -> 4
  |>,

  <|
    "ID" -> "am-mcq-single-int-5",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Select", "Map"},
    "Question" -> "What is the key difference between Select[list, pred] and Map[f, list]?",
    "Options" -> {"Select keeps only elements satisfying pred (possibly shortening the list), while Map transforms every element (keeping the same length)", "They are identical", "Select can only be used on numbers", "Map always removes elements"},
    "Answer" -> "Select keeps only elements satisfying pred (possibly shortening the list), while Map transforms every element (keeping the same length)",
    "Explanation" -> "Select filters a list down to only the elements satisfying a predicate, potentially changing its length, while Map transforms every element in place, always preserving the original length.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-mcq-multi-int-5",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Select", "Map", "pipeline"},
    "Question" -> "Which of the following describe valid ways to first filter a list and then transform the results?",
    "Options" -> {"Map[f, Select[list, pred]] first filters, then maps f over the survivors", "Select[Map[f, list], pred] instead maps first, then filters based on the transformed values", "Both orders are always exactly equivalent regardless of f and pred", "This kind of filter-then-transform pipeline is a common and useful pattern"},
    "Answer" -> {"Map[f, Select[list, pred]] first filters, then maps f over the survivors", "Select[Map[f, list], pred] instead maps first, then filters based on the transformed values", "This kind of filter-then-transform pipeline is a common and useful pattern"},
    "Explanation" -> "The order of Select and Map matters: filtering first vs. transforming first can give different results depending on f and pred, even though both are common, useful patterns.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-blank-int-5",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"Select"},
    "Question" -> "Complete the call that keeps only the even numbers from {1, 2, 3, 4, 5, 6}.",
    "Template" -> "Select[{1, 2, 3, 4, 5, 6}, ____]",
    "Hint" -> "Which predicate tests whether a number is even?",
    "Answer" -> "EvenQ",
    "Explanation" -> "Select[list, EvenQ] keeps only the elements for which EvenQ returns True, giving {2,4,6}.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-code-int-5",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"Select", "Map", "pipeline"},
    "Question" -> "Write a function squareEvens that takes a list of numbers, keeps only the even ones, and returns their squares, using Select and Map together.",
    "Template" -> "squareEvens[list_] := ___",
    "Hint" -> "Select the even numbers first, then Map the squaring function over the survivors.",
    "TestCases" -> {{{1, 2, 3, 4}, {4, 16}}, {{5, 7}, {}}, {{2, 4, 6}, {4, 16, 36}}},
    "SampleAnswer" -> "squareEvens[list_] := Map[#^2 &, Select[list, EvenQ]]",
    "Explanation" -> "Select[list, EvenQ] filters down to the even numbers first; Map then squares each survivor.",
    "Points" -> 4
  |>,

  (* ================= ADVANCED (rounds 3-5) ================= *)

  <|
    "ID" -> "am-mcq-single-adv-3",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"GatherBy", "GroupBy"},
    "Question" -> "What does GatherBy[list, f] return, in contrast to GroupBy[list, f]?",
    "Options" -> {"GatherBy returns a list of lists (groups), while GroupBy returns an Association keyed by each group's criterion value", "They return identical structures", "GatherBy can only group numbers", "GatherBy removes duplicate groups"},
    "Answer" -> "GatherBy returns a list of lists (groups), while GroupBy returns an Association keyed by each group's criterion value",
    "Explanation" -> "GatherBy partitions elements into a list of grouped sublists based on shared criterion values, without explicitly labeling each group the way GroupBy's Association keys do.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-mcq-multi-adv-3",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Map", "Heads option"},
    "Question" -> "Which of the following are true about Map[f, expr, levelspec, Heads -> True]?",
    "Options" -> {"Setting Heads->True makes Map also apply f to the head of expr, not just its arguments", "By default (Heads->False), Map leaves the head of expr untouched", "This option lets Map behave somewhat like a combination of Map and Operate", "Heads->True is the default behavior of Map"},
    "Answer" -> {"Setting Heads->True makes Map also apply f to the head of expr, not just its arguments", "By default (Heads->False), Map leaves the head of expr untouched", "This option lets Map behave somewhat like a combination of Map and Operate"},
    "Explanation" -> "By default Map only touches the arguments, leaving the head alone; Heads->True extends Map to also apply f to the head itself, similar in spirit to Operate.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-blank-adv-3",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"GatherBy"},
    "Question" -> "Complete the call that groups {1, 2, 3, 4, 5, 6} into sublists by whether each is even or odd, using GatherBy.",
    "Template" -> "GatherBy[{1, 2, 3, 4, 5, 6}, ____]",
    "Hint" -> "Which predicate distinguishes even from odd?",
    "Answer" -> "EvenQ",
    "Explanation" -> "GatherBy[list, EvenQ] groups elements sharing the same EvenQ result into separate sublists, e.g. all odds together and all evens together.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "am-code-adv-3",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"GatherBy"},
    "Question" -> "Write a function groupByParity that takes a list of numbers and returns them grouped into sublists by even/odd, using GatherBy.",
    "Template" -> "groupByParity[list_] := ___",
    "Hint" -> "GatherBy[list, EvenQ] groups elements sharing the same EvenQ result.",
    "TestCases" -> {{{1, 2, 3, 4}, {{1, 3}, {2, 4}}}, {{2, 4}, {{2, 4}}}},
    "SampleAnswer" -> "groupByParity[list_] := GatherBy[list, EvenQ]",
    "Explanation" -> "GatherBy preserves the order groups first appear, gathering every element sharing the same EvenQ result into the same sublist.",
    "Points" -> 5
  |>,

  <|
    "ID" -> "am-mcq-single-adv-4",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"function composition", "@*"},
    "Question" -> "What does (f @* g)[x] compute?",
    "Options" -> {"f[g[x]], applying g first then f", "g[f[x]], applying f first then g", "f[x] + g[x]", "It's invalid syntax"},
    "Answer" -> "f[g[x]], applying g first then f",
    "Explanation" -> "@* is function composition: (f @* g)[x] applies g first, then feeds the result into f, i.e. f[g[x]].",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-mcq-multi-adv-4",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Through"},
    "Question" -> "Which of the following are true about Through[{f,g,h}[x]]?",
    "Options" -> {"It applies each of f, g, and h to x, returning {f[x], g[x], h[x]}", "It applies f to g to h in sequence, like composition", "It requires f, g, h to all be numeric functions", "Through is a way to apply a list of functions to a single shared argument"},
    "Answer" -> {"It applies each of f, g, and h to x, returning {f[x], g[x], h[x]}", "Through is a way to apply a list of functions to a single shared argument"},
    "Explanation" -> "Through[{f,g,h}[x]] distributes x across each function in the list, returning {f[x],g[x],h[x]} \[LongDash] a way to apply multiple functions to the same shared argument.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-blank-adv-4",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Through"},
    "Question" -> "Complete the call that applies Min, Max, and Mean to the same list {1, 2, 3, 4, 5} all at once, using Through.",
    "Template" -> "Through[{Min, Max, Mean}[____]]",
    "Hint" -> "The shared argument goes inside the brackets after the list of functions.",
    "Answer" -> "{1, 2, 3, 4, 5}",
    "Explanation" -> "Through[{Min,Max,Mean}[{1,2,3,4,5}]] applies each function to the same list, returning {Min[...], Max[...], Mean[...]}.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "am-code-adv-4",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Through"},
    "Question" -> "Write a function summaryStats that takes a list of numbers and returns {min, max, mean} using Through.",
    "Template" -> "summaryStats[list_] := ___",
    "Hint" -> "Through[{Min, Max, Mean}[list]] applies all three functions to the same list.",
    "TestCases" -> {{{1, 2, 3, 4, 5}, {1, 5, 3}}, {{10, 20}, {10, 20, 15}}},
    "SampleAnswer" -> "summaryStats[list_] := Through[{Min, Max, Mean}[list]]",
    "Explanation" -> "Through distributes list across Min, Max, and Mean, returning all three summary statistics as one list.",
    "Points" -> 5
  |>,

  <|
    "ID" -> "am-mcq-single-adv-5",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"AllTrue"},
    "Question" -> "What does AllTrue[list, pred] return?",
    "Options" -> {"True if pred returns True for every element of list, False otherwise", "True if pred returns True for at least one element", "The count of elements satisfying pred", "A filtered list of matching elements"},
    "Answer" -> "True if pred returns True for every element of list, False otherwise",
    "Explanation" -> "AllTrue[list, pred] checks whether pred holds for every single element, analogous to a universally-quantified condition.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "am-mcq-multi-adv-5",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"AnyTrue", "NoneTrue"},
    "Question" -> "Which of the following correctly describe AnyTrue and NoneTrue?",
    "Options" -> {"AnyTrue[list, pred] is True if at least one element satisfies pred", "NoneTrue[list, pred] is True if no element satisfies pred", "AnyTrue and NoneTrue are logical opposites of each other for the same predicate", "They both always return a filtered list, not a boolean"},
    "Answer" -> {"AnyTrue[list, pred] is True if at least one element satisfies pred", "NoneTrue[list, pred] is True if no element satisfies pred", "AnyTrue and NoneTrue are logical opposites of each other for the same predicate"},
    "Explanation" -> "AnyTrue and NoneTrue are complementary boolean tests \[LongDash] for any given predicate, exactly one describes \"at least one matches\" and the other \"none match\", and they always return a single True/False, not a filtered list.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "am-blank-adv-5",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"AllTrue"},
    "Question" -> "Complete the call that checks whether all elements of {2, 4, 6} are even.",
    "Template" -> "____[{2, 4, 6}, EvenQ]",
    "Hint" -> "This function checks a predicate against every element.",
    "Answer" -> "AllTrue",
    "Explanation" -> "AllTrue[{2,4,6}, EvenQ] returns True only if every element satisfies EvenQ.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "am-code-adv-5",
    "Topic" -> "Apply and Map",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"AllTrue"},
    "Question" -> "Write a function allPositive that returns True if every element of a list is positive, using AllTrue.",
    "Template" -> "allPositive[list_] := ___",
    "Hint" -> "AllTrue[list, Positive] checks every element.",
    "TestCases" -> {{{1, 2, 3}, True}, {{1, -2, 3}, False}, {{}, True}},
    "SampleAnswer" -> "allPositive[list_] := AllTrue[list, Positive]",
    "Explanation" -> "AllTrue[list, Positive] returns True only if every element satisfies Positive; vacuously True for an empty list.",
    "Points" -> 5
  |>

};
