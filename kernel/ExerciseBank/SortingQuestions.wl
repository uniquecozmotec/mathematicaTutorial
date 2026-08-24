ClearAll[sortingQuestions];
sortingQuestions = {

  (* ---------------- BEGINNER ---------------- *)

  <|
    "ID"           -> "so-mcq-single-beg-1",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"insertion sort"},
    "Question"     -> "What does insertion sort do at each step?",
    "Options"      -> {"Inserts the next value into its correct place in an already-sorted region", "Swaps every pair of adjacent elements", "Splits the list in half", "Picks the smallest remaining element and moves it to the front"},
    "Answer"       -> "Inserts the next value into its correct place in an already-sorted region",
    "Explanation"  -> "Insertion sort grows a sorted region one element at a time, inserting each new value into the position it belongs relative to what has already been placed.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "so-mcq-single-beg-2",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"bubble sort"},
    "Question"     -> "What does one pass of bubble sort do?",
    "Options"      -> {"Moves the largest remaining value to its final position", "Sorts the whole list in one step", "Removes duplicate elements", "Reverses the list"},
    "Answer"       -> "Moves the largest remaining value to its final position",
    "Explanation"  -> "A pass compares each neighbouring pair and swaps them when out of order, which pushes the largest value encountered all the way to the end.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "so-mcq-multi-beg-1",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"general knowledge"},
    "Question"     -> "Which statements about insertion sort and bubble sort are true?",
    "Options"      -> {"Both are comparison sorts", "Both do work proportional to the square of the list length in the worst case", "Both should be preferred over the built-in Sort for large data", "Sort should be used in real work rather than either of them"},
    "Answer"       -> {"Both are comparison sorts", "Both do work proportional to the square of the list length in the worst case", "Sort should be used in real work rather than either of them"},
    "Explanation"  -> "Both algorithms are quadratic in the worst case, which is why the built-in Sort, at n log n, should always be used in practice; these are written out here for understanding, not for use.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "so-mcq-multi-beg-2",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"edge cases"},
    "Question"     -> "Which lists should a correct sorting function handle without a special case?",
    "Options"      -> {"The empty list", "A list with one element", "A list where every element is the same", "Only lists of at least two distinct elements"},
    "Answer"       -> {"The empty list", "A list with one element", "A list where every element is the same"},
    "Explanation"  -> "A correct sort returns the empty list for empty input and a single-element list unchanged, and treats equal elements as already in the right relative order.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "so-blank-beg-1",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"Insert", "LengthWhile"},
    "Question"     -> "Complete the insertion step so that x is placed just after every element smaller than or equal to it.",
    "Template"     -> "Insert[sorted, x, LengthWhile[sorted, # <= x &] + ___]",
    "Hint"         -> "Position indices start at 1, not 0.",
    "Answer"       -> 1,
    "Explanation"  -> "LengthWhile counts how many leading elements belong before x, and adding 1 converts that count into the insertion position, since positions are 1-indexed.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "so-blank-beg-2",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"bubble sort", "FixedPoint"},
    "Question"     -> "Complete so that passes repeat until one of them changes nothing.",
    "Template"     -> "bubbleSort[lst_] := ___[bubblePass, lst]",
    "Hint"         -> "The stopping condition, that a pass changed nothing, is exactly what this function is designed to detect.",
    "Answer"       -> "FixedPoint",
    "Explanation"  -> "FixedPoint repeats bubblePass until applying it again makes no difference, which happens precisely when the list is fully sorted.",
    "Points"       -> 1
  |>,

  <|
    "ID"            -> "so-code-beg-1",
    "Topic"         -> "Sorting Algorithms",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"insertion sort", "Fold"},
    "Question"      -> "Write insertionSort using Fold and an insertion step insertInto[sorted, x] that you also define, inserting each element of the list in turn into an initially empty result.",
    "Template"      -> "insertInto[sorted_List, x_] := Insert[sorted, x, LengthWhile[sorted, # <= x &] + 1];\ninsertionSort[lst_List] := ___",
    "Hint"         -> "Fold starts from an empty list and combines it with each element using insertInto.",
    "TestCases"     -> {{{5, 2, 8, 1}, {1, 2, 5, 8}}, {{}, {}}, {{3}, {3}}, {{2, 2, 1}, {1, 2, 2}}},
    "SampleAnswer"  -> "insertionSort[lst_List] := Fold[insertInto, {}, lst]",
    "Explanation"   -> "Fold carries the growing sorted region through the list, calling insertInto once per element and starting from {} so the empty list needs no special case.",
    "Points"        -> 3
  |>,

  <|
    "ID"            -> "so-code-beg-2",
    "Topic"         -> "Sorting Algorithms",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"checking correctness"},
    "Question"      -> "Write a function that checks whether a list is sorted in non-decreasing order, without using Sort.",
    "Template"      -> "isSortedQ[lst_List] := ___",
    "Hint"         -> "Every element should be less than or equal to the one after it.",
    "TestCases"     -> {{{1, 2, 3}, True}, {{3, 1, 2}, False}, {{}, True}, {{5}, True}, {{1, 1, 2}, True}},
    "SampleAnswer"  -> "isSortedQ[lst_List] := And @@ MapThread[LessEqual, {Most[lst], Rest[lst]}] || Length[lst] <= 1",
    "Explanation"   -> "Comparing every adjacent pair with MapThread confirms the list never decreases; a list of length 0 or 1 has no pairs to compare and is trivially sorted.",
    "Points"        -> 3
  |>,

  (* ---------------- INTERMEDIATE ---------------- *)

  <|
    "ID"           -> "so-mcq-single-int-1",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"stability"},
    "Question"     -> "Why does insertInto compare with <= rather than < when deciding where to place a value?",
    "Options"      -> {"So that equal elements keep their original relative order", "Because < would cause an infinite loop", "It makes no difference either way", "So that duplicates are removed"},
    "Answer"       -> "So that equal elements keep their original relative order",
    "Explanation"  -> "Using <= places a new equal value after the ones already present rather than before them, which is what makes the sort stable.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "so-mcq-single-int-2",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"bubble sort", "mutation"},
    "Question"     -> "Why does bubblePass copy its argument into a local variable before modifying it?",
    "Options"      -> {"Because assigning to parts of the argument directly would try to modify the caller's list", "Because Module requires a copy of every argument", "It has no real purpose", "Because part assignment does not work on lists"},
    "Answer"       -> "Because assigning to parts of the argument directly would try to modify the caller's list",
    "Explanation"  -> "Working on a local copy keeps the function from having any effect on the list the caller passed in, which is the behaviour expected of an ordinary function.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "so-mcq-multi-int-1",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"testing"},
    "Question"     -> "Which are good ways to test a hand-written sorting function?",
    "Options"      -> {"Compare its output against Sort on random data", "Test the empty list and a one-element list", "Test a list where every element is equal", "Test it on exactly one hand-picked example and stop"},
    "Answer"       -> {"Compare its output against Sort on random data", "Test the empty list and a one-element list", "Test a list where every element is equal"},
    "Explanation"  -> "A single example proves very little; repeated random comparisons against a trusted implementation, plus the standard edge cases, give real confidence.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "so-mcq-multi-int-2",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"sorting by key"},
    "Question"     -> "Which changes are needed to generalise an insertion sort of numbers into a sort by an arbitrary key function?",
    "Options"      -> {"The comparison must use the key of each element rather than the element itself", "The key function must be threaded through as an extra argument", "The overall structure of Fold plus an insertion step stays the same", "The algorithm must be rewritten from scratch"},
    "Answer"       -> {"The comparison must use the key of each element rather than the element itself", "The key function must be threaded through as an extra argument", "The overall structure of Fold plus an insertion step stays the same"},
    "Explanation"  -> "Only the comparison changes, from comparing values directly to comparing key[value]; the surrounding Fold and insertion logic is unchanged.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "so-blank-int-1",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"sorting by key"},
    "Question"     -> "Complete the key-aware insertion step.",
    "Template"     -> "insertBy[sorted_List, x_, key_] := Insert[sorted, x, LengthWhile[sorted, key[#] <= key[___] &] + 1]",
    "Hint"         -> "The element being inserted is compared against, so its own key is what the comparison needs.",
    "Answer"       -> "x",
    "Explanation"  -> "key[x] gives the key of the element being inserted, which is what every already-placed element's key is compared against.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "so-blank-int-2",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"bubble sort", "swap"},
    "Question"     -> "Complete the swap so that elements i and i+1 are exchanged without a temporary variable.",
    "Template"     -> "l[[{i, i + 1}]] = l[[{___, i}]]",
    "Hint"         -> "The two indices on each side should be in opposite order.",
    "Answer"       -> "i + 1",
    "Explanation"  -> "Assigning l[[{i, i+1}]] from l[[{i+1, i}]] reads both old values before writing either, which exchanges them in a single part assignment.",
    "Points"       -> 2
  |>,

  <|
    "ID"            -> "so-code-int-1",
    "Topic"         -> "Sorting Algorithms",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"bubble sort", "Module"},
    "Question"      -> "Write bubblePass[lst], performing a single left-to-right bubble sort pass over lst and returning the result.",
    "Template"      -> "bubblePass[lst_List] := Module[{l = lst}, ___]",
    "Hint"         -> "Walk the indices from 1 to Length[l]-1, swapping l[[i]] and l[[i+1]] whenever they are out of order.",
    "TestCases"     -> {{{5, 2, 8, 1}, {2, 5, 1, 8}}, {{1, 2, 3}, {1, 2, 3}}, {{}, {}}, {{1}, {1}}},
    "SampleAnswer"  -> "bubblePass[lst_List] := Module[{l = lst}, Do[If[l[[i]] > l[[i + 1]], l[[{i, i + 1}]] = l[[{i + 1, i}]]], {i, Length[l] - 1}]; l]",
    "Explanation"   -> "One pass compares every neighbouring pair once, left to right, swapping any pair found out of order. An empty or single-element list has no pairs, so Do runs zero times and l is returned unchanged.",
    "Points"        -> 4
  |>,

  <|
    "ID"            -> "so-code-int-2",
    "Topic"         -> "Sorting Algorithms",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"insertion sort", "recursive"},
    "Question"      -> "Write insertionSortR recursively: sorting a list means sorting everything but its last element, then inserting the last element into that result. Use the insertInto helper, assumed already defined.",
    "Template"      -> "insertionSortR[{}] := {};\ninsertionSortR[lst_List] := ___",
    "Hint"         -> "Recurse on Most[lst], then insert Last[lst] into the result.",
    "TestCases"     -> {{{5, 2, 8, 1}, {1, 2, 5, 8}}, {{3}, {3}}, {{}, {}}, {{2, 1}, {1, 2}}},
    "SampleAnswer"  -> "insertionSortR[lst_List] := insertInto[insertionSortR[Most[lst]], Last[lst]]",
    "Explanation"   -> "The base case is the empty list; every other call sorts one element fewer and inserts the removed element back in the right place, exactly mirroring the Fold-based version.",
    "Points"        -> 4
  |>,

  (* ---------------- ADVANCED ---------------- *)

  <|
    "ID"           -> "so-mcq-single-adv-1",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"complexity"},
    "Question"     -> "Doubling the length of the input roughly quadruples the running time of insertion sort. What does this indicate?",
    "Options"      -> {"The running time grows quadratically with the input length", "The running time grows linearly with the input length", "The algorithm is implemented incorrectly", "The running time is independent of the input length"},
    "Answer"       -> "The running time grows quadratically with the input length",
    "Explanation"  -> "A running time proportional to n squared quadruples when n doubles, since (2n)^2 is four times n^2. A linear algorithm would only double.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "so-mcq-single-adv-2",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"best case"},
    "Question"     -> "On an already-sorted list, how many passes does the FixedPoint-based bubble sort perform?",
    "Options"      -> {"One", "Length of the list", "Length of the list minus one", "Zero"},
    "Answer"       -> "One",
    "Explanation"  -> "The first pass finds nothing out of order and changes nothing, and FixedPoint stops as soon as a pass produces no change, which is what gives bubble sort its near-linear best case.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "so-mcq-multi-adv-1",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"nearly sorted data"},
    "Question"     -> "Which statements about insertion sort's performance on nearly-sorted data are true?",
    "Options"      -> {"Each insertion typically finds its place quickly", "The typical-case cost on such data is much better than the worst case", "The worst-case complexity class is still quadratic", "It performs identically to fully random data"},
    "Answer"       -> {"Each insertion typically finds its place quickly", "The typical-case cost on such data is much better than the worst case", "The worst-case complexity class is still quadratic"},
    "Explanation"  -> "On data that is already close to sorted, each new value needs to move only a short distance, so the typical cost is much lower than the quadratic worst case, even though the worst case itself is unchanged.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "so-mcq-multi-adv-2",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"comparison with Sort"},
    "Question"     -> "Which statements comparing these hand-written sorts with the built-in Sort are true?",
    "Options"      -> {"Sort does work proportional to n log n rather than n squared", "The gap between the two widens as the input grows", "Sort should be used in real work rather than either hand-written sort", "Insertion sort is always faster than Sort in practice"},
    "Answer"       -> {"Sort does work proportional to n log n rather than n squared", "The gap between the two widens as the input grows", "Sort should be used in real work rather than either hand-written sort"},
    "Explanation"  -> "The difference between n squared and n log n is a difference in complexity class, not implementation quality, and it grows more pronounced as n increases.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "so-blank-adv-1",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"verification"},
    "Question"     -> "Complete so that a hand-written sort is checked against Sort on twenty random lists of twelve elements.",
    "Template"     -> "Table[With[{r = RandomInteger[100, 12]}, insertionSort[r] === Sort[r]], {___}]",
    "Hint"         -> "How many random trials were asked for?",
    "Answer"       -> 20,
    "Explanation"  -> "Repeating the comparison on freshly generated random data each time gives a much stronger check than any single example could.",
    "Points"       -> 3
  |>,

  <|
    "ID"           -> "so-blank-adv-2",
    "Topic"        -> "Sorting Algorithms",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"FoldList", "watching progress"},
    "Question"     -> "Complete so that every intermediate sorted region is visible, not just the final result.",
    "Template"     -> "___[insertInto, {}, {5, 2, 8, 1}]",
    "Hint"         -> "This is the counterpart to Fold that keeps every intermediate accumulator value.",
    "Answer"       -> "FoldList",
    "Explanation"  -> "FoldList records the accumulator after every step, turning the sort into a visible record of one element being inserted at a time.",
    "Points"       -> 3
  |>,

  <|
    "ID"            -> "so-code-adv-1",
    "Topic"         -> "Sorting Algorithms",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"insertion sort by key"},
    "Question"      -> "Write insertionSortBy[lst, key], sorting a list into ascending order of key[element] rather than of the elements themselves.",
    "Template"      -> "insertBy[sorted_List, x_, key_] := Insert[sorted, x, LengthWhile[sorted, key[#] <= key[x] &] + 1];\ninsertionSortBy[lst_List, key_] := ___",
    "Hint"         -> "Fold the key-aware insertion step through the list, threading key through with a pure function.",
    "TestCases"     -> {{{{{"a", 3}, {"b", 1}, {"c", 2}}, Last}, {{"b", 1}, {"c", 2}, {"a", 3}}}, {{{}, Last}, {}}, {{{{"x", 5}}, Last}, {{"x", 5}}}},
    "SampleAnswer"  -> "insertionSortBy[lst_List, key_] := Fold[insertBy[#1, #2, key] &, {}, lst]",
    "Explanation"   -> "The insertion step is unchanged apart from comparing by key; Fold threads that key function through unchanged from one call to the next. The result should agree with SortBy[lst, key] on the same input.",
    "Points"        -> 5
  |>,

  <|
    "ID"            -> "so-code-adv-2",
    "Topic"         -> "Sorting Algorithms",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"bubble sort", "counting operations"},
    "Question"      -> "Write a function that returns how many swaps bubble sort performs while fully sorting a list, without modifying the earlier bubblePass function's behaviour (write this as a self-contained function).",
    "Template"      -> "countSwaps[lst_] := Module[{___}, ___]",
    "Hint"         -> "Run passes until nothing changes, incrementing a counter each time a swap happens inside a pass.",
    "TestCases"     -> {{{1, 2, 3}, 0}, {{2, 1}, 1}, {{3, 2, 1}, 3}, {{}, 0}},
    "SampleAnswer"  -> "countSwaps[lst_] := Module[{l = lst, swaps = 0, changed = True}, While[changed, changed = False; Do[If[l[[i]] > l[[i + 1]], l[[{i, i + 1}]] = l[[{i + 1, i}]]; swaps++; changed = True], {i, Length[l] - 1}]]; swaps]",
    "Explanation"   -> "The count of swaps for {3, 2, 1} is 3, matching the number of inversions in the list, which is a general property of bubble sort: it performs exactly one swap per inversion.",
    "Points"        -> 5
  |>

};
