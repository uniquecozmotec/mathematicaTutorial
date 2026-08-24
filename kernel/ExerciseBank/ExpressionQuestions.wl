ClearAll[expressionQuestions];
expressionQuestions = {

  <|
    "ID"           "expr-mcq-single-beg-1",
    "Topic"        "Expressions",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Single",
    "Tags"         {"Head", "expression structure"},
    "Question"     "What does Head[3 + 4 x] return?",
    "Options"      {"Times", "Plus", "List", "Integer"},
    "Answer"       "Plus",
    "Explanation"  "Every Mathematica expression has a head. 3 + 4 x is internally Plus[3, Times[4, x]], so its head is Plus.",
    "Points"       1
  |>,

  <|
    "ID"           "expr-mcq-multi-beg-1",
    "Topic"        "Expressions",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Multiple",
    "Tags"         {"expression structure", "FullForm"},
    "Question"     "Which of the following are true about Mathematica expressions?",
    "Options"      {"Everything is an expression with a head", "Lists have head List", "Numbers have no head", "f[x, y] has head f"},
    "Answer"       {"Everything is an expression with a head", "Lists have head List", "f[x, y] has head f"},
    "Explanation"  "All expressions, including numbers, have heads (e.g. Integer, Real). Lists have head List, and f[x,y] has head f.",
    "Points"       2
  |>,

  <|
    "ID"           "expr-blank-beg-1",
    "Topic"        "Expressions",
    "Difficulty"   "Beginner",
    "Type"         "Blanks",
    "Tags"         {"Head"},
    "Question"     "Complete the function call to get the head of the expression {1, 2, 3}.",
    "Template"     "____[{1, 2, 3}]",
    "Hint"         "There is a built-in function specifically for retrieving the head of an expression.",
    "Answer"       "Head",
    "Explanation"  "Head[{1, 2, 3}] returns List, since lists are internally List[1, 2, 3].",
    "Points"       1
  |>,

  <|
    "ID"            "expr-code-beg-1",
    "Topic"         "Expressions",
    "Difficulty"    "Beginner",
    "Type"          "Code Writing",
    "Tags"          {"Head", "Part"},
    "Question"      "Write a function getHead that takes any expression and returns its head as a string.",
    "Template"      "getHead[expr_] := ____",
    "Hint"          "Use Head to get the head, then ToString to convert it to a string.",
    "TestCases"     {{{1, 2, 3}, "List"}, {3 + 4, "Integer"}, {f[x], "f"}},
    "SampleAnswer"  "getHead[expr_] := ToString[Head[expr]]",
    "Explanation"   "Head[expr] returns the head as a symbol; ToString converts it into a printable string.",
    "Points"        3
  |>,

  

  <|
    "ID"           "expr-mcq-single-int-1",
    "Topic"        "Expressions",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Single",
    "Tags"         {"Part", "indexing"},
    "Question"     "What does f[a, b, c][[2]] return?",
    "Options"      {"f", "a", "b", "c"},
    "Answer"       "b",
    "Explanation"  "Part indexing on f[a,b,c] treats the head as position 0, so [[1]] is a, [[2]] is b, and [[3]] is c.",
    "Points"       1
  |>,

  <|
    "ID"           "expr-mcq-multi-int-1",
    "Topic"        "Expressions",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Multiple",
    "Tags"         {"Part", "indexing", "position 0"},
    "Question"     "Which statements about Part indexing in Mathematica are correct?",
    "Options"      {"expr[[0]] returns the head of expr", "Indexing is 1-based for arguments", "Negative indices count from the end", "Part indexing only works on lists"},
    "Answer"       {"expr[[0]] returns the head of expr", "Indexing is 1-based for arguments", "Negative indices count from the end"},
    "Explanation"  "Part indexing works on any expression, not just lists. Position 0 is the head, positions 1+ are arguments, and negative indices count from the end.",
    "Points"       2
  |>,

  <|
    "ID"           "expr-blank-int-1",
    "Topic"        "Expressions",
    "Difficulty"   "Intermediate",
    "Type"         "Blanks",
    "Tags"         {"Part", "indexing"},
    "Question"     "Complete the expression to get the last element of the list {10, 20, 30, 40}.",
    "Template"     "{10, 20, 30, 40}[[____]]",
    "Hint"         "Negative indices count backwards from the end of the list.",
    "Answer"       -1,
    "Explanation"  "[[-1]] retrieves the last element of a list, here 40.",
    "Points"       2
  |>,

  <|
    "ID"            "expr-code-int-1",
    "Topic"         "Expressions",
    "Difficulty"    "Intermediate",
    "Type"          "Code Writing",
    "Tags"          {"Part", "Length", "expression structure"},
    "Question"      "Write a function lastElement that returns the last element of any list using Part indexing.",
    "Template"      "lastElement[list_] := ____",
    "Hint"          "Use the negative index -1, or combine Length with Part.",
    "TestCases"     {{{1, 2, 3}, 3}, {{5, 10}, 10}, {{7}, 7}},
    "SampleAnswer"  "lastElement[list_] := list[[-1]]",
    "Explanation"   "list[[-1]] directly accesses the last element regardless of list length.",
    "Points"        4
  |>,



  <|
    "ID"           "expr-mcq-single-adv-1",
    "Topic"        "Expressions",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Single",
    "Tags"         {"FullForm", "internal representation"},
    "Question"     "What is the FullForm of a - b?",
    "Options"      {"Subtract[a, b]", "Plus[a, Times[-1, b]]", "Minus[a, b]", "Plus[a, b, -1]"},
    "Answer"       "Plus[a, Times[-1, b]]",
    "Explanation"  "Mathematica has no built-in Subtract head for infix subtraction; a - b is internally Plus[a, Times[-1, b]].",
    "Points"       1
  |>,

  <|
    "ID"           "expr-mcq-multi-adv-1",
    "Topic"        "Expressions",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Multiple",
    "Tags"         {"expression manipulation", "Apply", "Level"},
    "Question"     "Which functions operate on the structure of an expression rather than its evaluated value?",
    "Options"      {"Head", "Apply (@@)", "N", "Level"},
    "Answer"       {"Head", "Apply (@@)", "Level"},
    "Explanation"  "Head, Apply, and Level inspect or manipulate expression structure. N computes a numeric value, not structure.",
    "Points"       2
  |>,

  <|
    "ID"           "expr-blank-adv-1",
    "Topic"        "Expressions",
    "Difficulty"   "Advanced",
    "Type"         "Blanks",
    "Tags"         {"Apply", "head replacement"},
    "Question"     "Complete the expression that replaces the head List with Plus in {1, 2, 3} to sum its elements.",
    "Template"     "Plus ____ {1, 2, 3}",
    "Hint"         "Apply (@@) replaces the head of an expression with the given function.",
    "Answer"       "@@",
    "Explanation"  "Plus @@ {1, 2, 3} applies Apply to replace List with Plus, giving Plus[1,2,3] which evaluates to 6.",
    "Points"       3
  |>,

  <|
    "ID"            "expr-code-adv-1",
    "Topic"         "Expressions",
    "Difficulty"    "Advanced",
    "Type"          "Code Writing",
    "Tags"          {"Apply", "expression manipulation"},
    "Question"      "Write a function productOf that takes a list of numbers and returns their product using Apply.",
    "Template"      "productOf[list_] := ____",
    "Hint"          "Use Apply (@@) to replace the head List with Times.",
    "TestCases"     {{{2, 3, 4}, 24}, {{1, 5}, 5}, {{6}, 6}},
    "SampleAnswer"  "productOf[list_] := Times @@ list",
    "Explanation"   "Times @@ list replaces the head List of list with Times, producing the product of all elements.",
    "Points"        5
  |>,

  (* ---- BEGINNER (added) ---- *)

  <|
    "ID" -> "expr-mcq-single-beg-2",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Length", "expression structure"},
    "Question" -> "What does Length[f[a, b, c]] return?",
    "Options" -> {"0", "1", "3", "4"},
    "Answer" -> "3",
    "Explanation" -> "Length counts the number of arguments (top-level parts) of the expression, so f[a,b,c] has length 3, not counting the head itself.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-mcq-multi-beg-2",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"atoms", "expression structure"},
    "Question" -> "Which of the following are atomic expressions (atoms) in Mathematica?",
    "Options" -> {"5 (an integer)", "\"hello\" (a string)", "x (a symbol)", "{1, 2, 3} (a list)"},
    "Answer" -> {"5 (an integer)", "\"hello\" (a string)", "x (a symbol)"},
    "Explanation" -> "Atoms are expressions with no meaningful subparts to extract \[LongDash] numbers, strings, and symbols. Lists like {1,2,3} are compound expressions built from List and its elements.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-blank-beg-2",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"Length"},
    "Question" -> "Complete the function call to count how many arguments f[a, b, c] has.",
    "Template" -> "____[f[a, b, c]]",
    "Hint" -> "There is a built-in function specifically for counting top-level parts.",
    "Answer" -> "Length",
    "Explanation" -> "Length[f[a,b,c]] returns 3, the number of arguments the expression has.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-code-beg-2",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"Length", "expression structure"},
    "Question" -> "Write a function countArgs that returns the number of arguments (top-level parts) of any expression.",
    "Template" -> "countArgs[expr_] := ____",
    "Hint" -> "Length directly reports the number of top-level parts, regardless of head.",
    "TestCases" -> {{f[1, 2, 3], 3}, {{1, 2}, 2}, {g[x], 1}},
    "SampleAnswer" -> "countArgs[expr_] := Length[expr]",
    "Explanation" -> "Length returns the number of top-level parts (arguments) of any expression, regardless of its head.",
    "Points" -> 3
  |>,

  (* ---- INTERMEDIATE (added) ---- *)

  <|
    "ID" -> "expr-mcq-single-int-2",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Part", "Span"},
    "Question" -> "What does {10, 20, 30, 40}[[2 ;; 3]] return?",
    "Options" -> {"{20, 30}", "{10, 20, 30}", "20", "{10, 40}"},
    "Answer" -> "{20, 30}",
    "Explanation" -> "The span 2;;3 extracts a contiguous slice from position 2 through position 3, giving {20, 30}.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-mcq-multi-int-2",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Part", "nested lists", "All"},
    "Question" -> "Which of the following statements about Part indexing on nested lists are correct?",
    "Options" -> {"{{1, 2}, {3, 4}}[[1, 2]] returns 2, accessing row 1, column 2", "{{1, 2}, {3, 4}}[[2]] returns the second sublist {3, 4}", "Part indices for nested access must be written as a single flat list, never comma-separated", "{{1, 2}, {3, 4}}[[All, 1]] returns the first column {1, 3}"},
    "Answer" -> {"{{1, 2}, {3, 4}}[[1, 2]] returns 2, accessing row 1, column 2", "{{1, 2}, {3, 4}}[[2]] returns the second sublist {3, 4}", "{{1, 2}, {3, 4}}[[All, 1]] returns the first column {1, 3}"},
    "Explanation" -> "Multi-index Part access like [[1,2]] descends level by level, [[2]] grabs a whole sublist, and All combined with an index pulls the same position out of every sublist, e.g. the first column.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-blank-int-2",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"Part", "All"},
    "Question" -> "Complete the Part call that extracts the second column from {{1, 2}, {3, 4}, {5, 6}}.",
    "Template" -> "{{1, 2}, {3, 4}, {5, 6}}[[____, 2]]",
    "Hint" -> "There is a special token that means \"every position at this level\".",
    "Answer" -> "All",
    "Explanation" -> "[[All, 2]] takes position 2 from every sublist, extracting the second column {2, 4, 6}.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-code-int-2",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"Part", "All", "matrix"},
    "Question" -> "Write a function column that takes a matrix (a list of equal-length rows) and a column index, and returns that column as a list, using Part.",
    "Template" -> "column[matrix_, i_] := ____",
    "Hint" -> "Combine All with the column index inside a single Part call: matrix[[All, i]].",
    "TestCases" -> {{{{{1, 2}, {3, 4}, {5, 6}}, 1}, {1, 3, 5}}, {{{{1, 2}, {3, 4}, {5, 6}}, 2}, {2, 4, 6}}},
    "SampleAnswer" -> "column[matrix_, i_] := matrix[[All, i]]",
    "Explanation" -> "matrix[[All, i]] takes position i from every row, extracting the i-th column.",
    "Points" -> 4
  |>,

  (* ---- ADVANCED (added) ---- *)

  <|
    "ID" -> "expr-mcq-single-adv-2",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Depth", "nesting"},
    "Question" -> "What does Depth[{{1, 2}, {3, {4, 5}}}] measure?",
    "Options" -> {"The total number of elements", "The number of nesting levels plus one, i.e. how deeply nested the expression is", "The number of atoms", "The number of lists only"},
    "Answer" -> "The number of nesting levels plus one, i.e. how deeply nested the expression is",
    "Explanation" -> "Depth returns 1 + the maximum nesting level of the expression; atoms have depth 1, so a doubly-nested list like this one has depth 4.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-mcq-multi-adv-2",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Hold", "Evaluate", "ReleaseHold"},
    "Question" -> "Which of the following are true about Hold and Evaluate?",
    "Options" -> {"Hold prevents its argument from evaluating", "Evaluate forces evaluation of an expression even inside a normally-held context", "Hold and Evaluate have no effect when used together", "ReleaseHold removes the Hold wrapper, allowing evaluation to proceed"},
    "Answer" -> {"Hold prevents its argument from evaluating", "Evaluate forces evaluation of an expression even inside a normally-held context", "ReleaseHold removes the Hold wrapper, allowing evaluation to proceed"},
    "Explanation" -> "Hold keeps its argument unevaluated; Evaluate can force evaluation even inside a held context, and ReleaseHold strips the Hold wrapper so evaluation can proceed normally.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-blank-adv-2",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Depth", "nesting"},
    "Question" -> "Complete the function call that reports how deeply nested the expression {1, {2, {3, 4}}} is.",
    "Template" -> "____[{1, {2, {3, 4}}}]",
    "Hint" -> "There is a built-in function specifically for measuring nesting depth.",
    "Answer" -> "Depth",
    "Explanation" -> "Depth[{1,{2,{3,4}}}] returns 4, one more than the deepest level of nesting.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "expr-code-adv-2",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Depth", "nesting"},
    "Question" -> "Write a function maxDepth that returns the nesting depth of any expression.",
    "Template" -> "maxDepth[expr_] := ____",
    "Hint" -> "Depth directly reports the nesting depth of any expression.",
    "TestCases" -> {{{1, 2, 3}, 2}, {{1, {2, 3}}, 3}, {5, 1}},
    "SampleAnswer" -> "maxDepth[expr_] := Depth[expr]",
    "Explanation" -> "Depth[expr] directly reports the expression's nesting depth; a flat list has depth 2, and a bare atom has depth 1.",
    "Points" -> 5
  |>,

  (* ================= BEGINNER (rounds 3-5) ================= *)

  <|
    "ID" -> "expr-mcq-single-beg-3",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"FullForm"},
    "Question" -> "What does FullForm[expr] show?",
    "Options" -> {"The expression written out with all shorthand notation expanded into explicit function calls", "A shortened version of the expression", "The expression's numeric value only", "Nothing different from normal display"},
    "Answer" -> "The expression written out with all shorthand notation expanded into explicit function calls",
    "Explanation" -> "FullForm displays an expression using fully explicit function-call notation, revealing shorthand like +, *, and lists as Plus[...], Times[...], List[...].",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-mcq-multi-beg-3",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Head"},
    "Question" -> "Which of the following correctly state the head of each expression?",
    "Options" -> {"Head[5] is Integer", "Head[\"hi\"] is String", "Head[{1,2}] is List", "Head[f[x]] is x"},
    "Answer" -> {"Head[5] is Integer", "Head[\"hi\"] is String", "Head[{1,2}] is List"},
    "Explanation" -> "Head[f[x]] is f, not x \[LongDash] the head of f[x] is the function symbol f itself, while x is just its argument.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-blank-beg-3",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"Length"},
    "Question" -> "Complete the function call that returns the number of arguments of g[a, b, c, d].",
    "Template" -> "____[g[a, b, c, d]]",
    "Hint" -> "There is a built-in function specifically for counting top-level parts.",
    "Answer" -> "Length",
    "Explanation" -> "Length[g[a,b,c,d]] returns 4, the number of arguments.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-code-beg-3",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"Part"},
    "Question" -> "Write a function firstArg that returns the first argument of any expression using Part indexing.",
    "Template" -> "firstArg[expr_] := ___",
    "Hint" -> "Use [[1]] to get the first part.",
    "TestCases" -> {{f[1, 2, 3], 1}, {{5, 6, 7}, 5}, {g[9], 9}},
    "SampleAnswer" -> "firstArg[expr_] := expr[[1]]",
    "Explanation" -> "expr[[1]] retrieves the first argument of any expression, regardless of its head.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "expr-mcq-single-beg-4",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"TreeForm"},
    "Question" -> "What does TreeForm[expr] show?",
    "Options" -> {"A visual tree diagram of the expression's structure, with the head and each part as nodes", "A textual list of all variables used", "The expression's numeric approximation", "Nothing, TreeForm doesn't exist"},
    "Answer" -> "A visual tree diagram of the expression's structure, with the head and each part as nodes",
    "Explanation" -> "TreeForm renders an expression as a visual tree, showing the head and each argument as connected nodes, making the expression's structure easy to see.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-mcq-multi-beg-4",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"atoms"},
    "Question" -> "Which of the following are atoms (have no meaningful sub-parts)?",
    "Options" -> {"3/4 (a rational number)", "2+3I (a complex number)", "x (a symbol)", "f[x] (a compound expression)"},
    "Answer" -> {"3/4 (a rational number)", "2+3I (a complex number)", "x (a symbol)"},
    "Explanation" -> "Rational and complex numbers, like symbols, are atomic in Mathematica \[LongDash] they have no accessible sub-parts, unlike a compound expression like f[x].",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-blank-beg-4",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"TreeForm"},
    "Question" -> "Complete the function call that renders the expression 3+4x as a visual tree.",
    "Template" -> "____[3 + 4 x]",
    "Hint" -> "This function shows an expression's structure as a diagram.",
    "Answer" -> "TreeForm",
    "Explanation" -> "TreeForm[3+4x] displays the expression's structure visually, showing Plus at the root with 3 and 4x as branches.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-code-beg-4",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"AtomQ"},
    "Question" -> "Write a function isAtomic that returns True if an expression is atomic (has no sub-parts), False otherwise, using the built-in AtomQ.",
    "Template" -> "isAtomic[expr_] := ___",
    "Hint" -> "AtomQ tests exactly this.",
    "TestCases" -> {{5, True}, {"hi", True}, {f[x], False}, {{1, 2}, False}},
    "SampleAnswer" -> "isAtomic[expr_] := AtomQ[expr]",
    "Explanation" -> "AtomQ[expr] returns True exactly when expr has no accessible sub-parts, such as numbers, strings, and symbols.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "expr-mcq-single-beg-5",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Position"},
    "Question" -> "What does Position[{1, 2, 3, 2}, 2] return?",
    "Options" -> {"{{2},{4}}", "2", "{2,4}", "{1,3}"},
    "Answer" -> "{{2},{4}}",
    "Explanation" -> "Position returns a list of position specifications (each itself a list) for every match, so it returns {{2},{4}} for the two occurrences of 2.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-mcq-multi-beg-5",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Cases"},
    "Question" -> "Which of the following are true about Cases[list, pattern]?",
    "Options" -> {"It returns all elements of list matching pattern, in order", "It returns True/False for whether any element matches", "Cases can use the same pattern syntax as function definitions, like _Integer", "It modifies list in place"},
    "Answer" -> {"It returns all elements of list matching pattern, in order", "Cases can use the same pattern syntax as function definitions, like _Integer"},
    "Explanation" -> "Cases collects all elements matching the given pattern into a new list, preserving order; it doesn't modify the original list or return a boolean.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-blank-beg-5",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"Cases", "typed pattern"},
    "Question" -> "Complete the call that extracts all integers from the list {1, \"a\", 2, \"b\", 3}.",
    "Template" -> "Cases[{1, \"a\", 2, \"b\", 3}, ____]",
    "Hint" -> "Use a typed blank restricted to integers.",
    "Answer" -> "_Integer",
    "Explanation" -> "Cases[list, _Integer] collects every element matching the typed blank _Integer, giving {1,2,3}.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-code-beg-5",
    "Topic" -> "Expressions",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"Cases", "typed pattern"},
    "Question" -> "Write a function onlyStrings that returns just the string elements of a list, using Cases.",
    "Template" -> "onlyStrings[list_] := ___",
    "Hint" -> "Use Cases with the typed blank _String.",
    "TestCases" -> {{{1, "a", 2, "b"}, {"a", "b"}}, {{"x", "y"}, {"x", "y"}}, {{1, 2, 3}, {}}},
    "SampleAnswer" -> "onlyStrings[list_] := Cases[list, _String]",
    "Explanation" -> "Cases[list, _String] collects every element matching the typed blank _String, in order.",
    "Points" -> 3
  |>,

  (* ================= INTERMEDIATE (rounds 3-5) ================= *)

  <|
    "ID" -> "expr-mcq-single-int-3",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"ReplacePart"},
    "Question" -> "What does ReplacePart[{1, 2, 3}, 2 -> 99] return?",
    "Options" -> {"{1,99,3}", "{99,2,3}", "{1,2,99}", "{1,2,3,99}"},
    "Answer" -> "{1,99,3}",
    "Explanation" -> "ReplacePart replaces the element at the specified position (position 2) with the new value, giving {1,99,3}.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-mcq-multi-int-3",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Insert", "Delete"},
    "Question" -> "Which of the following are true about Insert and Delete?",
    "Options" -> {"Insert[list, val, pos] adds val at the given position, shifting later elements right", "Delete[list, pos] removes the element at the given position", "Insert and Delete only work on the outermost level of an expression, never nested", "Both Insert and Delete return a new expression rather than modifying the original in place"},
    "Answer" -> {"Insert[list, val, pos] adds val at the given position, shifting later elements right", "Delete[list, pos] removes the element at the given position", "Both Insert and Delete return a new expression rather than modifying the original in place"},
    "Explanation" -> "Insert and Delete both work at any level of a nested expression (not just the outermost), and like most Mathematica functions they return new expressions rather than mutating in place.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-blank-int-3",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"Delete"},
    "Question" -> "Complete the call that deletes the element at position 3 from {10, 20, 30, 40}.",
    "Template" -> "Delete[{10, 20, 30, 40}, ____]",
    "Hint" -> "Which position holds the value 30?",
    "Answer" -> "3",
    "Explanation" -> "Delete[{10,20,30,40}, 3] removes the third element, giving {10,20,40}.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-code-int-3",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"ReplacePart"},
    "Question" -> "Write a function replaceAt that takes a list, a position, and a new value, and returns the list with that position replaced.",
    "Template" -> "replaceAt[list_, pos_, val_] := ___",
    "Hint" -> "Use ReplacePart with the rule pos -> val.",
    "TestCases" -> {{{{1, 2, 3}, 2, 99}, {1, 99, 3}}, {{{5, 6}, 1, 0}, {0, 6}}},
    "SampleAnswer" -> "replaceAt[list_, pos_, val_] := ReplacePart[list, pos -> val]",
    "Explanation" -> "ReplacePart[list, pos -> val] returns a copy of list with the element at pos replaced by val.",
    "Points" -> 4
  |>,

  <|
    "ID" -> "expr-mcq-single-int-4",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"MapAt"},
    "Question" -> "What does MapAt[f, {1, 2, 3}, 2] do?",
    "Options" -> {"Applies f only to the element at position 2, leaving others unchanged", "Applies f to every element", "Applies f to all except position 2", "Removes the element at position 2"},
    "Answer" -> "Applies f only to the element at position 2, leaving others unchanged",
    "Explanation" -> "MapAt[f, expr, pos] applies f only at the specified position(s), leaving the rest of the expression untouched.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-mcq-multi-int-4",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Extract"},
    "Question" -> "Which of the following are true about Extract[expr, {pos1, pos2, ...}]?",
    "Options" -> {"It returns a list of the parts found at each given position", "Extract[{10,20,30}, {{1},{3}}] returns {10,30}", "It is similar to using Part ([[...]]) for each position individually, then collecting the results", "It can only extract exactly one position at a time"},
    "Answer" -> {"It returns a list of the parts found at each given position", "Extract[{10,20,30}, {{1},{3}}] returns {10,30}", "It is similar to using Part ([[...]]) for each position individually, then collecting the results"},
    "Explanation" -> "Extract fetches multiple parts at once given a list of position specifications, similar to gathering several Part results together.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-blank-int-4",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"MapAt", "pure function"},
    "Question" -> "Complete the MapAt call that squares only the second element of {1, 2, 3}.",
    "Template" -> "MapAt[____, {1, 2, 3}, 2]",
    "Hint" -> "Use a pure function that squares its argument.",
    "Answer" -> "#^2 &",
    "Explanation" -> "MapAt[(#^2 &), {1,2,3}, 2] squares only the element at position 2, giving {1,4,3}.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-code-int-4",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"MapAt"},
    "Question" -> "Write a function squareAt that takes a list and a position, and returns the list with the element at that position squared (others unchanged), using MapAt.",
    "Template" -> "squareAt[list_, pos_] := ___",
    "Hint" -> "MapAt[#^2 &, list, pos] applies squaring only at pos.",
    "TestCases" -> {{{{1, 2, 3}, 2}, {1, 4, 3}}, {{{5, 6}, 1}, {25, 6}}},
    "SampleAnswer" -> "squareAt[list_, pos_] := MapAt[#^2 &, list, pos]",
    "Explanation" -> "MapAt applies the squaring pure function only at the given position, leaving every other element unchanged.",
    "Points" -> 4
  |>,

  <|
    "ID" -> "expr-mcq-single-int-5",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Position", "no match"},
    "Question" -> "What does Position[{1, 2, 3}, 99] return, given 99 doesn't appear in the list?",
    "Options" -> {"{}", "Missing[]", "An error", "Null"},
    "Answer" -> "{}",
    "Explanation" -> "When no elements match, Position simply returns an empty list {}, indicating no matches were found.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-mcq-multi-int-5",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"levelspec", "Cases"},
    "Question" -> "Which of the following are true about using a level specification with Position or Cases?",
    "Options" -> {"By default, Cases only looks at level 1 (the direct elements) unless given a level spec like Infinity", "Cases[expr, pattern, Infinity] searches at every level, including nested sub-expressions", "Level specifications have no meaning for Cases, only for Map", "Position always searches every level regardless of any level spec given"},
    "Answer" -> {"By default, Cases only looks at level 1 (the direct elements) unless given a level spec like Infinity", "Cases[expr, pattern, Infinity] searches at every level, including nested sub-expressions"},
    "Explanation" -> "Cases defaults to searching only level 1 unless given an explicit level specification like Infinity, which extends the search into nested sub-expressions.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-blank-int-5",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"levelspec", "Cases"},
    "Question" -> "Complete the Cases call that finds all integers anywhere in the nested expression {1, {2, \"a\"}, {3, {4}}}, including inside sublists.",
    "Template" -> "Cases[{1, {2, \"a\"}, {3, {4}}}, _Integer, ____]",
    "Hint" -> "Use the level specification that means \"search every level\".",
    "Answer" -> "Infinity",
    "Explanation" -> "The level specification Infinity tells Cases to search every level of nesting, not just the top level, finding all integers no matter how deeply nested.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-code-int-5",
    "Topic" -> "Expressions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"levelspec", "Cases"},
    "Question" -> "Write a function allIntegers that returns every integer found anywhere in a possibly-nested expression, using Cases with a level specification.",
    "Template" -> "allIntegers[expr_] := ___",
    "Hint" -> "Cases[expr, _Integer, Infinity] searches every level.",
    "TestCases" -> {{{1, {2, "a"}, {3, {4}}}, {1, 2, 3, 4}}, {{5, 6}, {5, 6}}},
    "SampleAnswer" -> "allIntegers[expr_] := Cases[expr, _Integer, Infinity]",
    "Explanation" -> "The Infinity level specification makes Cases search every level of nesting, collecting every integer regardless of depth.",
    "Points" -> 4
  |>,

  (* ================= ADVANCED (rounds 3-5) ================= *)

  <|
    "ID" -> "expr-mcq-single-adv-3",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Operate", "Apply"},
    "Question" -> "What does Operate[f, expr] do, in contrast to Apply[f, expr]?",
    "Options" -> {"Operate[f, expr] applies f to the head of expr (giving f[Head[expr]][args...]), while Apply replaces the head entirely with f", "They are exactly the same function under different names", "Operate only works on numbers", "Operate removes the head entirely"},
    "Answer" -> "Operate[f, expr] applies f to the head of expr (giving f[Head[expr]][args...]), while Apply replaces the head entirely with f",
    "Explanation" -> "Operate wraps f around the head itself (f[Head[expr]][args]), which is subtly different from Apply, which directly substitutes f in place of the head.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-mcq-multi-adv-3",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Level"},
    "Question" -> "Which of the following are true about the Level function?",
    "Options" -> {"Level[expr, n] returns all sub-expressions at level n", "Level[expr, {0, Infinity}] returns the expression itself plus every sub-expression at every level", "Level is used to extract sub-expressions by depth, not by matching a pattern like Cases does", "Level can never be combined with Cases"},
    "Answer" -> {"Level[expr, n] returns all sub-expressions at level n", "Level[expr, {0, Infinity}] returns the expression itself plus every sub-expression at every level", "Level is used to extract sub-expressions by depth, not by matching a pattern like Cases does"},
    "Explanation" -> "Level extracts sub-expressions purely by their depth/position in the expression tree, unlike Cases which filters by pattern match; the two are often used together.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-blank-adv-3",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Operate"},
    "Question" -> "Complete the call that applies f to the head of expr, rather than replacing the head entirely.",
    "Template" -> "____[f, expr]",
    "Hint" -> "This function wraps f around the head instead of substituting it.",
    "Answer" -> "Operate",
    "Explanation" -> "Operate[f, expr] wraps f around expr's existing head, producing f[Head[expr]][args...].",
    "Points" -> 3
  |>,

  <|
    "ID" -> "expr-code-adv-3",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Operate"},
    "Question" -> "Write a function headWrapped that takes an expression and a function f, and returns the result of applying f to the expression's head (using Operate), without changing the arguments.",
    "Template" -> "headWrapped[expr_, f_] := ___",
    "Hint" -> "Operate[f, expr] wraps f around expr's head.",
    "TestCases" -> {{{{1, 2, 3}, g}, g[List][1, 2, 3]}, {{f[1, 2], h}, h[f][1, 2]}},
    "SampleAnswer" -> "headWrapped[expr_, f_] := Operate[f, expr]",
    "Explanation" -> "Operate[f, expr] wraps f around expr's existing head while leaving the arguments in place.",
    "Points" -> 5
  |>,

  <|
    "ID" -> "expr-mcq-single-adv-4",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Unevaluated", "Hold"},
    "Question" -> "What is the key difference between Unevaluated[expr] and Hold[expr]?",
    "Options" -> {"Unevaluated only suppresses evaluation for a single pass (e.g. when passed as a function argument), while Hold keeps its contents unevaluated indefinitely until explicitly released", "They are exactly identical in every situation", "Hold cannot be used with numbers", "Unevaluated permanently prevents any future evaluation, even after being returned"},
    "Answer" -> "Unevaluated only suppresses evaluation for a single pass (e.g. when passed as a function argument), while Hold keeps its contents unevaluated indefinitely until explicitly released",
    "Explanation" -> "Unevaluated is a lighter-weight, single-use mechanism typically used to pass an unevaluated argument into a function, whereas Hold keeps its contents unevaluated indefinitely, requiring something like ReleaseHold to evaluate them later.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-mcq-multi-adv-4",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Attributes"},
    "Question" -> "Which of the following are true about the Attributes function?",
    "Options" -> {"Attributes[f] returns a list of all attributes currently set on f, like {Listable, Orderless}", "SetAttributes and ClearAttributes are used to modify a symbol's attribute list", "Attributes can only ever be inspected, never changed", "An empty list {} means the symbol has no special attributes set"},
    "Answer" -> {"Attributes[f] returns a list of all attributes currently set on f, like {Listable, Orderless}", "SetAttributes and ClearAttributes are used to modify a symbol's attribute list", "An empty list {} means the symbol has no special attributes set"},
    "Explanation" -> "Attributes[f] reports every attribute currently set on f; SetAttributes and ClearAttributes modify that list, and an empty list means no special attributes are set.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-blank-adv-4",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Attributes"},
    "Question" -> "Complete the call that inspects which attributes are set on the symbol Plus.",
    "Template" -> "____[Plus]",
    "Hint" -> "This function reports a symbol's attributes.",
    "Answer" -> "Attributes",
    "Explanation" -> "Attributes[Plus] reveals Plus's built-in attributes, including Listable, Orderless, and Flat.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "expr-code-adv-4",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Attributes", "MemberQ"},
    "Question" -> "Write a function hasAttribute that takes a symbol and an attribute name, and returns True if that attribute is set on the symbol.",
    "Template" -> "hasAttribute[sym_, attr_] := ___",
    "Hint" -> "Check whether attr is a MemberQ of Attributes[sym].",
    "TestCases" -> {{{Plus, Orderless}, True}, {{Plus, HoldAll}, False}},
    "SampleAnswer" -> "hasAttribute[sym_, attr_] := MemberQ[Attributes[sym], attr]",
    "Explanation" -> "Attributes[sym] lists every attribute set on sym; MemberQ checks whether attr is among them.",
    "Points" -> 4
  |>,

  <|
    "ID" -> "expr-mcq-single-adv-5",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Slot", "nested pure functions"},
    "Question" -> "In Map[(Map[#+1&, #])&, {{1,2},{3,4}}], what does the inner # refer to?",
    "Options" -> {"Each individual number inside the current sublist", "The current sublist as a whole", "The very first element of the whole nested list", "There's no difference between inner and outer #"},
    "Answer" -> "Each individual number inside the current sublist",
    "Explanation" -> "Each # is automatically scoped to its nearest enclosing pure function (&), so the inner #+1& operates on individual numbers while the outer # refers to each sublist being mapped over.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "expr-mcq-multi-adv-5",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"SameQ", "Equal"},
    "Question" -> "Which of the following are true about the difference between === (SameQ) and == (Equal)?",
    "Options" -> {"=== checks exact structural identity, without trying to simplify or numerically compare", "== attempts a mathematical/symbolic equality check, and may return unevaluated if it can't decide", "1 === 1.0 is False, since Integer 1 and Real 1.0 have different heads/representations", "1 == 1.0 is False, since one is an Integer and the other a Real"},
    "Answer" -> {"=== checks exact structural identity, without trying to simplify or numerically compare", "== attempts a mathematical/symbolic equality check, and may return unevaluated if it can't decide", "1 === 1.0 is False, since Integer 1 and Real 1.0 have different heads/representations"},
    "Explanation" -> "=== is strict structural comparison (so 1===1.0 is False, different types), while == performs numeric/symbolic comparison, so 1==1.0 is actually True despite the type difference.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "expr-blank-adv-5",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"SameQ"},
    "Question" -> "Complete the comparison that checks strict structural equality (not numeric equality) between two expressions.",
    "Template" -> "expr1 ____ expr2",
    "Hint" -> "This operator is stricter than ==.",
    "Answer" -> "===",
    "Explanation" -> "=== (SameQ) checks exact structural identity between two expressions, without attempting any numeric simplification.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "expr-code-adv-5",
    "Topic" -> "Expressions",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"SameQ"},
    "Question" -> "Write a function structurallyEqual that returns True if two expressions are exactly structurally identical (not just numerically equal), using ===.",
    "Template" -> "structurallyEqual[a_, b_] := ___",
    "Hint" -> "Use === directly between a and b.",
    "TestCases" -> {{{1, 1}, True}, {{1, 1.0}, False}, {{{1, 2}, {1, 2}}, True}},
    "SampleAnswer" -> "structurallyEqual[a_, b_] := a === b",
    "Explanation" -> "=== requires exact structural identity, so an Integer 1 and Real 1.0 are considered different even though they're numerically equal.",
    "Points" -> 5
  |>

};
