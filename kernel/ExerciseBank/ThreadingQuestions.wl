ClearAll[threadingQuestions];
threadingQuestions = {


  <|
    "ID"           "thr-mcq-single-beg-1",
    "Topic"        "Threading",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Single",
    "Tags"         {"Thread", "Listable"},
    "Question"     "What does {1, 2, 3} + {10, 20, 30} return?",
    "Options"      {"{11, 22, 33}", "{1,2,3,10,20,30}", "60", "An error"},
    "Answer"       "{11, 22, 33}",
    "Explanation"  "Plus is Listable, so it automatically threads element-wise over the two lists, adding corresponding entries.",
    "Points"       1
  |>,

  <|
    "ID"           "thr-mcq-multi-beg-1",
    "Topic"        "Threading",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Multiple",
    "Tags"         {"Listable", "automatic threading"},
    "Question"     "Which built-in functions automatically thread over lists without needing Thread or Map?",
    "Options"      {"Plus", "Times", "StringJoin", "Power"},
    "Answer"       {"Plus", "Times", "Power"},
    "Explanation"  "Plus, Times, and Power all carry the Listable attribute. StringJoin does not automatically thread over lists.",
    "Points"       2
  |>,

  <|
    "ID"           "thr-blank-beg-1",
    "Topic"        "Threading",
    "Difficulty"   "Beginner",
    "Type"         "Blanks",
    "Tags"         {"Listable", "arithmetic"},
    "Question"     "Complete the expression to multiply each element of {2, 4, 6} by the corresponding element of {1, 2, 3}.",
    "Template"     "{2, 4, 6} ____ {1, 2, 3}",
    "Hint"         "Times is Listable, so the standard multiplication operator threads automatically.",
    "Answer"       "*",
    "Explanation"  "{2,4,6} * {1,2,3} threads Times element-wise, returning {2, 8, 18}.",
    "Points"       1
  |>,

  <|
    "ID"            "thr-code-beg-1",
    "Topic"         "Threading",
    "Difficulty"    "Beginner",
    "Type"          "Code Writing",
    "Tags"          {"Listable", "arithmetic"},
    "Question"      "Write a function addLists that takes two lists of equal length and returns their element-wise sum.",
    "Template"      "addLists[a_, b_] := ____",
    "Hint"          "Plus is Listable, so adding the two lists directly threads over them.",
    "TestCases"     {{{{1, 2, 3}, {4, 5, 6}}, {5, 7, 9}}, {{{0, 0}, {1, 1}}, {1, 1}}},
    "SampleAnswer"  "addLists[a_, b_] := a + b",
    "Explanation"   "Because Plus is Listable, a + b automatically adds corresponding elements of the two lists.",
    "Points"        3
  |>,



  <|
    "ID"           "thr-mcq-single-int-1",
    "Topic"        "Threading",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Single",
    "Tags"         {"Thread", "non-listable function"},
    "Question"     "If f is not Listable, what does Thread[f[{1,2}, {3,4}]] return?",
    "Options"      {"f[{1,2}, {3,4}]", "{f[1,3], f[2,4]}", "{f[1,2], f[3,4]}", "An error"},
    "Answer"       "{f[1,3], f[2,4]}",
    "Explanation"  "Thread explicitly distributes f over corresponding elements of the lists, equivalent to MapThread, regardless of whether f is Listable.",
    "Points"       1
  |>,

  <|
    "ID"           "thr-mcq-multi-int-1",
    "Topic"        "Threading",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Multiple",
    "Tags"         {"Thread", "MapThread", "equivalence"},
    "Question"     "Which statements about Thread and MapThread are correct?",
    "Options"      {"Thread[f[{a,b},{c,d}]] and MapThread[f, {{a,b},{c,d}}] produce equivalent results", "Thread requires the function to already be applied to the lists as arguments", "MapThread takes the function as a separate first argument", "Thread only works with exactly two lists"},
    "Answer"       {"Thread[f[{a,b},{c,d}]] and MapThread[f, {{a,b},{c,d}}] produce equivalent results", "Thread requires the function to already be applied to the lists as arguments", "MapThread takes the function as a separate first argument"},
    "Explanation"  "Thread and MapThread achieve the same element-wise distribution but with different calling conventions. Thread works with more than two lists as well.",
    "Points"       2
  |>,

  <|
    "ID"           "thr-blank-int-1",
    "Topic"        "Threading",
    "Difficulty"   "Intermediate",
    "Type"         "Blanks",
    "Tags"         {"MapThread"},
    "Question"     "Complete the call that adds corresponding elements of {1,2,3} and {10,20,30} using MapThread.",
    "Template"     "MapThread[____, {{1, 2, 3}, {10, 20, 30}}]",
    "Hint"         "Pass the function to apply pairwise as the first argument.",
    "Answer"       "Plus",
    "Explanation"  "MapThread[Plus, {{1,2,3},{10,20,30}}] returns {11, 22, 33} by applying Plus pairwise.",
    "Points"       2
  |>,

  <|
    "ID"            "thr-code-int-1",
    "Topic"         "Threading",
    "Difficulty"    "Intermediate",
    "Type"          "Code Writing",
    "Tags"          {"Thread", "non-listable function", "rules"},
    "Question"      "Write a function pairUp that takes two equal-length lists and returns a list of rules mapping element of a to corresponding element of b, using Thread.",
    "Template"      "pairUp[a_, b_] := ____",
    "Hint"          "Use Thread on a -> rule built from the two lists: Thread[a -> b].",
    "TestCases"     {{{{1, 2}, {"x", "y"}}, {1  "x", 2  "y"}}, {{{3}, {"z"}}, {3  "z"}}},
    "SampleAnswer"  "pairUp[a_, b_] := Thread[a -> b]",
    "Explanation"   "Thread[a -> b] distributes the Rule head over corresponding elements, producing {a[[1]] -> b[[1]], a[[2]] -> b[[2]], ...}.",
    "Points"        4
  |>,



  <|
    "ID"           "thr-mcq-single-adv-1",
    "Topic"        "Threading",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Single",
    "Tags"         {"Thread", "ragged lists", "error handling"},
    "Question"     "What happens if you call Thread[f[{1,2,3}, {1,2}]] on lists of unequal length?",
    "Options"      {"It pads the shorter list with zeros", "It throws an error since the lists have different lengths", "It returns {f[1,1], f[2,2]} and silently drops the extra element", "It returns the lists unchanged"},
    "Answer"       "It throws an error since the lists have different lengths",
    "Explanation"  "Thread requires all listable arguments to have the same length; mismatched lengths produce a Thread::tdlen error.",
    "Points"       1
  |>,

  <|
    "ID"           "thr-mcq-multi-adv-1",
    "Topic"        "Threading",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Multiple",
    "Tags"         {"Listable", "attributes", "custom functions"},
    "Question"     "Which approaches let a custom function g thread automatically over lists like a built-in Listable function?",
    "Options"      {"SetAttributes[g, Listable]", "Defining g[x_List, y_List] := MapThread[g, {x, y}]", "Calling Thread[g[list1, list2]] each time it's needed", "Nothing can make a custom function thread automatically"},
    "Answer"       {"SetAttributes[g, Listable]", "Defining g[x_List, y_List] := MapThread[g, {x, y}]", "Calling Thread[g[list1, list2]] each time it's needed"},
    "Explanation"  "Setting the Listable attribute is the cleanest way for automatic threading; defining a dedicated list rule or wrapping calls in Thread are valid alternative approaches.",
    "Points"       2
  |>,

  <|
    "ID"           "thr-blank-adv-1",
    "Topic"        "Threading",
    "Difficulty"   "Advanced",
    "Type"         "Blanks",
    "Tags"         {"SetAttributes", "Listable"},
    "Question"     "Complete the statement that makes the custom function combine automatically thread element-wise over lists, like built-in arithmetic functions.",
    "Template"     "SetAttributes[combine, ____]",
    "Hint"         "This is the same attribute used earlier to make addOne thread over lists.",
    "Answer"       "Listable",
    "Explanation"  "SetAttributes[combine, Listable] tells Mathematica to automatically apply combine element-wise whenever it receives list arguments.",
    "Points"       3
  |>,

  <|
    "ID"            "thr-code-adv-1",
    "Topic"         "Threading",
    "Difficulty"    "Advanced",
    "Type"          "Code Writing",
    "Tags"          {"MapThread", "three lists", "weighted average"},
    "Question"      "Write a function weightedSum that takes a list of values and a list of weights of equal length, and returns the sum of value*weight pairs using MapThread and Apply.",
    "Template"      "weightedSum[values_, weights_] := ____",
    "Hint"          "MapThread Times over the two lists to get pairwise products, then Apply Plus to total them.",
    "TestCases"     {{{{1, 2, 3}, {0.5, 0.3, 0.2}}, 1.5}, {{{10, 20}, {0.5, 0.5}}, 15}},
    "SampleAnswer"  "weightedSum[values_, weights_] := Plus @@ MapThread[Times, {values, weights}]",
    "Explanation"   "MapThread[Times, {values, weights}] pairs up and multiplies corresponding elements; Apply with Plus then sums those products into the weighted total.",
    "Points"        5
  |>,

  (* ---- BEGINNER (added) ---- *)

  <|
    "ID" -> "thr-mcq-single-beg-2",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Listable", "scalar broadcast"},
    "Question" -> "What does {1, 2, 3} + 10 return?",
    "Options" -> {"{11, 12, 13}", "13", "{1, 2, 3, 10}", "An error, scalars can't be added to lists"},
    "Answer" -> "{11, 12, 13}",
    "Explanation" -> "Because Plus is Listable, a scalar is automatically threaded (broadcast) across every element of the list, adding 10 to each.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-mcq-multi-beg-2",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Listable", "Attributes"},
    "Question" -> "Which of the following are true about the Listable attribute?",
    "Options" -> {"You can check whether a function is Listable using Attributes[f]", "Listable is set automatically on every user-defined function", "A Listable function automatically threads over any list argument", "Times, Plus, and Power all have the Listable attribute built in"},
    "Answer" -> {"You can check whether a function is Listable using Attributes[f]", "A Listable function automatically threads over any list argument", "Times, Plus, and Power all have the Listable attribute built in"},
    "Explanation" -> "Attributes[f] reveals whether Listable (and other attributes) are set. Listable is NOT automatic for user-defined functions \[LongDash] it must be set explicitly with SetAttributes.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-blank-beg-2",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"Listable", "scalar broadcast"},
    "Question" -> "Complete the expression that adds the scalar 5 to every element of {1, 2, 3} by relying on Listable threading.",
    "Template" -> "{1, 2, 3} ____ 5",
    "Hint" -> "Plus is Listable, so the ordinary addition operator threads automatically.",
    "Answer" -> "+",
    "Explanation" -> "{1,2,3} + 5 relies on Plus being Listable, automatically threading the scalar 5 across every element.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-code-beg-2",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"Listable", "scalar broadcast"},
    "Question" -> "Write a function scaleList that multiplies every element of a list by a scalar factor, relying on Listable threading (no explicit Map).",
    "Template" -> "scaleList[list_, factor_] := ____",
    "Hint" -> "Times is Listable, so multiplying the list by the scalar directly threads over it.",
    "TestCases" -> {{{{1, 2, 3}, 2}, {2, 4, 6}}, {{{5}, 10}, {50}}},
    "SampleAnswer" -> "scaleList[list_, factor_] := list * factor",
    "Explanation" -> "Because Times is Listable, list * factor automatically threads the scalar factor across every element of list.",
    "Points" -> 3
  |>,

  (* ---- INTERMEDIATE (added) ---- *)

  <|
    "ID" -> "thr-mcq-single-int-2",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Thread", "single list"},
    "Question" -> "What does Thread[f[{1, 2, 3}]] (Thread with a single list argument) return?",
    "Options" -> {"f[{1, 2, 3}]", "{f[1], f[2], f[3]}", "f[1, 2, 3]", "An error, Thread needs at least two lists"},
    "Answer" -> "{f[1], f[2], f[3]}",
    "Explanation" -> "Thread also works with a single list argument, distributing f over each element just like Map would in this case.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-mcq-multi-int-2",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Thread", "custom head"},
    "Question" -> "Which of the following are true about Thread's optional second argument (the head to thread over)?",
    "Options" -> {"Thread[expr, h] threads over parts of expr that have head h, not just List", "By default, Thread only threads over parts with head List", "The second argument to Thread must always be List", "Thread[f[a + b, c + d], Plus] can thread over Plus-headed parts instead of lists"},
    "Answer" -> {"Thread[expr, h] threads over parts of expr that have head h, not just List", "By default, Thread only threads over parts with head List", "Thread[f[a + b, c + d], Plus] can thread over Plus-headed parts instead of lists"},
    "Explanation" -> "Thread's optional second argument lets it thread over any specified head, not just List \[LongDash] by default that head is List, but passing Plus (for example) lets Thread distribute over Plus-structured arguments instead.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-blank-int-2",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"Thread", "single list"},
    "Question" -> "Complete the call that threads f over the single list {1, 2, 3}, equivalent to Map[f, {1, 2, 3}].",
    "Template" -> "Thread[f[____]]",
    "Hint" -> "Just wrap the list itself as f's argument.",
    "Answer" -> "{1, 2, 3}",
    "Explanation" -> "Thread[f[{1,2,3}]] distributes f over the list's elements, giving {f[1],f[2],f[3]}, the same result Map would give here.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-code-int-2",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"MapThread", "Max"},
    "Question" -> "Write a function pointwiseMax that takes two equal-length lists and returns a list of the pairwise maximum of corresponding elements.",
    "Template" -> "pointwiseMax[a_, b_] := ____",
    "Hint" -> "MapThread Max over the two lists.",
    "TestCases" -> {{{{1, 5, 3}, {4, 2, 6}}, {4, 5, 6}}, {{{0, 0}, {1, -1}}, {1, 0}}},
    "SampleAnswer" -> "pointwiseMax[a_, b_] := MapThread[Max, {a, b}]",
    "Explanation" -> "MapThread[Max, {a,b}] applies Max to corresponding elements of a and b, taking the larger of each pair.",
    "Points" -> 4
  |>,

  (* ---- ADVANCED (added) ---- *)

  <|
    "ID" -> "thr-mcq-single-adv-2",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Listable", "performance"},
    "Question" -> "Why is relying on a function's Listable attribute for threading generally faster than using Map for large numeric lists?",
    "Options" -> {"Listable functions are evaluated using Mathematica's internal vectorized/packed-array machinery instead of looping via Map", "There is no performance difference, it's purely stylistic", "Map always automatically becomes Listable internally", "Listable functions skip type checking entirely"},
    "Answer" -> "Listable functions are evaluated using Mathematica's internal vectorized/packed-array machinery instead of looping via Map",
    "Explanation" -> "Listable operations can be evaluated using Mathematica's optimized packed-array machinery, which is typically much faster on large numeric lists than an explicit Map-based loop.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-mcq-multi-adv-2",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Outer", "MapThread", "Thread"},
    "Question" -> "Which of the following are true about Outer, compared to Thread and MapThread?",
    "Options" -> {"Outer[f, list1, list2] applies f to every combination of elements from list1 and list2, not just corresponding pairs", "MapThread and Thread only combine corresponding (same-position) elements", "Outer[Times, {1, 2}, {10, 20}] returns a 2x2 matrix of all pairwise products", "Outer is just another name for MapThread"},
    "Answer" -> {"Outer[f, list1, list2] applies f to every combination of elements from list1 and list2, not just corresponding pairs", "MapThread and Thread only combine corresponding (same-position) elements", "Outer[Times, {1, 2}, {10, 20}] returns a 2x2 matrix of all pairwise products"},
    "Explanation" -> "Outer computes f over every combination of elements from the input lists (a full outer product), unlike Thread/MapThread which only pair up corresponding positions.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-blank-adv-2",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Outer"},
    "Question" -> "Complete the call that computes the outer product of {1, 2} and {10, 20} using Times.",
    "Template" -> "____[Times, {1, 2}, {10, 20}]",
    "Hint" -> "This function computes every pairwise combination, unlike Thread or MapThread.",
    "Answer" -> "Outer",
    "Explanation" -> "Outer[Times, {1,2}, {10,20}] returns a matrix of every pairwise product between the two lists.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "thr-code-adv-2",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Outer", "multiplication table"},
    "Question" -> "Write a function multiplicationTable that takes two lists and returns their full multiplication table (every pairwise product) using Outer.",
    "Template" -> "multiplicationTable[a_, b_] := ____",
    "Hint" -> "Outer[Times, a, b] computes every pairwise product between elements of a and b.",
    "TestCases" -> {{{{1, 2}, {3, 4}}, {{3, 4}, {6, 8}}}, {{{1, 2, 3}, {10}}, {{10}, {20}, {30}}}},
    "SampleAnswer" -> "multiplicationTable[a_, b_] := Outer[Times, a, b]",
    "Explanation" -> "Outer[Times, a, b] computes every pairwise product between elements of a and b, building the full multiplication table.",
    "Points" -> 5
  |>,

  (* ================= BEGINNER (rounds 3-5) ================= *)

  <|
    "ID" -> "thr-mcq-single-beg-3",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Listable", "comparison"},
    "Question" -> "Which of the following built-in operations is NOT automatically Listable, meaning {1,2,3} > {0,1,5} does not automatically thread element-wise?",
    "Options" -> {"Greater (>)", "Plus (+)", "Times (*)", "Power (^)"},
    "Answer" -> "Greater (>)",
    "Explanation" -> "Unlike Plus, Times, and Power, comparison operators like Greater are not Listable by default; comparing two lists directly tests them as whole values rather than threading element-wise.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-mcq-multi-beg-3",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Thread", "comparison"},
    "Question" -> "Which of the following are true about comparing two lists element-wise, like {1,2,3} and {0,5,1}?",
    "Options" -> {"{1,2,3} > {0,5,1} does not automatically give {True,False,True}, since > is not Listable", "Thread[{1,2,3} > {0,5,1}] correctly produces the element-wise comparison {True,False,True}", "Comparison operators are Listable by default, just like Plus", "MapThread[Greater, {{1,2,3},{0,5,1}}] is another way to get the same element-wise result"},
    "Answer" -> {"{1,2,3} > {0,5,1} does not automatically give {True,False,True}, since > is not Listable", "Thread[{1,2,3} > {0,5,1}] correctly produces the element-wise comparison {True,False,True}", "MapThread[Greater, {{1,2,3},{0,5,1}}] is another way to get the same element-wise result"},
    "Explanation" -> "Comparison operators aren't Listable by default, so comparing two lists directly doesn't thread; wrapping the comparison in Thread (or using MapThread) is the standard way to get an element-wise True/False result.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-blank-beg-3",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"Thread", "comparison"},
    "Question" -> "Complete the call that produces the element-wise comparison of {1,2,3} and {0,5,1} using Greater, since > is not Listable by default.",
    "Template" -> "____[{1, 2, 3} > {0, 5, 1}]",
    "Hint" -> "This function forces element-wise distribution regardless of whether the operator is Listable.",
    "Answer" -> "Thread",
    "Explanation" -> "Thread[{1,2,3} > {0,5,1}] explicitly distributes Greater over corresponding elements, giving {True,False,True}.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-code-beg-3",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"Thread", "comparison"},
    "Question" -> "Write a function compareLists that takes two equal-length lists and returns a list of True/False for whether each element of a is greater than the corresponding element of b, using Thread.",
    "Template" -> "compareLists[a_, b_] := ___",
    "Hint" -> "Thread[a > b] distributes Greater over corresponding elements.",
    "TestCases" -> {{{{1, 5, 2}, {0, 6, 2}}, {True, False, False}}, {{{3}, {1}}, {True}}},
    "SampleAnswer" -> "compareLists[a_, b_] := Thread[a > b]",
    "Explanation" -> "Thread[a > b] compares corresponding elements of a and b pairwise, since Greater is not Listable on its own.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "thr-mcq-single-beg-4",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Listable", "StringJoin"},
    "Question" -> "Does StringJoin (<>) automatically thread over two lists of strings, like {\"a\",\"b\"} <> {\"1\",\"2\"}?",
    "Options" -> {"No, StringJoin is not Listable; this would need Thread or MapThread to combine element-wise", "Yes, it automatically gives {\"a1\",\"b2\"}", "It throws a syntax error immediately", "StringJoin can only take one argument"},
    "Answer" -> "No, StringJoin is not Listable; this would need Thread or MapThread to combine element-wise",
    "Explanation" -> "StringJoin is not Listable, so combining two lists of strings element-wise requires explicitly using Thread or MapThread, just like with comparison operators.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-mcq-multi-beg-4",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Listable"},
    "Question" -> "Which of these built-in functions are Listable (thread automatically over lists)?",
    "Options" -> {"Plus", "Sqrt", "Head", "Times"},
    "Answer" -> {"Plus", "Sqrt", "Times"},
    "Explanation" -> "Plus, Times, and Sqrt are all Listable and thread automatically over lists; Head is not Listable \[LongDash] Head[{1,2,3}] simply returns List (the head of the whole list), rather than threading to give the head of each element.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-blank-beg-4",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"Listable", "Sqrt"},
    "Question" -> "Complete the expression that computes the square root of every element in {4, 9, 16} at once, relying on Listable threading.",
    "Template" -> "____[{4, 9, 16}]",
    "Hint" -> "This built-in function is Listable, so it threads automatically.",
    "Answer" -> "Sqrt",
    "Explanation" -> "Sqrt is Listable, so Sqrt[{4,9,16}] automatically threads to give {2,3,4}, without needing Map.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-code-beg-4",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"Listable", "Sqrt"},
    "Question" -> "Write a function sqrtAll that returns the square root of every element in a list, relying on Listable threading (no explicit Map).",
    "Template" -> "sqrtAll[list_] := ___",
    "Hint" -> "Sqrt is Listable, so applying it directly to the list already threads.",
    "TestCases" -> {{{4, 9, 16}, {2, 3, 4}}, {{1}, {1}}, {{}, {}}},
    "SampleAnswer" -> "sqrtAll[list_] := Sqrt[list]",
    "Explanation" -> "Because Sqrt is Listable, applying it directly to list threads automatically over every element.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "thr-mcq-single-beg-5",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Listable", "scalar broadcast"},
    "Question" -> "What does 2 * {1, 2, 3} return?",
    "Options" -> {"{2,4,6}", "2", "{1,2,3,2,1,2,3,2,1,2,3}", "An error"},
    "Answer" -> "{2,4,6}",
    "Explanation" -> "Because Times is Listable, the scalar 2 automatically threads across every element of the list, doubling each one.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-mcq-multi-beg-5",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"scalar broadcast"},
    "Question" -> "Which of the following correctly describe scalar broadcasting with Listable functions?",
    "Options" -> {"A single scalar value can be automatically combined with every element of a list", "This works because the function (like Plus or Times) is Listable", "Scalar broadcasting requires the scalar to be wrapped in its own single-element list first", "{1,2,3} + 1 and {1,2,3} + {1,1,1} give the same result"},
    "Answer" -> {"A single scalar value can be automatically combined with every element of a list", "This works because the function (like Plus or Times) is Listable", "{1,2,3} + 1 and {1,2,3} + {1,1,1} give the same result"},
    "Explanation" -> "Listable functions automatically broadcast a scalar across every element of a list, exactly as if it had been repeated in a same-length list; no extra wrapping is needed.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-blank-beg-5",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"scalar broadcast"},
    "Question" -> "Complete the expression that subtracts 1 from every element of {5, 10, 15}, relying on scalar broadcasting.",
    "Template" -> "{5, 10, 15} ____ 1",
    "Hint" -> "Subtract is Listable, just like Plus.",
    "Answer" -> "-",
    "Explanation" -> "{5,10,15} - 1 relies on Subtract being Listable, broadcasting the scalar 1 across every element.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-code-beg-5",
    "Topic" -> "Threading",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"scalar broadcast"},
    "Question" -> "Write a function incrementAll that adds a scalar amount to every element of a list, relying on Listable threading (no explicit Map).",
    "Template" -> "incrementAll[list_, amount_] := ___",
    "Hint" -> "Plus is Listable, so list + amount already threads.",
    "TestCases" -> {{{{1, 2, 3}, 10}, {11, 12, 13}}, {{{0}, 5}, {5}}},
    "SampleAnswer" -> "incrementAll[list_, amount_] := list + amount",
    "Explanation" -> "Because Plus is Listable, list + amount automatically broadcasts the scalar amount across every element.",
    "Points" -> 3
  |>,

  (* ================= INTERMEDIATE (rounds 3-5) ================= *)

  <|
    "ID" -> "thr-mcq-single-int-3",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Inner"},
    "Question" -> "What does Inner[f, {1,2,3}, {4,5,6}, g] compute?",
    "Options" -> {"It combines corresponding elements pairwise with f (like Times), then combines all those results with g (like Plus) \[LongDash] a generalized dot product", "It's identical to Outer", "It only works with numeric lists", "It requires exactly one function argument, not two"},
    "Answer" -> "It combines corresponding elements pairwise with f (like Times), then combines all those results with g (like Plus) \[LongDash] a generalized dot product",
    "Explanation" -> "Inner generalizes the dot product: it applies f to corresponding elements pairwise, then combines those results using g, so Inner[Times, a, b, Plus] computes the ordinary dot product of a and b.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-mcq-multi-int-3",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Inner", "dot product"},
    "Question" -> "Which of the following are true about Inner[Times, {1,2,3}, {4,5,6}, Plus]?",
    "Options" -> {"It computes the same result as the ordinary dot product: 1*4+2*5+3*6 = 32", "It requires both lists to be the same length", "It's equivalent to Plus @@ MapThread[Times, {{1,2,3},{4,5,6}}]", "It always returns a list, never a single number"},
    "Answer" -> {"It computes the same result as the ordinary dot product: 1*4+2*5+3*6 = 32", "It requires both lists to be the same length", "It's equivalent to Plus @@ MapThread[Times, {{1,2,3},{4,5,6}}]"},
    "Explanation" -> "Inner[Times, a, b, Plus] computes exactly the same result as the ordinary dot product, and is equivalent to combining MapThread and Apply as shown; it requires the lists to align in length.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-blank-int-3",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"Inner", "dot product"},
    "Question" -> "Complete the Inner call that computes the dot product of {1,2,3} and {4,5,6}.",
    "Template" -> "Inner[Times, {1, 2, 3}, {4, 5, 6}, ____]",
    "Hint" -> "What combines the pairwise products into a single total?",
    "Answer" -> "Plus",
    "Explanation" -> "Inner[Times, a, b, Plus] multiplies corresponding elements, then sums (Plus) all the products, giving the dot product.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-code-int-3",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"Inner", "dot product"},
    "Question" -> "Write a function dotProductInner that computes the dot product of two equal-length lists using Inner (not MapThread/Apply directly).",
    "Template" -> "dotProductInner[a_, b_] := ___",
    "Hint" -> "Inner[Times, a, b, Plus] multiplies then sums.",
    "TestCases" -> {{{{1, 2, 3}, {4, 5, 6}}, 32}, {{{1, 0}, {5, 5}}, 5}},
    "SampleAnswer" -> "dotProductInner[a_, b_] := Inner[Times, a, b, Plus]",
    "Explanation" -> "Inner[Times, a, b, Plus] multiplies corresponding elements pairwise, then sums all the products into the dot product.",
    "Points" -> 4
  |>,

  <|
    "ID" -> "thr-mcq-single-int-4",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Thread", "logical operators"},
    "Question" -> "What does Thread[{True,False} && {True,True}] return?",
    "Options" -> {"{True, False}", "True", "{False,False}", "An error, And doesn't support Thread"},
    "Answer" -> "{True, False}",
    "Explanation" -> "Thread distributes And (&&) over corresponding elements: True&&True=True, False&&True=False, giving {True,False}.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-mcq-multi-int-4",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Thread", "logical operators"},
    "Question" -> "Which of the following are true about threading logical operations like And (&&) and Or (||)?",
    "Options" -> {"Thread[{True,False} || {False,False}] gives {True,False}", "And and Or are not Listable by default, so lists of booleans need Thread (or MapThread) to combine element-wise", "Logical operations can never be threaded", "Thread works the same way regardless of whether the underlying function is arithmetic or logical"},
    "Answer" -> {"Thread[{True,False} || {False,False}] gives {True,False}", "And and Or are not Listable by default, so lists of booleans need Thread (or MapThread) to combine element-wise", "Thread works the same way regardless of whether the underlying function is arithmetic or logical"},
    "Explanation" -> "Thread works uniformly regardless of the underlying function's type, whether arithmetic, comparison, or logical; And/Or need explicit Thread since they aren't Listable by default.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-blank-int-4",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"Thread", "logical operators"},
    "Question" -> "Complete the call that element-wise ANDs {True, False, True} with {True, True, False}.",
    "Template" -> "____[{True, False, True} && {True, True, False}]",
    "Hint" -> "This function forces element-wise distribution.",
    "Answer" -> "Thread",
    "Explanation" -> "Thread[{True,False,True} && {True,True,False}] distributes And over corresponding elements, giving {True,False,False}.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-code-int-4",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"Thread", "logical operators"},
    "Question" -> "Write a function bothTrue that takes two equal-length lists of booleans and returns their element-wise logical And, using Thread.",
    "Template" -> "bothTrue[a_, b_] := ___",
    "Hint" -> "Thread[a && b] distributes And over corresponding elements.",
    "TestCases" -> {{{{True, False, True}, {True, True, False}}, {True, False, False}}, {{{True}, {True}}, {True}}},
    "SampleAnswer" -> "bothTrue[a_, b_] := Thread[a && b]",
    "Explanation" -> "Thread[a && b] combines corresponding boolean elements of a and b with logical And.",
    "Points" -> 4
  |>,

  <|
    "ID" -> "thr-mcq-single-int-5",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Thread", "equal length"},
    "Question" -> "What is required of the lists passed to Thread (or MapThread) for them to combine correctly element-wise?",
    "Options" -> {"They generally need to be the same length", "They can be any different lengths, extras are simply dropped", "Only the first list's length matters", "Thread automatically pads shorter lists with zeros"},
    "Answer" -> "They generally need to be the same length",
    "Explanation" -> "Thread and MapThread expect their input lists to be the same length; mismatched lengths typically produce an error rather than silently padding or truncating.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-mcq-multi-int-5",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Thread", "MapThread", "multiple lists"},
    "Question" -> "Which of the following are true about using Thread (or MapThread) with three or more lists at once?",
    "Options" -> {"Thread[f[{1,2},{3,4},{5,6}]] threads f over all three lists together, giving {f[1,3,5], f[2,4,6]}", "MapThread[f, {{1,2},{3,4},{5,6}}] achieves the same three-list threading", "Thread and MapThread are limited to exactly two lists", "All input lists must still share the same length"},
    "Answer" -> {"Thread[f[{1,2},{3,4},{5,6}]] threads f over all three lists together, giving {f[1,3,5], f[2,4,6]}", "MapThread[f, {{1,2},{3,4},{5,6}}] achieves the same three-list threading", "All input lists must still share the same length"},
    "Explanation" -> "Both Thread and MapThread generalize to any number of lists (not just two), as long as all the lists involved share the same length.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-blank-int-5",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"MapThread", "multiple lists"},
    "Question" -> "Complete the MapThread call that combines {1,2}, {10,20}, and {100,200} using Plus, all at once.",
    "Template" -> "MapThread[Plus, ____]",
    "Hint" -> "MapThread takes a list containing all the lists to combine.",
    "Answer" -> "{{1, 2}, {10, 20}, {100, 200}}",
    "Explanation" -> "MapThread[Plus, {{1,2},{10,20},{100,200}}] adds corresponding elements across all three lists, giving {111,222}.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-code-int-5",
    "Topic" -> "Threading",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"MapThread", "multiple lists"},
    "Question" -> "Write a function tripleSum that takes three equal-length lists and returns their element-wise sum, using MapThread.",
    "Template" -> "tripleSum[a_, b_, c_] := ___",
    "Hint" -> "MapThread[Plus, {a, b, c}] combines all three lists.",
    "TestCases" -> {{{{1, 2}, {10, 20}, {100, 200}}, {111, 222}}, {{{1}, {1}, {1}}, {3}}},
    "SampleAnswer" -> "tripleSum[a_, b_, c_] := MapThread[Plus, {a, b, c}]",
    "Explanation" -> "MapThread[Plus, {a, b, c}] applies Plus to corresponding elements across all three lists at once.",
    "Points" -> 4
  |>,

  (* ================= ADVANCED (rounds 3-5) ================= *)

  <|
    "ID" -> "thr-mcq-single-adv-3",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Distribute"},
    "Question" -> "What does Distribute[(a+b)*(c+d)] compute?",
    "Options" -> {"It expands the product into a*c+a*d+b*c+b*d, distributing Times over the Plus expressions", "It factors the expression instead of expanding it", "It requires numeric values, not symbols", "It's identical to Thread"},
    "Answer" -> "It expands the product into a*c+a*d+b*c+b*d, distributing Times over the Plus expressions",
    "Explanation" -> "Distribute generalizes the algebraic distributive law, expanding products of sums into a sum of all pairwise products.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-mcq-multi-adv-3",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Distribute", "Outer"},
    "Question" -> "Which of the following are true about Distribute compared to Outer?",
    "Options" -> {"Both can produce all pairwise combinations of two collections", "Distribute defaults to distributing over Plus specifically (like algebraic expansion), while Outer is more general-purpose for building combination arrays", "They are used identically in every situation with no differences", "Distribute can be customized to distribute over other heads besides Plus, using extra arguments"},
    "Answer" -> {"Both can produce all pairwise combinations of two collections", "Distribute defaults to distributing over Plus specifically (like algebraic expansion), while Outer is more general-purpose for building combination arrays", "Distribute can be customized to distribute over other heads besides Plus, using extra arguments"},
    "Explanation" -> "Distribute and Outer both relate to combining elements pairwise, but Distribute is specialized for algebraic-style expansion (defaulting to Plus/Times), while Outer is a general tool for building an array of all combinations using any function.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-blank-adv-3",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Distribute"},
    "Question" -> "Complete the call that expands (x+y)*(a+b) into a fully distributed sum of products.",
    "Template" -> "____[(x + y)*(a + b)]",
    "Hint" -> "This function generalizes the algebraic distributive law.",
    "Answer" -> "Distribute",
    "Explanation" -> "Distribute[(x+y)*(a+b)] expands the product into x*a+x*b+y*a+y*b.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "thr-code-adv-3",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Distribute"},
    "Question" -> "Write a function expandProduct that takes two symbolic sums (like x+y) and returns their fully distributed product, using Distribute.",
    "Template" -> "expandProduct[p_, q_] := ___",
    "Hint" -> "Distribute[p*q] expands the product.",
    "TestCases" -> {{{x + y, a + b}, x*a + x*b + y*a + y*b}, {{x, a + b}, x*a + x*b}},
    "SampleAnswer" -> "expandProduct[p_, q_] := Distribute[p*q]",
    "Explanation" -> "Distribute[p*q] expands the product of two sums into the full sum of pairwise products.",
    "Points" -> 5
  |>,

  <|
    "ID" -> "thr-mcq-single-adv-4",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Outer", "tensor"},
    "Question" -> "What does Outer[Times, {1,2}, {3,4}, {5,6}] (three lists) produce?",
    "Options" -> {"A 3-dimensional array (tensor) of all triple products, with dimensions 2x2x2", "A flat list of 6 elements", "An error, Outer only accepts two lists", "The same as Outer with just the first two lists"},
    "Answer" -> "A 3-dimensional array (tensor) of all triple products, with dimensions 2x2x2",
    "Explanation" -> "Outer generalizes beyond two lists: with three input lists it produces a 3-dimensional array containing every combination of one element from each list, multiplied together.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-mcq-multi-adv-4",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Outer", "MapThread", "dimensionality"},
    "Question" -> "Which of the following are true about generalizing Outer and Thread/MapThread beyond just two lists?",
    "Options" -> {"Outer[f, l1, l2, l3] builds a 3-dimensional array of all combinations across the three lists", "MapThread[f, {l1, l2, l3}] instead combines only corresponding elements across the three lists, staying 1-dimensional", "Both approaches require all input lists to have the same structure/type", "Outer's output dimensionality grows with the number of input lists, while MapThread's does not"},
    "Answer" -> {"Outer[f, l1, l2, l3] builds a 3-dimensional array of all combinations across the three lists", "MapThread[f, {l1, l2, l3}] instead combines only corresponding elements across the three lists, staying 1-dimensional", "Outer's output dimensionality grows with the number of input lists, while MapThread's does not"},
    "Explanation" -> "Outer's result dimensionality grows with each additional list (all combinations), while MapThread stays flat, always combining only same-position elements regardless of how many lists are given.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-blank-adv-4",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Outer", "tensor"},
    "Question" -> "Complete the call that builds a 3-dimensional array of all triple sums from {1,2}, {10,20}, and {100,200}.",
    "Template" -> "Outer[Plus, {1, 2}, {10, 20}, ____]",
    "Hint" -> "The third list goes in the last argument slot.",
    "Answer" -> "{100, 200}",
    "Explanation" -> "Outer[Plus, {1,2}, {10,20}, {100,200}] builds a 2x2x2 array containing every possible triple sum, one element from each list.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "thr-code-adv-4",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Outer", "tensor"},
    "Question" -> "Write a function tripleOuterSum that takes three lists and returns the full 3-dimensional array of all possible triple sums, using Outer.",
    "Template" -> "tripleOuterSum[a_, b_, c_] := ___",
    "Hint" -> "Outer[Plus, a, b, c] builds the full array of all combinations.",
    "TestCases" -> {{{{1}, {10}, {100}}, {{{111}}}}, {{{1, 2}, {10}, {100}}, {{{111}}, {{112}}}}},
    "SampleAnswer" -> "tripleOuterSum[a_, b_, c_] := Outer[Plus, a, b, c]",
    "Explanation" -> "Outer[Plus, a, b, c] builds a 3-dimensional array containing the sum of every combination of one element from each list.",
    "Points" -> 5
  |>,

  <|
    "ID" -> "thr-mcq-single-adv-5",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Thread", "Listable", "performance"},
    "Question" -> "For a function that is Listable (like Plus), is it better to rely on its automatic threading or to explicitly wrap it in Thread?",
    "Options" -> {"Relying on automatic Listable threading is preferred \[LongDash] Thread is unnecessary (and adds overhead) for functions that are already Listable", "Thread is always required, even for Listable functions", "Thread makes Listable functions faster", "There's no difference in behavior or performance"},
    "Answer" -> "Relying on automatic Listable threading is preferred \[LongDash] Thread is unnecessary (and adds overhead) for functions that are already Listable",
    "Explanation" -> "Thread is meant for functions that aren't automatically Listable; wrapping an already-Listable function in Thread is redundant and can add unnecessary overhead.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "thr-mcq-multi-adv-5",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"SetAttributes", "multiple attributes"},
    "Question" -> "Which of the following are true about setting multiple attributes at once, like SetAttributes[f, {Listable, Orderless}]?",
    "Options" -> {"Multiple attributes can be set in one call by passing a list", "This makes f both automatically thread over lists and treat its arguments as reorderable", "Attributes set this way remain in effect until explicitly cleared with ClearAttributes", "Only one attribute can ever be set on a symbol at a time"},
    "Answer" -> {"Multiple attributes can be set in one call by passing a list", "This makes f both automatically thread over lists and treat its arguments as reorderable", "Attributes set this way remain in effect until explicitly cleared with ClearAttributes"},
    "Explanation" -> "SetAttributes accepts a list of multiple attributes at once; once set, they persist until explicitly removed with ClearAttributes.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "thr-blank-adv-5",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"SetAttributes", "multiple attributes"},
    "Question" -> "Complete the call that makes combine both Listable and Orderless at once.",
    "Template" -> "SetAttributes[combine, {Listable, ____}]",
    "Hint" -> "This is the attribute that lets arguments be freely reordered.",
    "Answer" -> "Orderless",
    "Explanation" -> "SetAttributes[combine, {Listable, Orderless}] sets both attributes in a single call, passed as a list.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "thr-code-adv-5",
    "Topic" -> "Threading",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"SetAttributes", "Listable"},
    "Question" -> "Write a function checkAndSet that takes a symbol sym, sets Listable on it via SetAttributes, and returns whether Listable now appears in Attributes[sym].",
    "Template" -> "checkAndSet[sym_] := ___",
    "Hint" -> "Call SetAttributes[sym, Listable], then check MemberQ[Attributes[sym], Listable].",
    "TestCases" -> {{myTestFunc1, True}, {myTestFunc2, True}},
    "SampleAnswer" -> "checkAndSet[sym_] := (SetAttributes[sym, Listable]; MemberQ[Attributes[sym], Listable])",
    "Explanation" -> "SetAttributes[sym, Listable] sets the attribute, and MemberQ[Attributes[sym], Listable] confirms it took effect.",
    "Points" -> 5
  |>

};
