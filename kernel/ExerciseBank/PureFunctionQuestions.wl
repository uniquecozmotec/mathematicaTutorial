ClearAll[pureFunctionQuestions];
pureFunctionQuestions = {

  (* ---------------- BEGINNER ---------------- *)

  <|
    "ID"           -> "pf-mcq-single-beg-1",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"ampersand", "syntax"},
    "Question"     -> "What does the & symbol do at the end of an expression?",
    "Options"      -> {"Marks the end of a pure function", "Applies the function to its argument", "Creates a list", "Defines a named function"},
    "Answer"       -> "Marks the end of a pure function",
    "Explanation"  -> "The & is shorthand for Function. It turns the expression written before it into a pure function, so #^2 & is a function that squares its argument.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "pf-mcq-single-beg-2",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"slot"},
    "Question"     -> "In a pure function, what does # stand for?",
    "Options"      -> {"The first argument", "The function's name", "The last argument", "The number of arguments"},
    "Answer"       -> "The first argument",
    "Explanation"  -> "# is short for #1, the first argument. Later arguments are written #2, #3 and so on.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "pf-mcq-multi-beg-1",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"definition", "usage"},
    "Question"     -> "Which of the following are true about pure functions?",
    "Options"      -> {"They have no name", "They can be passed to Map", "They must be defined before they are used", "# refers to an argument"},
    "Answer"       -> {"They have no name", "They can be passed to Map", "# refers to an argument"},
    "Explanation"  -> "A pure function is written where it is needed and needs no prior definition, which is exactly why it suits one-off use inside Map or Select.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "pf-mcq-multi-beg-2",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"equivalent forms"},
    "Question"     -> "Which of these describe a function that adds 1 to its argument?",
    "Options"      -> {"# + 1 &", "Function[x, x + 1]", "#1 + 1 &", "x + 1"},
    "Answer"       -> {"# + 1 &", "Function[x, x + 1]", "#1 + 1 &"},
    "Explanation"  -> "The first three are the same function written three ways, since # and #1 mean the same thing. The bare expression x + 1 is not a function at all, only an expression containing a symbol.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "pf-blank-beg-1",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"Map", "slot"},
    "Question"     -> "Complete the pure function so that each element is squared.",
    "Template"     -> "Map[#^___ &, {1, 2, 3}]",
    "Hint"         -> "Squaring means raising to which power?",
    "Answer"       -> 2,
    "Explanation"  -> "Map[#^2 &, {1, 2, 3}] gives {1, 4, 9}, applying the squaring function to each element in turn.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "pf-blank-beg-2",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"application", "precedence"},
    "Question"     -> "Complete the expression so that the result is 6.",
    "Template"     -> "(# + ___ &)[5]",
    "Hint"         -> "The function is applied to 5, and the answer should be 6.",
    "Answer"       -> 1,
    "Explanation"  -> "(# + 1 &)[5] applies the adding-one function to 5, giving 6. The brackets around the function are needed because [] binds more tightly than &.",
    "Points"       -> 1
  |>,

  <|
    "ID"            -> "pf-code-beg-1",
    "Topic"         -> "Pure Functions",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Map", "pure function"},
    "Question"      -> "Write a function that doubles every element of a list, using Map with a pure function.",
    "Template"      -> "doubleAll[lst_] := ___",
    "Hint"          -> "Map takes the function first and the list second.",
    "TestCases"     -> {{{1, 2, 3}, {2, 4, 6}}, {{5}, {10}}, {{}, {}}, {{-1, 0}, {-2, 0}}},
    "SampleAnswer"  -> "doubleAll[lst_] := Map[#*2 &, lst]",
    "Explanation"   -> "Map[#*2 &, lst] applies the doubling function to each element. An empty list maps to an empty list without needing a special case.",
    "Points"        -> 3
  |>,

  <|
    "ID"            -> "pf-code-beg-2",
    "Topic"         -> "Pure Functions",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Select", "predicate"},
    "Question"      -> "Write a function that keeps only the elements of a list that are greater than 10, using Select with a pure function.",
    "Template"      -> "bigOnes[lst_] := ___",
    "Hint"          -> "Select takes the list first and the test second. The test should return True or False.",
    "TestCases"     -> {{{5, 15, 10, 20}, {15, 20}}, {{1, 2}, {}}, {{11}, {11}}, {{}, {}}},
    "SampleAnswer"  -> "bigOnes[lst_] := Select[lst, # > 10 &]",
    "Explanation"   -> "Select keeps the elements for which the test returns True. Note that 10 itself is not kept, because the test is strictly greater than.",
    "Points"        -> 3
  |>,

  (* ---------------- INTERMEDIATE ---------------- *)

  <|
    "ID"           -> "pf-mcq-single-int-1",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"multiple arguments"},
    "Question"     -> "What is the result of (#1 - #2 &)[10, 4]?",
    "Options"      -> {"6", "-6", "14", "{10, 4}"},
    "Answer"       -> "6",
    "Explanation"  -> "#1 is the first argument and #2 the second, so the function computes 10 - 4.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "pf-mcq-single-int-2",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"SlotSequence"},
    "Question"     -> "What does ## represent inside a pure function?",
    "Options"      -> {"All the arguments as a sequence", "All the arguments as a list", "The second argument", "The number of arguments"},
    "Answer"       -> "All the arguments as a sequence",
    "Explanation"  -> "## is a sequence, not a list. It merges into whatever encloses it, so Plus[##] adds the arguments while {##} collects them into a list.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "pf-mcq-multi-int-1",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"nesting", "readability"},
    "Question"     -> "Which statements about # inside nested pure functions are correct?",
    "Options"      -> {"# refers to the innermost enclosing &", "# always refers to the outermost function", "Function with named arguments avoids the ambiguity", "Deeply nested # makes code harder to read"},
    "Answer"       -> {"# refers to the innermost enclosing &", "Function with named arguments avoids the ambiguity", "Deeply nested # makes code harder to read"},
    "Explanation"  -> "Each # belongs to the innermost & around it, which is why an outer argument becomes unreachable once another & is opened. Naming the arguments with Function is the usual fix.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "pf-mcq-multi-int-2",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"Sort", "comparison"},
    "Question"     -> "Which of these sort the list lst into descending order?",
    "Options"      -> {"Sort[lst, #1 > #2 &]", "Reverse[Sort[lst]]", "Sort[lst, Greater]", "Sort[lst, #1 < #2 &]"},
    "Answer"       -> {"Sort[lst, #1 > #2 &]", "Reverse[Sort[lst]]", "Sort[lst, Greater]"},
    "Explanation"  -> "A comparison function says when the first argument should come before the second. Using < gives ascending order, which is the default rather than a reversal.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "pf-blank-int-1",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"Map"},
    "Question"     -> "Complete the expression so that the result is {1, 4, 9}.",
    "Template"     -> "___[#^2 &, {1, 2, 3}]",
    "Hint"         -> "Which function applies another function to every element of a list?",
    "Answer"       -> "Map",
    "Explanation"  -> "Map applies the squaring function to each element, giving {1, 4, 9}. Apply would instead replace the List head and give a different result entirely.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "pf-blank-int-2",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"SlotSequence"},
    "Question"     -> "Complete so that the pure function adds all of the arguments it is given.",
    "Template"     -> "(Plus[___] &)[1, 2, 3]",
    "Hint"         -> "You need every argument at once, spliced into Plus rather than wrapped in a list.",
    "Answer"       -> "##",
    "Explanation"  -> "(Plus[##] &)[1, 2, 3] becomes Plus[1, 2, 3], which is 6. Using {##} would instead give Plus[{1, 2, 3}], leaving the list unsummed.",
    "Points"       -> 2
  |>,

  <|
    "ID"            -> "pf-code-int-1",
    "Topic"         -> "Pure Functions",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Map", "Apply"},
    "Question"      -> "Write a function that returns the sum of the squares of the elements of a list, using Map and Apply with pure functions.",
    "Template"      -> "sumSquares[lst_] := ___",
    "Hint"          -> "Square each element first, then turn the resulting list into a sum.",
    "TestCases"     -> {{{1, 2, 3}, 14}, {{5}, 25}, {{}, 0}, {{-2, 2}, 8}},
    "SampleAnswer"  -> "sumSquares[lst_] := Plus @@ Map[#^2 &, lst]",
    "Explanation"   -> "Map produces the squares and Apply replaces the List head with Plus, adding them. An empty list gives Plus[] which is 0, so no special case is needed.",
    "Points"        -> 4
  |>,

  <|
    "ID"            -> "pf-code-int-2",
    "Topic"         -> "Pure Functions",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Sort", "two-argument function"},
    "Question"      -> "Write a function that sorts a list of {name, score} pairs into descending order of score.",
    "Template"      -> "byScore[lst_] := ___",
    "Hint"          -> "Sort takes a comparison of two arguments. Each argument is a whole pair, so the score has to be extracted from it.",
    "TestCases"     -> {{{{"a", 2}, {"b", 5}, {"c", 1}}, {{"b", 5}, {"a", 2}, {"c", 1}}}, {{{"x", 1}}, {{"x", 1}}}, {{}, {}}},
    "SampleAnswer"  -> "byScore[lst_] := Sort[lst, #1[[2]] > #2[[2]] &]",
    "Explanation"   -> "The comparison receives two pairs, so #1[[2]] and #2[[2]] pick out the two scores. Reverse[SortBy[lst, Last]] is an equally good answer.",
    "Points"        -> 4
  |>,

  (* ---------------- ADVANCED ---------------- *)

  <|
    "ID"           -> "pf-mcq-single-adv-1",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"precedence"},
    "Question"     -> "Why does (#^2 &)[5] need the brackets around the function?",
    "Options"      -> {"Because [] binds more tightly than &", "Because & always requires brackets", "Because # must be bracketed", "It does not need them"},
    "Answer"       -> "Because [] binds more tightly than &",
    "Explanation"  -> "The & has very low precedence, so without the brackets the argument attaches to part of the body instead of to the function as a whole.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "pf-mcq-single-adv-2",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Apply", "Function"},
    "Question"     -> "What does Function[{x, y}, x + y] @@ {3, 4} evaluate to?",
    "Options"      -> {"7", "{3, 4}", "x + y", "12"},
    "Answer"       -> "7",
    "Explanation"  -> "Apply replaces the List head with the function, giving Function[{x, y}, x + y][3, 4], which evaluates to 7.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "pf-mcq-multi-adv-1",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"Function", "equivalence"},
    "Question"     -> "Which statements about Function and & are correct?",
    "Options"      -> {"Function[x, x^2] and #^2 & describe the same function", "Function can give its arguments names", "& has very low precedence", "Function cannot be used with Map"},
    "Answer"       -> {"Function[x, x^2] and #^2 & describe the same function", "Function can give its arguments names", "& has very low precedence"},
    "Explanation"  -> "The two notations are interchangeable, and both work anywhere a function is expected. Naming the arguments is the reason to prefer Function when pure functions are nested.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "pf-mcq-multi-adv-2",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"multiple arguments", "SlotSequence"},
    "Question"     -> "Which of these are two-argument pure functions that multiply their arguments together?",
    "Options"      -> {"#1*#2 &", "Function[{a, b}, a*b]", "Times[##] &", "#*# &"},
    "Answer"       -> {"#1*#2 &", "Function[{a, b}, a*b]", "Times[##] &"},
    "Explanation"  -> "#*# & squares the first argument and ignores the second, because both # are #1. Times[##] & works because ## splices every argument into Times.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "pf-blank-adv-1",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"nesting", "named arguments"},
    "Question"     -> "Complete so that the inner pure function can still reach the outer argument.",
    "Template"     -> "Map[___[row, Map[row[[1]]*# &, row]], data]",
    "Hint"         -> "A # inside the inner & belongs to the inner function, so the outer argument has to be given a name instead.",
    "Answer"       -> "Function",
    "Explanation"  -> "Naming the outer argument row makes it usable inside the inner pure function. No arrangement of # alone could achieve this, because each # binds to the innermost & around it.",
    "Points"       -> 3
  |>,

  <|
    "ID"           -> "pf-blank-adv-2",
    "Topic"        -> "Pure Functions",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"SlotSequence"},
    "Question"     -> "Complete so that the pure function returns the largest of all the arguments it is given.",
    "Template"     -> "(Max[___] &)[3, 9, 4]",
    "Hint"          -> "Max needs the arguments spliced in individually, not wrapped in a list.",
    "Answer"       -> "##",
    "Explanation"  -> "(Max[##] &)[3, 9, 4] becomes Max[3, 9, 4], which is 9. Max[{3, 9, 4}] would also work here, but ## is the general way to forward every argument.",
    "Points"       -> 3
  |>,

  <|
    "ID"            -> "pf-code-adv-1",
    "Topic"         -> "Pure Functions",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Map", "Apply", "nesting"},
    "Question"      -> "Write a function that takes a list of lists and returns the total of each sublist, using pure functions rather than a named helper.",
    "Template"      -> "rowTotals[lst_] := ___",
    "Hint"          -> "Map over the outer list, and inside the pure function turn each sublist into a sum.",
    "TestCases"     -> {{{{1, 2}, {3, 4, 5}}, {3, 12}}, {{{}}, {0}}, {{}, {}}, {{{7}}, {7}}},
    "SampleAnswer"  -> "rowTotals[lst_] := Map[Plus @@ # &, lst]",
    "Explanation"   -> "The outer Map hands each sublist to the pure function, where Plus @@ # turns that sublist into a sum. Map[Total, lst] is an equally correct answer.",
    "Points"        -> 5
  |>,

  <|
    "ID"            -> "pf-code-adv-2",
    "Topic"         -> "Pure Functions",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Tally", "Select", "Map"},
    "Question"      -> "Write a function that returns the distinct elements of a list that occur more than once, in the order they first appear.",
    "Template"      -> "duplicates[lst_] := ___",
    "Hint"          -> "Tally gives value and count pairs. Keep the pairs whose count is above one, then discard the counts.",
    "TestCases"     -> {{{1, 2, 2, 3, 3, 3}, {2, 3}}, {{1, 2, 3}, {}}, {{5, 5}, {5}}, {{}, {}}},
    "SampleAnswer"  -> "duplicates[lst_] := Map[First, Select[Tally[lst], #[[2]] > 1 &]]",
    "Explanation"   -> "Tally preserves first-appearance order, so the result does too. Select keeps the repeated entries and Map[First, ...] drops the counts, leaving only the values.",
    "Points"        -> 5
  |>

};
