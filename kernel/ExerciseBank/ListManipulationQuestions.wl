ClearAll[listManipulationQuestions];
listManipulationQuestions = {

  (* ---------------- BEGINNER ---------------- *)

  <|
    "ID"           -> "lm-mcq-single-beg-1",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Select"},
    "Question"     -> "What does Select[{1, 2, 3, 4}, EvenQ] return?",
    "Options"      -> {"{2, 4}", "{1, 3}", "{True, False, True, False}", "2"},
    "Answer"       -> "{2, 4}",
    "Explanation"  -> "Select keeps the elements for which the test returns True, so only the even numbers remain.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "lm-mcq-single-beg-2",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Length", "nesting"},
    "Question"     -> "What does Length[{{1, 2}, {3, 4}}] return?",
    "Options"      -> {"2", "4", "1", "{2, 2}"},
    "Answer"       -> "2",
    "Explanation"  -> "Length counts elements at the top level only. The list has two elements, each of which happens to be a list of two numbers.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "lm-mcq-multi-beg-1",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"Sort", "Union"},
    "Question"     -> "Which of these return {1, 2, 3}?",
    "Options"      -> {"Sort[{3, 1, 2}]", "Union[{3, 1, 2}]", "Reverse[{3, 1, 2}]", "Sort[{3, 1, 2}, Less]"},
    "Answer"       -> {"Sort[{3, 1, 2}]", "Union[{3, 1, 2}]", "Sort[{3, 1, 2}, Less]"},
    "Explanation"  -> "Reverse simply turns the list around, giving {2, 1, 3}. Union sorts as well as removing duplicates, so it gives the sorted order here.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "lm-mcq-multi-beg-2",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"extraction"},
    "Question"     -> "Which of these extract part of a list?",
    "Options"      -> {"First", "Rest", "Take", "Print"},
    "Answer"       -> {"First", "Rest", "Take"},
    "Explanation"  -> "First gives one element, Rest gives everything after the first, and Take gives a given number of elements. Print only displays something and returns Null.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "lm-blank-beg-1",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"Select", "predicate"},
    "Question"     -> "Complete so that only the even numbers are kept.",
    "Template"     -> "Select[{1, 2, 3, 4}, ___]",
    "Hint"         -> "Select needs a test that returns True or False.",
    "Answer"       -> "EvenQ",
    "Explanation"  -> "EvenQ is a built-in test, so it can be given to Select directly without wrapping it in a pure function.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "lm-blank-beg-2",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"Take"},
    "Question"     -> "Complete so that the result is {10, 20}.",
    "Template"     -> "Take[{10, 20, 30}, ___]",
    "Hint"         -> "How many elements are wanted from the front?",
    "Answer"       -> 2,
    "Explanation"  -> "Take[list, 2] gives the first two elements. A negative number would count from the end instead.",
    "Points"       -> 1
  |>,

  <|
    "ID"            -> "lm-code-beg-1",
    "Topic"         -> "List Manipulation",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Select"},
    "Question"      -> "Write a function that returns only the odd elements of a list.",
    "Template"      -> "oddOnes[lst_] := ___",
    "Hint"          -> "There is a built-in test for odd numbers that can be given to Select directly.",
    "TestCases"     -> {{{1, 2, 3, 4}, {1, 3}}, {{2, 4}, {}}, {{}, {}}, {{5}, {5}}},
    "SampleAnswer"  -> "oddOnes[lst_] := Select[lst, OddQ]",
    "Explanation"   -> "Select with OddQ keeps the odd elements. An empty list, or one with no odd elements, gives the empty list without any special case.",
    "Points"        -> 3
  |>,

  <|
    "ID"            -> "lm-code-beg-2",
    "Topic"         -> "List Manipulation",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Count"},
    "Question"      -> "Write a function of two arguments that returns how many times a value occurs in a list.",
    "Template"      -> "howMany[lst_, x_] := ___",
    "Hint"          -> "There is a built-in that counts matches directly.",
    "TestCases"     -> {{{{1, 2, 2, 3}, 2}, 2}, {{{1, 2, 3}, 5}, 0}, {{{}, 1}, 0}, {{{7, 7, 7}, 7}, 3}},
    "SampleAnswer"  -> "howMany[lst_, x_] := Count[lst, x]",
    "Explanation"   -> "Count returns the number of elements matching the given value or pattern, and returns 0 rather than failing when there are none.",
    "Points"        -> 3
  |>,

  (* ---------------- INTERMEDIATE ---------------- *)

  <|
    "ID"           -> "lm-mcq-single-int-1",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"GatherBy", "ordering"},
    "Question"     -> "What does GatherBy[{1, 2, 3, 4}, EvenQ] return?",
    "Options"      -> {"{{1, 3}, {2, 4}}", "{{2, 4}, {1, 3}}", "{{1, 2}, {3, 4}}", "{1, 2, 3, 4}"},
    "Answer"       -> "{{1, 3}, {2, 4}}",
    "Explanation"  -> "GatherBy does not sort the groups. They appear in the order their first members were met, and the first element 1 is odd, so the odd group comes first.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "lm-mcq-single-int-2",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Partition"},
    "Question"     -> "What does Partition[{1, 2, 3, 4, 5}, 2] return?",
    "Options"      -> {"{{1, 2}, {3, 4}}", "{{1, 2}, {3, 4}, {5}}", "{{1, 2}, {3, 4}, {5, Null}}", "{1, 2, 3, 4, 5}"},
    "Answer"       -> "{{1, 2}, {3, 4}}",
    "Explanation"  -> "Partition discards a final incomplete block. The element 5 is silently dropped, which is a common cause of quietly lost data.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "lm-mcq-multi-int-1",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"Cases", "Select"},
    "Question"     -> "Which statements about Cases and Select are correct?",
    "Options"      -> {"Cases selects by pattern", "Select selects by a test returning True or False", "Cases can transform matches by taking a rule", "Select accepts a pattern in place of a test"},
    "Answer"       -> {"Cases selects by pattern", "Select selects by a test returning True or False", "Cases can transform matches by taking a rule"},
    "Explanation"  -> "Handing a pattern to Select returns nothing rather than reporting an error, because a pattern is not a function that returns True. Use Cases when the structure or head is the criterion.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "lm-mcq-multi-int-2",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"duplicates"},
    "Question"     -> "Which of these give the distinct elements of {3, 1, 3, 2}, in any order?",
    "Options"      -> {"Union[{3, 1, 3, 2}]", "DeleteDuplicates[{3, 1, 3, 2}]", "Sort[{3, 1, 3, 2}]", "Map[First, Tally[{3, 1, 3, 2}]]"},
    "Answer"       -> {"Union[{3, 1, 3, 2}]", "DeleteDuplicates[{3, 1, 3, 2}]", "Map[First, Tally[{3, 1, 3, 2}]]"},
    "Explanation"  -> "Sort only reorders and leaves the repeated 3 in place. Union sorts as well as deduplicating, while DeleteDuplicates and the Tally approach preserve first-appearance order.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "lm-blank-int-1",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"GatherBy", "StringTake"},
    "Question"     -> "Complete so that the names are grouped by their first letter.",
    "Template"     -> "GatherBy[names, StringTake[#, ___] &]",
    "Hint"         -> "StringTake with a count returns that many characters from the start.",
    "Answer"       -> 1,
    "Explanation"  -> "StringTake[#, 1] gives the first character of each name, and GatherBy groups the names that share it.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "lm-blank-int-2",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"Flatten", "levels"},
    "Question"     -> "Complete so that only one level of nesting is removed, giving {1, 2, 3, {4}}.",
    "Template"     -> "Flatten[{{1, 2}, {3, {4}}}, ___]",
    "Hint"         -> "The second argument says how many levels to flatten.",
    "Answer"       -> 1,
    "Explanation"  -> "Flatten with no second argument removes every level. Limiting it to 1 leaves the inner {4} intact, which is usually what is wanted for a table of rows.",
    "Points"       -> 2
  |>,

  <|
    "ID"            -> "lm-code-int-1",
    "Topic"         -> "List Manipulation",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Sort", "Part"},
    "Question"      -> "Write a function that returns the second element of a list after it has been sorted into descending order. Repeated values count separately, so {5, 5, 3} gives 5.",
    "Template"      -> "secondLargest[lst_] := ___",
    "Hint"          -> "Sort ascending, reverse it, then take part 2.",
    "TestCases"     -> {{{3, 1, 4, 1, 5}, 4}, {{1, 2}, 1}, {{5, 5, 3}, 5}, {{10, 20, 30}, 20}},
    "SampleAnswer"  -> "secondLargest[lst_] := Reverse[Sort[lst]][[2]]",
    "Explanation"   -> "Sorting descending and taking part 2 counts repeated values separately, which is why {5, 5, 3} gives 5. Removing duplicates first would give 3 instead, so the wording matters.",
    "Points"        -> 4
  |>,

  <|
    "ID"            -> "lm-code-int-2",
    "Topic"         -> "List Manipulation",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Select", "partition"},
    "Question"      -> "Write a function that splits a list into two, returning {evens, odds} in that order.",
    "Template"      -> "splitParity[lst_] := ___",
    "Hint"          -> "Two applications of Select, collected into a list of two results.",
    "TestCases"     -> {{{1, 2, 3, 4}, {{2, 4}, {1, 3}}}, {{}, {{}, {}}}, {{1, 3}, {{}, {1, 3}}}, {{2}, {{2}, {}}}},
    "SampleAnswer"  -> "splitParity[lst_] := {Select[lst, EvenQ], Select[lst, OddQ]}",
    "Explanation"   -> "Each Select walks the list once and keeps its own half. GatherBy would group them too, but would not guarantee which group comes first.",
    "Points"        -> 4
  |>,

  (* ---------------- ADVANCED ---------------- *)

  <|
    "ID"           -> "lm-mcq-single-adv-1",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Tally"},
    "Question"     -> "What does Tally[{a, b, a}] return?",
    "Options"      -> {"{{a, 2}, {b, 1}}", "{{a, b}, {2, 1}}", "{a, b}", "{2, 1}"},
    "Answer"       -> "{{a, 2}, {b, 1}}",
    "Explanation"  -> "Tally returns a list of value and count pairs, in the order the values were first met.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "lm-mcq-single-adv-2",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Partition", "data loss"},
    "Question"     -> "When a list does not divide evenly, what does Partition do with the leftover elements by default?",
    "Options"      -> {"Discards them", "Returns them as a shorter final block", "Pads them with Null", "Raises an error"},
    "Answer"       -> "Discards them",
    "Explanation"  -> "The leftovers are dropped silently. Checking the length of the result is worthwhile whenever the input length is not known to divide evenly.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "lm-mcq-multi-adv-1",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"GatherBy", "GroupBy"},
    "Question"     -> "Which statements about GatherBy and GroupBy are correct?",
    "Options"      -> {"GatherBy returns a list of lists", "GroupBy returns an Association", "GroupBy keys the result by the computed value", "GatherBy sorts the groups it produces"},
    "Answer"       -> {"GatherBy returns a list of lists", "GroupBy returns an Association", "GroupBy keys the result by the computed value"},
    "Explanation"  -> "Neither sorts. The difference is the shape of the result: GroupBy keeps the key, so a group can be looked up by name afterwards, while GatherBy discards it.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "lm-mcq-multi-adv-2",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"Sort", "SortBy"},
    "Question"     -> "Which statements about Sort and SortBy are correct?",
    "Options"      -> {"SortBy takes a one-argument function giving the key", "Sort can take a two-argument comparison function", "SortBy is usually easier to get right than a comparison", "Sort cannot take a second argument"},
    "Answer"       -> {"SortBy takes a one-argument function giving the key", "Sort can take a two-argument comparison function", "SortBy is usually easier to get right than a comparison"},
    "Explanation"  -> "SortBy asks what to compare and Sort asks how to compare. A one-argument key function is harder to get wrong than a two-argument ordering.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "lm-blank-adv-1",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"Tally", "Select", "Part"},
    "Question"     -> "Complete so that only the values occurring more than once are kept.",
    "Template"     -> "Select[Tally[lst], #[[___]] > 1 &]",
    "Hint"         -> "Each entry from Tally is a pair. Which of its two parts holds the count?",
    "Answer"       -> 2,
    "Explanation"  -> "Tally produces {value, count} pairs, so the count is part 2. Selecting on it keeps only the repeated values, still paired with their counts.",
    "Points"       -> 3
  |>,

  <|
    "ID"           -> "lm-blank-adv-2",
    "Topic"        -> "List Manipulation",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"GroupBy"},
    "Question"     -> "Complete so that the records are grouped into an Association keyed by their first field.",
    "Template"     -> "___[entries, First]",
    "Hint"         -> "The result should be keyed, not a plain list of groups.",
    "Answer"       -> "GroupBy",
    "Explanation"  -> "GroupBy keys the result by the computed value, so a group can be looked up by name. GatherBy would produce the same groups but discard the keys.",
    "Points"       -> 3
  |>,

  <|
    "ID"            -> "lm-code-adv-1",
    "Topic"         -> "List Manipulation",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Tally", "SortBy"},
    "Question"      -> "Write a function that returns the most frequently occurring element of a list. You may assume there is no tie for the most frequent.",
    "Template"      -> "mostCommon[lst_] := ___",
    "Hint"          -> "Tally gives value and count pairs. Order them by count and take the value from the last one.",
    "TestCases"     -> {{{1, 2, 2, 3}, 2}, {{5}, 5}, {{"a", "b", "a", "a"}, "a"}, {{1, 1, 2}, 1}},
    "SampleAnswer"  -> "mostCommon[lst_] := First[Last[SortBy[Tally[lst], Last]]]",
    "Explanation"   -> "SortBy orders the pairs by count, so the last pair holds the most frequent value and First extracts it. The no-tie assumption matters, because otherwise which of the tied values is returned depends on the original order.",
    "Points"        -> 5
  |>,

  <|
    "ID"            -> "lm-code-adv-2",
    "Topic"         -> "List Manipulation",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Select", "MemberQ", "order"},
    "Question"      -> "Write a function of two arguments returning the elements of the first list that also appear in the second, keeping the order of the first list.",
    "Template"      -> "commonOf[a_, b_] := ___",
    "Hint"          -> "Select over the first list, testing membership of the second. Intersection would not preserve the order.",
    "TestCases"     -> {{{{1, 2, 3}, {2, 3, 4}}, {2, 3}}, {{{1}, {2}}, {}}, {{{3, 1}, {1, 3}}, {3, 1}}, {{{}, {1}}, {}}},
    "SampleAnswer"  -> "commonOf[a_, b_] := Select[a, MemberQ[b, #] &]",
    "Explanation"   -> "Select walks the first list in order, so its order is preserved. Intersection[{3, 1}, {1, 3}] would give {1, 3} instead, because it sorts its result.",
    "Points"        -> 5
  |>

};
