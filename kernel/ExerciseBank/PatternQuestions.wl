ClearAll[patternQuestions];
patternQuestions = {


  <|
    "ID"           "pat-mcq-single-beg-1",
    "Topic"        "Patterns",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Single",
    "Tags"         {"blank pattern", "wildcard"},
    "Question"     "What does the pattern _ match in Mathematica?",
    "Options"      {"Only numbers", "Only lists", "Any single expression", "Any sequence of expressions"},
    "Answer"       "Any single expression",
    "Explanation"  "_ is the blank pattern and matches exactly one expression of any type.",
    "Points"       1
  |>,

  <|
    "ID"           "pat-mcq-multi-beg-1",
    "Topic"        "Patterns",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Multiple",
    "Tags"         {"named pattern", "blank pattern"},
    "Question"     "Which of the following are valid Mathematica patterns?",
    "Options"      {"x_", "_Integer", "x__", "x?"},
    "Answer"       {"x_", "_Integer", "x__"},
    "Explanation"  "x_ is a named blank, _Integer is a typed blank, and x__ is a named blank sequence. x? alone is not valid syntax.",
    "Points"       2
  |>,

  <|
    "ID"           "pat-blank-beg-1",
    "Topic"        "Patterns",
    "Difficulty"   "Beginner",
    "Type"         "Blanks",
    "Tags"         {"named pattern"},
    "Question"     "Complete the pattern that matches any single expression and names it x.",
    "Template"     "____",
    "Hint"         "A named blank combines a variable name with the underscore.",
    "Answer"       "x_",
    "Explanation"  "x_ is a named blank pattern: it matches one expression and binds it to the name x.",
    "Points"       1
  |>,

  <|
    "ID"            "pat-code-beg-1",
    "Topic"         "Patterns",
    "Difficulty"    "Beginner",
    "Type"          "Code Writing",
    "Tags"          {"pattern matching", "function definition"},
    "Question"      "Write a function double that uses a pattern to match any number n and returns 2 * n.",
    "Template"      "double[____] := ____",
    "Hint"          "Use a named blank for the argument and multiply it by 2.",
    "TestCases"     {{3, 6}, {5, 10}, {0, 0}},
    "SampleAnswer"  "double[n_] := 2 * n",
    "Explanation"   "n_ matches any single expression and binds it to n, which is then used in the body.",
    "Points"        3
  |>,


  <|
    "ID"           "pat-mcq-single-int-1",
    "Topic"        "Patterns",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Single",
    "Tags"         {"typed pattern", "_Integer"},
    "Question"     "What does _Integer match?",
    "Options"      {"Any expression", "Any number", "Only integer values", "Only positive integers"},
    "Answer"       "Only integer values",
    "Explanation"  "_Integer is a typed blank that matches only expressions with head Integer.",
    "Points"       1
  |>,

  <|
    "ID"           "pat-mcq-multi-int-1",
    "Topic"        "Patterns",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Multiple",
    "Tags"         {"blank sequence", "__", "___"},
    "Question"     "Which statements about __ (BlankSequence) are correct?",
    "Options"      {"Matches one or more expressions", "Matches zero or more expressions", "Can be named with x__", "Is the same as ___"},
    "Answer"       {"Matches one or more expressions", "Can be named with x__"},
    "Explanation"  "__ matches one or more expressions. ___ matches zero or more. They are distinct.",
    "Points"       2
  |>,

  <|
    "ID"           "pat-blank-int-1",
    "Topic"        "Patterns",
    "Difficulty"   "Intermediate",
    "Type"         "Blanks",
    "Tags"         {"condition", "PatternTest"},
    "Question"     "Complete the pattern that matches only positive numbers.",
    "Template"     "n_ /; n ____ 0",
    "Hint"         "Use a condition with /; to constrain the pattern.",
    "Answer"       ">",
    "Explanation"  "n_ /; n > 0 uses a condition to restrict the match to positive values only.",
    "Points"       2
  |>,

  <|
    "ID"            "pat-code-int-1",
    "Topic"         "Patterns",
    "Difficulty"    "Intermediate",
    "Type"          "Code Writing",
    "Tags"          {"typed pattern", "function definition"},
    "Question"      "Write a function intSquare that only accepts integers and returns their square. It should do nothing for non-integers.",
    "Template"      "intSquare[____] := ____",
    "Hint"          "Use a typed blank _Integer to restrict the input type.",
    "TestCases"     {{3, 9}, {5, 25}, {2, 4}},
    "SampleAnswer"  "intSquare[n_Integer] := n^2",
    "Explanation"   "n_Integer only matches when the argument has head Integer, so non-integer inputs are left unevaluated.",
    "Points"        4
  |>,


  <|
    "ID"           "pat-mcq-single-adv-1",
    "Topic"        "Patterns",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Single",
    "Tags"         {"PatternTest", "condition"},
    "Question"     "What is the difference between n_?EvenQ and n_ /; EvenQ[n]?",
    "Options"      {"They are identical", "?EvenQ tests the head, /; tests the value", "?EvenQ is a PatternTest applied before matching; /; is a condition checked after", "Only /; works with numeric patterns"},
    "Answer"       "?EvenQ is a PatternTest applied before matching; /; is a condition checked after",
    "Explanation"  "PatternTest (?) is checked as part of matching; Condition (/;) is evaluated after the pattern is matched. Both restrict matches but differ in when evaluation occurs.",
    "Points"       1
  |>,

  <|
    "ID"           "pat-mcq-multi-adv-1",
    "Topic"        "Patterns",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Multiple",
    "Tags"         {"Alternatives", "Repeated", "pattern operators"},
    "Question"     "Which of the following pattern constructs are valid in Mathematica?",
    "Options"      {"a | b (Alternatives)", "Repeated[x_]", "x_.. (RepeatedNull)", "x_:default (Optional)"},
    "Answer"       {"a | b (Alternatives)", "Repeated[x_]", "x_:default (Optional)"},
    "Explanation"  "Alternatives (|), Repeated, and Optional (:) are all valid. RepeatedNull uses ___ syntax not x_..",
    "Points"       2
  |>,

  <|
    "ID"           "pat-blank-adv-1",
    "Topic"        "Patterns",
    "Difficulty"   "Advanced",
    "Type"         "Blanks",
    "Tags"         {"Alternatives", "pattern matching"},
    "Question"     "Complete the pattern that matches either an Integer or a Real.",
    "Template"     "x : (____)",
    "Hint"         "Use the Alternatives operator between the two type patterns.",
    "Answer"       "_Integer | _Real",
    "Explanation"  "x : (_Integer | _Real) uses Alternatives to match either head, binding the result to x.",
    "Points"       3
  |>,

  <|
    "ID"            "pat-code-adv-1",
    "Topic"         "Patterns",
    "Difficulty"    "Advanced",
    "Type"          "Code Writing",
    "Tags"          {"condition", "PatternTest", "guard"},
    "Question"      "Write a function safeDiv[a, b] that returns a / b when b is nonzero, and the string \"undefined\" when b is 0.",
    "Template"      "safeDiv[a_, b_] /; ____ := ____\nsafeDiv[a_, 0] := ____",
    "Hint"          "Use two definitions: one with a condition guarding nonzero b, and one matching b = 0 directly.",
    "TestCases"     {{{10, 2}, 5}, {{9, 3}, 3}, {{5, 0}, "undefined"}},
    "SampleAnswer"  "safeDiv[a_, b_] /; b != 0 := a / b\nsafeDiv[a_, 0] := \"undefined\"",
    "Explanation"   "The first rule uses a condition to guard against zero. The second rule matches b = 0 explicitly and returns a string.",
    "Points"        5
  |>,

  (* ---- BEGINNER (added) ---- *)

  <|
    "ID" -> "pat-mcq-single-beg-2",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"literal pattern", "exact match"},
    "Question" -> "In a definition like f[5] := \"five\", what does the literal 5 (no underscore) match?",
    "Options" -> {"Any single expression", "Only the exact value 5", "Any integer", "Any number greater than 5"},
    "Answer" -> "Only the exact value 5",
    "Explanation" -> "A literal value used as a pattern (no underscore) matches only that exact value \[LongDash] f[5] matches, but f[6] does not.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-mcq-multi-beg-2",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"pattern basics"},
    "Question" -> "Which of the following statements about patterns are true?",
    "Options" -> {"f[3] matches the pattern f[x_]", "A pattern like x_ can bind to any expression, including lists and strings", "Patterns are only usable in function definitions, never in Cases or Select", "_Integer only matches expressions with head Integer"},
    "Answer" -> {"f[3] matches the pattern f[x_]", "A pattern like x_ can bind to any expression, including lists and strings", "_Integer only matches expressions with head Integer"},
    "Explanation" -> "x_ binds to any single expression regardless of type, and _Integer restricts that to head Integer. Patterns are also used well beyond function definitions, e.g. in Cases and Select.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-blank-beg-2",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"typed pattern", "List"},
    "Question" -> "Complete the pattern that matches any expression with head List.",
    "Template" -> "____",
    "Hint" -> "Combine an underscore with the head name.",
    "Answer" -> "_List",
    "Explanation" -> "_List is a typed blank restricted to expressions whose head is List.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-code-beg-2",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"list destructuring", "pattern matching"},
    "Question" -> "Write a function swapPair that uses pattern matching to match a 2-element list {a, b} and returns {b, a}.",
    "Template" -> "swapPair[____] := ____",
    "Hint" -> "Destructure the list directly in the function head with {a_, b_}.",
    "TestCases" -> {{{1, 2}, {2, 1}}, {{3, 4}, {4, 3}}, {{0, 0}, {0, 0}}},
    "SampleAnswer" -> "swapPair[{a_, b_}] := {b, a}",
    "Explanation" -> "The pattern {a_, b_} destructures a two-element list directly in the function head, binding a and b so they can be swapped.",
    "Points" -> 3
  |>,

  (* ---- INTERMEDIATE (added) ---- *)

  <|
    "ID" -> "pat-mcq-single-int-2",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"blank null sequence", "___"},
    "Question" -> "What does ___ (BlankNullSequence) match, in contrast to __ (BlankSequence)?",
    "Options" -> {"Exactly one expression", "One or more expressions, same as __", "Zero or more expressions", "Zero expressions only"},
    "Answer" -> "Zero or more expressions",
    "Explanation" -> "___ matches zero or more expressions, while __ requires at least one; this distinction matters when a pattern needs to allow an empty match.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-mcq-multi-int-2",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"list length", "condition"},
    "Question" -> "Which of the following correctly match a list containing at least two elements?",
    "Options" -> {"{a_, b_, ___}", "list_ /; Length[list] >= 2", "{___, a_}", "{a_}"},
    "Answer" -> {"{a_, b_, ___}", "list_ /; Length[list] >= 2"},
    "Explanation" -> "{a_, b_, ___} requires two named elements up front before any optional trailing ones, and the explicit condition checks the length directly. {___, a_} only guarantees one element, and {a_} matches exactly one.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-blank-int-2",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"named pattern", "blank sequence"},
    "Question" -> "Complete the pattern that matches a list of at least one element and binds the whole list to the name lst.",
    "Template" -> "lst : ____",
    "Hint" -> "Use BlankSequence wrapped in curly braces to require at least one element.",
    "Answer" -> "{__}",
    "Explanation" -> "lst : {__} binds the entire list to lst, while {__} itself requires the list to contain at least one element.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-code-int-2",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"list destructuring", "blank null sequence"},
    "Question" -> "Write a function firstTwo that uses pattern matching to extract the first two elements of a list as {a, b}, for lists with two or more elements.",
    "Template" -> "firstTwo[____] := ____",
    "Hint" -> "Match {a_, b_, ___} so any remaining elements are absorbed without being named.",
    "TestCases" -> {{{1, 2, 3}, {1, 2}}, {{5, 6}, {5, 6}}, {{7, 8, 9, 10}, {7, 8}}},
    "SampleAnswer" -> "firstTwo[{a_, b_, ___}] := {a, b}",
    "Explanation" -> "The pattern {a_, b_, ___} matches the first two elements explicitly, while ___ absorbs any remaining elements without needing to name them.",
    "Points" -> 4
  |>,

  (* ---- ADVANCED (added) ---- *)

  <|
    "ID" -> "pat-mcq-single-adv-2",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"specificity", "definition order"},
    "Question" -> "When Mathematica has multiple pattern-based definitions for the same function, in what order does it try to match them?",
    "Options" -> {"In the order they were defined, top to bottom, regardless of specificity", "From most specific pattern to least specific, regardless of definition order", "Randomly", "Only the first definition is ever used"},
    "Answer" -> "From most specific pattern to least specific, regardless of definition order",
    "Explanation" -> "Mathematica automatically orders pattern-based definitions by specificity, trying the most specific match first, independent of the order in which they were typed.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-mcq-multi-adv-2",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"HoldPattern", "evaluation"},
    "Question" -> "Which of the following are true about HoldPattern?",
    "Options" -> {"HoldPattern prevents a pattern from being evaluated before matching is attempted", "HoldPattern is needed when defining rules for expressions that would otherwise evaluate away, like HoldPattern[1 + 1] -> 2", "HoldPattern changes what the pattern matches, not just its evaluation", "HoldPattern is the same as Verbatim"},
    "Answer" -> {"HoldPattern prevents a pattern from being evaluated before matching is attempted", "HoldPattern is needed when defining rules for expressions that would otherwise evaluate away, like HoldPattern[1 + 1] -> 2"},
    "Explanation" -> "HoldPattern stops the wrapped pattern from evaluating before it's used for matching, essential when the pattern itself would otherwise simplify away (like 1+1 becoming 2). It does not change what is matched, and it is distinct from Verbatim, which instead prevents pattern objects from being interpreted as patterns.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-blank-adv-2",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"typed pattern", "fixed length list"},
    "Question" -> "Complete the pattern that matches a list of exactly three integers.",
    "Template" -> "{a_Integer, b_Integer, ____}",
    "Hint" -> "The third slot needs the same integer restriction, with no sequence pattern allowed.",
    "Answer" -> "c_Integer",
    "Explanation" -> "{a_Integer, b_Integer, c_Integer} requires the list to contain exactly three elements, each constrained to have head Integer.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "pat-code-adv-2",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"condition", "specificity", "multiple definitions"},
    "Question" -> "Write a function describeNum that returns \"zero\" for 0, \"positive\" for positive numbers, and \"negative\" for any other number.",
    "Template" -> "describeNum[0] := ___;\ndescribeNum[n_ /; ____] := ___;\ndescribeNum[n_] := ___",
    "Hint" -> "Define the most specific pattern first (0), then a guarded pattern for positive numbers, then the general fallback.",
    "TestCases" -> {{0, "zero"}, {5, "positive"}, {-3, "negative"}},
    "SampleAnswer" -> "describeNum[0] := \"zero\";\ndescribeNum[n_ /; n > 0] := \"positive\";\ndescribeNum[n_] := \"negative\"",
    "Explanation" -> "The most specific pattern (the literal 0) is tried first, then the guarded pattern for positive numbers, falling through to the general pattern for anything else.",
    "Points" -> 5
  |>,

  (* ================= BEGINNER (rounds 3-5) ================= *)

  <|
    "ID" -> "pat-mcq-single-beg-3",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"blank pattern"},
    "Question" -> "Which pattern matches any single expression, including compound ones like f[x]?",
    "Options" -> {"_", "__", "___", "_?NumberQ"},
    "Answer" -> "_",
    "Explanation" -> "_ (Blank) matches exactly one expression of any kind, whether atomic or compound.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-mcq-multi-beg-3",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"typed pattern", "String"},
    "Question" -> "Which of the following correctly describe what x_String matches?",
    "Options" -> {"Any expression with head String", "Only string literals like \"hello\"", "Numbers formatted as text, e.g. 5, since they display similarly", "It binds the matched string to x"},
    "Answer" -> {"Any expression with head String", "Only string literals like \"hello\"", "It binds the matched string to x"},
    "Explanation" -> "x_String is a typed named blank matching only expressions with head String, such as \"hello\"; it binds the match to x. Numbers are not Strings even if they look similar when printed.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-blank-beg-3",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"typed pattern", "Symbol"},
    "Question" -> "Complete the pattern that matches any expression with head Symbol.",
    "Template" -> "____",
    "Hint" -> "Combine an underscore with the head name, same as _List or _Integer.",
    "Answer" -> "_Symbol",
    "Explanation" -> "_Symbol is a typed blank restricted to expressions whose head is Symbol.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-code-beg-3",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"list destructuring", "multiple definitions"},
    "Question" -> "Write a function isPair that uses pattern matching to return True only when given a 2-element list, and False for anything else.",
    "Template" -> "isPair[____] := ___;\nisPair[___] := ___",
    "Hint" -> "Match a literal 2-element list pattern {_, _} in the first clause; fall through to a catch-all in the second.",
    "TestCases" -> {{{1, 2}, True}, {{1, 2, 3}, False}, {{1}, False}},
    "SampleAnswer" -> "isPair[{_, _}] := True;\nisPair[_] := False",
    "Explanation" -> "{_, _} only matches lists with exactly two elements; the catch-all _ handles every other case, including non-lists.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "pat-mcq-single-beg-4",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"literal pattern"},
    "Question" -> "What does the pattern 3.14 (a literal decimal number, no underscore) match?",
    "Options" -> {"Any decimal number", "Only the exact value 3.14", "Any number greater than 3", "Nothing, decimals can't be patterns"},
    "Answer" -> "Only the exact value 3.14",
    "Explanation" -> "A literal number used as a pattern matches only that exact value, just like a literal string or symbol would.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-mcq-multi-beg-4",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"typed pattern", "PatternTest"},
    "Question" -> "Which of the following correctly describe these patterns?",
    "Options" -> {"_Real matches only expressions with head Real (like 3.0), not plain integers like 3", "_Integer matches only integers, not reals", "x_?Positive matches any positive number and binds it to x", "_Real also matches integers like 3, since integers are mathematically real numbers"},
    "Answer" -> {"_Real matches only expressions with head Real (like 3.0), not plain integers like 3", "_Integer matches only integers, not reals", "x_?Positive matches any positive number and binds it to x"},
    "Explanation" -> "_Real is a strict head-based match \[LongDash] it does not match plain integers, even though integers are mathematically real numbers. _Integer and x_?Positive behave as their names suggest.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-blank-beg-4",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"typed pattern", "condition"},
    "Question" -> "Complete the pattern that matches a positive integer specifically (not just any positive number).",
    "Template" -> "n_Integer /; n ____ 0",
    "Hint" -> "What comparison operator means \"greater than\"?",
    "Answer" -> ">",
    "Explanation" -> "Combining the typed blank _Integer with the condition /; n > 0 restricts the match to positive integers specifically.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-code-beg-4",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"typed pattern", "multiple definitions"},
    "Question" -> "Write a function classify that returns \"integer\" for integer arguments and \"other\" for anything else, using a typed pattern.",
    "Template" -> "classify[____] := ___;\nclassify[___] := ___",
    "Hint" -> "Match n_Integer in the first clause and a catch-all x_ in the second.",
    "TestCases" -> {{5, "integer"}, {3.5, "other"}, {"hi", "other"}},
    "SampleAnswer" -> "classify[n_Integer] := \"integer\";\nclassify[x_] := \"other\"",
    "Explanation" -> "n_Integer only matches expressions with head Integer; every other input falls through to the general catch-all clause.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "pat-mcq-single-beg-5",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"no match", "unevaluated"},
    "Question" -> "If f is defined only as f[n_Integer] := n^2 and you call f[\"hello\"], what happens?",
    "Options" -> {"An error is thrown immediately", "f[\"hello\"] is returned unevaluated, since no pattern matches", "It returns 0", "It automatically converts \"hello\" to a number"},
    "Answer" -> "f[\"hello\"] is returned unevaluated, since no pattern matches",
    "Explanation" -> "When no defined pattern matches the given arguments, Mathematica simply leaves the expression unevaluated rather than throwing an error.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-mcq-multi-beg-5",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Optional"},
    "Question" -> "Which of the following are true about the Optional pattern x_:default?",
    "Options" -> {"It allows an argument to be omitted, using default in its place", "It can only be used as the very first argument of a function", "It's written using a colon between the pattern and the default value", "It changes the pattern to require the argument always be explicitly given"},
    "Answer" -> {"It allows an argument to be omitted, using default in its place", "It's written using a colon between the pattern and the default value"},
    "Explanation" -> "Optional (x_:default) lets an argument be omitted, substituting default when it's missing; it's written with a colon, and can appear in various positions depending on the function's pattern structure.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-blank-beg-5",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"blank null sequence"},
    "Question" -> "Complete the pattern that matches a list with a first element x and allows any number of remaining elements (which are ignored).",
    "Template" -> "{x_, ____}",
    "Hint" -> "You need a sequence pattern that allows even zero remaining elements.",
    "Answer" -> "___",
    "Explanation" -> "___ (BlankNullSequence) after x_ allows zero or more additional elements, so {x_, ___} matches lists of any length >= 1.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-code-beg-5",
    "Topic" -> "Patterns",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"blank null sequence", "multiple definitions"},
    "Question" -> "Write a function firstOrDefault that returns the first element of a list, or the string \"empty\" if the list has no elements, using pattern matching (not If).",
    "Template" -> "firstOrDefault[{}] := ___;\nfirstOrDefault[____] := ___",
    "Hint" -> "Match {x_, ___} in the second clause to capture the first element while ignoring the rest.",
    "TestCases" -> {{{1, 2, 3}, 1}, {{5}, 5}, {{}, "empty"}},
    "SampleAnswer" -> "firstOrDefault[{}] := \"empty\";\nfirstOrDefault[{x_, ___}] := x",
    "Explanation" -> "The literal {} pattern catches the empty-list case; {x_, ___} binds the first element to x while allowing any number of trailing elements.",
    "Points" -> 3
  |>,

  (* ================= INTERMEDIATE (rounds 3-5) ================= *)

  <|
    "ID" -> "pat-mcq-single-int-3",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"blank sequence", "greediness"},
    "Question" -> "By default, does a BlankSequence (x__) match the longest or shortest possible sequence when there's ambiguity?",
    "Options" -> {"Longest", "Shortest", "It matches randomly", "It always errors on ambiguity"},
    "Answer" -> "Longest",
    "Explanation" -> "By default, sequence patterns like x__ try to match as many elements as possible (the longest valid match), backtracking only if needed.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-mcq-multi-int-3",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"PatternTest", "condition", "typed pattern"},
    "Question" -> "Which of the following are valid ways to combine a typed pattern with an extra condition?",
    "Options" -> {"n_Integer /; n > 0 (typed blank plus a Condition)", "n_?(#>0&) (a pure-function PatternTest)", "n_Integer?Positive (a typed blank plus a named PatternTest)", "Conditions and typed blanks can never be combined"},
    "Answer" -> {"n_Integer /; n > 0 (typed blank plus a Condition)", "n_?(#>0&) (a pure-function PatternTest)", "n_Integer?Positive (a typed blank plus a named PatternTest)"},
    "Explanation" -> "Typed blanks, PatternTest (?), and Condition (/;) can all be freely combined to build increasingly specific patterns.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-blank-int-3",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"typed pattern", "fixed length list"},
    "Question" -> "Complete the pattern that matches a list of exactly two elements, both of which must be integers.",
    "Template" -> "{a_Integer, ____}",
    "Hint" -> "The second slot needs the same integer restriction.",
    "Answer" -> "b_Integer",
    "Explanation" -> "{a_Integer, b_Integer} requires the list to contain exactly two elements, each restricted to head Integer.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-code-int-3",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"condition", "list destructuring"},
    "Question" -> "Write a function bothPositive that returns True only if given a list of exactly two positive numbers, using patterns and a condition (not just If).",
    "Template" -> "bothPositive[____] := ___;\nbothPositive[___] := ___",
    "Hint" -> "Match {a_, b_} and attach a whole-pattern condition requiring a > 0 && b > 0.",
    "TestCases" -> {{{1, 2}, True}, {{-1, 2}, False}, {{1, 2, 3}, False}},
    "SampleAnswer" -> "bothPositive[{a_, b_}] /; a > 0 && b > 0 := True;\nbothPositive[_] := False",
    "Explanation" -> "The pattern {a_, b_} requires exactly two elements, and the attached condition requires both to be positive; anything else falls to the catch-all.",
    "Points" -> 4
  |>,

  <|
    "ID" -> "pat-mcq-single-int-4",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Verbatim"},
    "Question" -> "What does Verbatim[pattern] do, in contrast to just using pattern directly?",
    "Options" -> {"It prevents pattern from being interpreted as a pattern object, matching it literally instead", "It evaluates pattern immediately", "It is identical to HoldPattern in every way", "It converts pattern into a string"},
    "Answer" -> "It prevents pattern from being interpreted as a pattern object, matching it literally instead",
    "Explanation" -> "Verbatim[expr] tells Mathematica to match expr literally, even if expr looks like a pattern object (e.g. matching the literal symbol Blank[] rather than treating _ as a wildcard).",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-mcq-multi-int-4",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Longest", "Shortest"},
    "Question" -> "Which of the following correctly describe Longest and Shortest?",
    "Options" -> {"Longest[patt] and Shortest[patt] override the default greediness of a sequence pattern", "Shortest[x__] tries to match as few elements as possible", "Longest and Shortest can only be used with BlankSequence, never BlankNullSequence", "They have no effect since all patterns are already greedy by default"},
    "Answer" -> {"Longest[patt] and Shortest[patt] override the default greediness of a sequence pattern", "Shortest[x__] tries to match as few elements as possible"},
    "Explanation" -> "Longest and Shortest explicitly control how greedily a sequence pattern matches, and both can be applied to BlankSequence or BlankNullSequence patterns.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-blank-int-4",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"Shortest", "blank sequence"},
    "Question" -> "Complete the pattern that matches the shortest possible sequence for x.",
    "Template" -> "____[x__]",
    "Hint" -> "This function overrides the default greedy matching of a sequence pattern.",
    "Answer" -> "Shortest",
    "Explanation" -> "Shortest[x__] explicitly requests the shortest valid match for the sequence pattern, overriding the default greedy (longest) behavior.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-code-int-4",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"multiple definitions", "fixed length list"},
    "Question" -> "Write a function describeList that returns \"pair\" for a 2-element list, \"triple\" for a 3-element list, and \"other\" for any other length, using patterns (not Length/If).",
    "Template" -> "describeList[____] := ___",
    "Hint" -> "Define three clauses: describeList[{_,_}] for pairs, describeList[{_,_,_}] for triples, and a catch-all describeList[_] for anything else.",
    "TestCases" -> {{{1, 2}, "pair"}, {{1, 2, 3}, "triple"}, {{1}, "other"}, {{1, 2, 3, 4}, "other"}},
    "SampleAnswer" -> "describeList[{_, _}] := \"pair\";\ndescribeList[{_, _, _}] := \"triple\";\ndescribeList[_] := \"other\"",
    "Explanation" -> "{_, _} and {_, _, _} only match lists of exactly 2 or 3 elements respectively; every other length falls through to the catch-all.",
    "Points" -> 4
  |>,

  <|
    "ID" -> "pat-mcq-single-int-5",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"repeated pattern variable"},
    "Question" -> "In the pattern f[x_, x_], what is required for a match to succeed?",
    "Options" -> {"The two arguments must be structurally identical (equal) to each other", "The two arguments can be anything, independently", "This is invalid syntax", "x_ can only appear once in any pattern, ever"},
    "Answer" -> "The two arguments must be structurally identical (equal) to each other",
    "Explanation" -> "Repeating the same pattern variable name (like x_ twice) requires both matched pieces to be identical for the pattern to succeed.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-mcq-multi-int-5",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"typed pattern", "multiple definitions"},
    "Question" -> "Which of the following are true about pattern matching order when Mathematica has both f[x_Integer] and f[x_Real] defined?",
    "Options" -> {"Passing an integer matches f[x_Integer]", "Passing a real number like 3.5 matches f[x_Real]", "Both definitions can coexist without conflict, since Integer and Real are mutually exclusive heads", "Only the last-defined pattern is ever used"},
    "Answer" -> {"Passing an integer matches f[x_Integer]", "Passing a real number like 3.5 matches f[x_Real]", "Both definitions can coexist without conflict, since Integer and Real are mutually exclusive heads"},
    "Explanation" -> "Since a number has either head Integer or head Real (never both), these two pattern-based definitions don't conflict, and Mathematica dispatches to whichever matches the actual argument's head.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-blank-int-5",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"repeated pattern variable"},
    "Question" -> "Complete the pattern requiring both matched values to be equal.",
    "Template" -> "f[x_, ____] := \"equal\"",
    "Hint" -> "Reuse the same pattern name for the second argument.",
    "Answer" -> "x_",
    "Explanation" -> "Repeating the same pattern name x_ in both argument positions requires the two arguments to be structurally identical for the pattern to match.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-code-int-5",
    "Topic" -> "Patterns",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"repeated pattern variable", "multiple definitions"},
    "Question" -> "Write a function sameBoth that returns True if called with two identical arguments (using a repeated pattern variable), False otherwise.",
    "Template" -> "sameBoth[____, ____] := ___;\nsameBoth[___, ___] := ___",
    "Hint" -> "Use the same pattern name x_ for both arguments in the first clause.",
    "TestCases" -> {{{5, 5}, True}, {{5, 6}, False}, {{"a", "a"}, True}},
    "SampleAnswer" -> "sameBoth[x_, x_] := True;\nsameBoth[_, _] := False",
    "Explanation" -> "sameBoth[x_, x_] only matches when both arguments are structurally identical; the catch-all handles every other pairing.",
    "Points" -> 4
  |>,

  (* ================= ADVANCED (rounds 3-5) ================= *)

  <|
    "ID" -> "pat-mcq-single-adv-3",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Condition", "scope"},
    "Question" -> "Where can a Condition (/;) be placed in a pattern-based rule?",
    "Options" -> {"Only at the very end of the entire rule, after the replacement", "Either attached directly to a sub-pattern (n_/;n>0) or to the whole left-hand side (lhs /; cond)", "Only inside Cases, never in direct function definitions", "Conditions cannot be attached to individual sub-patterns, only whole rules"},
    "Answer" -> "Either attached directly to a sub-pattern (n_/;n>0) or to the whole left-hand side (lhs /; cond)",
    "Explanation" -> "A Condition can be attached to an individual sub-pattern for local restriction, or to the entire left-hand side of a rule for a broader condition \[LongDash] both are valid.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-mcq-multi-adv-3",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Orderless", "structural matching"},
    "Question" -> "Which of the following are true about pattern matching against an Orderless function like Plus?",
    "Options" -> {"Mathematica may try multiple orderings of the arguments to find a match, since Orderless functions can be freely reordered", "A pattern like a_ + b_ can match x + y in either order (a=x,b=y or a=y,b=x)", "Pattern matching against Orderless functions can be more expensive than against ordinary (non-Orderless) functions, due to trying multiple arrangements", "Orderless has no effect on pattern matching, only on display"},
    "Answer" -> {"Mathematica may try multiple orderings of the arguments to find a match, since Orderless functions can be freely reordered", "A pattern like a_ + b_ can match x + y in either order (a=x,b=y or a=y,b=x)", "Pattern matching against Orderless functions can be more expensive than against ordinary (non-Orderless) functions, due to trying multiple arrangements"},
    "Explanation" -> "Because Orderless functions like Plus can have their arguments freely reordered, pattern matching against them may need to try multiple arrangements to find a match, which can make matching more expensive.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-blank-adv-3",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Condition", "whole pattern"},
    "Question" -> "Complete the rule with a whole-pattern condition, attached after the closing bracket, that only fires when the list argument has more than 3 elements.",
    "Template" -> "process[list_List] ____ Length[list] > 3 := \"big\"",
    "Hint" -> "This is the same operator used for guarding patterns with a condition.",
    "Answer" -> "/;",
    "Explanation" -> "list_List /; Length[list] > 3 attaches the condition to the entire left-hand side, only firing the rule when the list has more than 3 elements.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "pat-code-adv-3",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"whole pattern condition"},
    "Question" -> "Write a function safeSqrt that returns the square root of a non-negative number, and the string \"undefined\" for negative numbers, using a whole-pattern condition (lhs /; cond) rather than an If statement.",
    "Template" -> "safeSqrt[x_] /; ____ := ___;\nsafeSqrt[_] := ___",
    "Hint" -> "The condition should require x >= 0.",
    "TestCases" -> {{9, 3}, {0, 0}, {-4, "undefined"}},
    "SampleAnswer" -> "safeSqrt[x_] /; x >= 0 := Sqrt[x];\nsafeSqrt[_] := \"undefined\"",
    "Explanation" -> "The whole-pattern condition x >= 0 only lets the first clause fire for non-negative inputs; anything else falls to the catch-all.",
    "Points" -> 5
  |>,

  <|
    "ID" -> "pat-mcq-single-adv-4",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Flat", "structural matching"},
    "Question" -> "What effect does the Flat attribute have on pattern matching, e.g. for Plus?",
    "Options" -> {"It allows a pattern like a_+b_+c_ to match a sum of any number of terms by treating nested Plus expressions as one flat sequence", "It has no effect on pattern matching, only display", "It prevents any pattern matching against the function entirely", "It requires exactly 2 arguments always"},
    "Answer" -> "It allows a pattern like a_+b_+c_ to match a sum of any number of terms by treating nested Plus expressions as one flat sequence",
    "Explanation" -> "Flat functions like Plus associate freely, so pattern matching can treat what looks like nested binary additions as one flat sequence, letting patterns match sums of arbitrary length.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-mcq-multi-adv-4",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"tree recursion", "list destructuring"},
    "Question" -> "Which of the following are true about pattern matching a recursively-defined tree structure like tree[left_, value_, right_] (with leaf as the base case)?",
    "Options" -> {"A base case pattern like leaf is needed to stop the recursion", "The recursive case destructures the tree into its left subtree, value, and right subtree using patterns", "Recursive functions over trees typically process left_ and right_ recursively, just like Rest[list] for ordinary lists", "Trees cannot be matched with patterns, only lists can"},
    "Answer" -> {"A base case pattern like leaf is needed to stop the recursion", "The recursive case destructures the tree into its left subtree, value, and right subtree using patterns", "Recursive functions over trees typically process left_ and right_ recursively, just like Rest[list] for ordinary lists"},
    "Explanation" -> "Tree-shaped recursive data (like tree[left_, value_, right_]) is destructured via patterns just like lists, with a base case (e.g. leaf) stopping the recursion and both subtrees processed recursively.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-blank-adv-4",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"tree recursion", "list destructuring"},
    "Question" -> "Complete the pattern that destructures a tree node into its left subtree, value, and right subtree.",
    "Template" -> "tree[l_, v_, ____] := v",
    "Hint" -> "Name the third slot for the right subtree.",
    "Answer" -> "r_",
    "Explanation" -> "tree[l_, v_, r_] destructures a tree node into its left subtree (l), value (v), and right subtree (r).",
    "Points" -> 3
  |>,

  <|
    "ID" -> "pat-code-adv-4",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"tree recursion"},
    "Question" -> "Write a recursive function treeSum that takes a tree represented as tree[left_, value_, right_] (with leaf representing an empty subtree contributing 0) and returns the sum of all values in the tree.",
    "Template" -> "treeSum[leaf] := ___;\ntreeSum[tree[left_, value_, right_]] := ___",
    "Hint" -> "Add value to the recursively-computed sums of left and right.",
    "TestCases" -> {{leaf, 0}, {tree[leaf, 5, leaf], 5}, {tree[tree[leaf, 2, leaf], 5, tree[leaf, 3, leaf]], 10}},
    "SampleAnswer" -> "treeSum[leaf] := 0;\ntreeSum[tree[left_, value_, right_]] := value + treeSum[left] + treeSum[right]",
    "Explanation" -> "leaf contributes 0 (base case); each tree node contributes its own value plus the recursively-summed contributions of its left and right subtrees.",
    "Points" -> 5
  |>,

  <|
    "ID" -> "pat-mcq-single-adv-5",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Condition", "variable scope"},
    "Question" -> "In the pattern {a_, b_} /; b > a, can the condition b > a reference the variable a bound earlier in the same pattern?",
    "Options" -> {"Yes, all pattern variables are available to a trailing whole-pattern condition", "No, conditions can only reference the last bound variable", "No, conditions cannot reference any pattern variables", "Only if a and b have the same type"},
    "Answer" -> "Yes, all pattern variables are available to a trailing whole-pattern condition",
    "Explanation" -> "A Condition attached to the end of a pattern (like {a_,b_}/;b>a) can reference any variable already bound earlier in that same pattern, since all bindings happen before the condition is checked.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "pat-mcq-multi-adv-5",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"UpValues", "dispatch"},
    "Question" -> "Which of the following are true about UpValues in relation to pattern matching?",
    "Options" -> {"An UpValue lets an object \"advertise\" how it should be used as an argument to other functions, via a pattern involving its own head", "UpSet (^=) is used to define an UpValue", "UpValues are checked before ordinary DownValues when the pattern head matches", "UpValues can never involve patterns"},
    "Answer" -> {"An UpValue lets an object \"advertise\" how it should be used as an argument to other functions, via a pattern involving its own head", "UpSet (^=) is used to define an UpValue", "UpValues are checked before ordinary DownValues when the pattern head matches"},
    "Explanation" -> "UpValues (defined via ^= or ^:=) let a symbol declare special behavior for expressions where it appears as an argument to another function; matching UpValues take precedence over the outer function's own DownValues.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "pat-blank-adv-5",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"UpValues", "UpSetDelayed"},
    "Question" -> "Complete the operator used to define an UpValue for a pattern like myType[x_] + y_.",
    "Template" -> "myType[x_] + y_ ____ x + y",
    "Hint" -> "It looks like SetDelayed but with a caret in front.",
    "Answer" -> "^:=",
    "Explanation" -> "^:= (UpSetDelayed) defines an UpValue attached to myType, taking effect whenever a myType[...] expression appears as an argument to another function like Plus.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "pat-code-adv-5",
    "Topic" -> "Patterns",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"condition", "multiple definitions", "Collatz"},
    "Question" -> "Write a function collatzSteps that returns the number of steps to reach 1 using the Collatz sequence (n -> n/2 if even, n -> 3n+1 if odd), starting from a positive integer n.",
    "Template" -> "collatzSteps[1] := ___;\ncollatzSteps[n_ /; ____] := ___;\ncollatzSteps[n_] := ___",
    "Hint" -> "Base case n=1 takes 0 steps. If n is even, recurse on n/2 adding 1 step; otherwise recurse on 3n+1 adding 1 step.",
    "TestCases" -> {{1, 0}, {2, 1}, {6, 8}},
    "SampleAnswer" -> "collatzSteps[1] := 0;\ncollatzSteps[n_ /; EvenQ[n]] := 1 + collatzSteps[n/2];\ncollatzSteps[n_] := 1 + collatzSteps[3*n + 1]",
    "Explanation" -> "The most specific pattern (the literal 1) is tried first; the guarded even-case halves n, and the general fallback applies the 3n+1 rule for odd n, each step counted as it recurses toward 1.",
    "Points" -> 5
  |>

};
