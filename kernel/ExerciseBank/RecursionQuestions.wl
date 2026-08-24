ClearAll[recursionQuestions];
recursionQuestions = {

  (* \[HorizontalLine]\[HorizontalLine] BEGINNER \[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine] *)

  <|
    "ID"           "rec-mcq-single-beg-1",
    "Topic"        "Recursion",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Single",
    "Tags"         {"base case"},
    "Question"     "What is the purpose of a base case in recursion?",
    "Options"      {"To increase recursion depth", "To stop recursion", "To optimize memory", "To sort results"},
    "Answer"       "To stop recursion",
    "Explanation"  "The base case is the condition that stops recursive calls, preventing infinite recursion.",
    "Points"       1
  |>,

  <|
    "ID"           "rec-mcq-multi-beg-1",
    "Topic"        "Recursion",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Multiple",
    "Tags"         {"base case", "recursive case"},
    "Question"     "Which of the following are true about a recursive function?",
    "Options"      {"It must have a base case", "It calls itself", "It must use a loop", "It reduces the problem each step"},
    "Answer"       {"It must have a base case", "It calls itself", "It reduces the problem each step"},
    "Explanation"  "Recursive functions call themselves and must have a base case. They do not require loops.",
    "Points"       2
  |>,

  <|
    "ID"           "rec-blank-beg-1",
    "Topic"        "Recursion",
    "Difficulty"   "Beginner",
    "Type"         "Blanks",
    "Tags"         {"base case", "factorial"},
    "Question"     "Complete the base case for factorial.",
    "Template"     "factorial[____] = 1",
    "Hint"         "What is the smallest input where factorial has a known value?",
    "Answer"       1,
    "Explanation"  "factorial[1] = 1 is the base case that stops the recursion.",
    "Points"       1
  |>,

  <|
    "ID"            "rec-code-beg-1",
    "Topic"         "Recursion",
    "Difficulty"    "Beginner",
    "Type"          "Code Writing",
    "Tags"          {"factorial", "linear recursion"},
    "Question"      "Write a recursive factorial function.",
    "Template"      "factorial[1] = ___;\nfactorial[n_] := ___",
    "Hint"          "The base case is 1. The recursive case multiplies n by factorial of the previous number.",
    "TestCases"     {{1, 1}, {3, 6}, {5, 120}},
    "SampleAnswer"  "factorial[1] = 1;\nfactorial[n_] := n * factorial[n - 1]",
    "Explanation"   "factorial[n] = n * factorial[n-1] until the base case factorial[1] = 1 is reached.",
    "Points"        3
  |>,

  (* \[HorizontalLine]\[HorizontalLine] INTERMEDIATE \[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine] *)

  <|
    "ID"           "rec-mcq-single-int-1",
    "Topic"        "Recursion",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Single",
    "Tags"         {"branching recursion", "fibonacci"},
    "Question"     "Why is naive recursive Fibonacci inefficient?",
    "Options"      {"It uses too much stack space", "It recomputes the same subproblems repeatedly", "It has no base case", "It only works for small inputs"},
    "Answer"       "It recomputes the same subproblems repeatedly",
    "Explanation"  "fib[n-2] is recomputed independently in every branch, leading to exponential time complexity.",
    "Points"       1
  |>,

  <|
    "ID"           "rec-mcq-multi-int-1",
    "Topic"        "Recursion",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Multiple",
    "Tags"         {"structural recursion", "list recursion"},
    "Question"     "Which of the following correctly describe structural recursion on a list?",
    "Options"      {"Uses First and Rest to decompose the list", "Base case is the empty list", "Base case is the longest list", "Recursive call is made on Rest[list]"},
    "Answer"       {"Uses First and Rest to decompose the list", "Base case is the empty list", "Recursive call is made on Rest[list]"},
    "Explanation"  "Structural recursion breaks a list into its head (First) and tail (Rest), recursing on the tail until the list is empty.",
    "Points"       2
  |>,

  <|
    "ID"           "rec-blank-int-1",
    "Topic"        "Recursion",
    "Difficulty"   "Intermediate",
    "Type"         "Blanks",
    "Tags"         {"list recursion", "structural recursion"},
    "Question"     "Complete the recursive case for summing a list.",
    "Template"     "sum[list_] := First[list] + sum[____]",
    "Hint"         "You need to recurse on everything except the first element.",
    "Answer"       "Rest[list]",
    "Explanation"  "Rest[list] drops the first element, so each call works on a shorter list until it is empty.",
    "Points"       2
  |>,

  <|
    "ID"            "rec-code-int-1",
    "Topic"         "Recursion",
    "Difficulty"    "Intermediate",
    "Type"          "Code Writing",
    "Tags"          {"list recursion", "structural recursion"},
    "Question"      "Write a recursive function that sums all elements in a list.",
    "Template"      "sum[{}] = ___;\nsum[list_] := ___ + sum[___]",
    "Hint"          "Base case is the empty list returning 0. Recursive case adds First to the sum of Rest.",
    "TestCases"     {{{2, 4, 6}, 12}, {{1, 1, 1}, 3}, {{}, 0}},
    "SampleAnswer"  "sum[{}] = 0;\nsum[list_] := First[list] + sum[Rest[list]]",
    "Explanation"   "The empty list returns 0. Each recursive call adds the first element to the sum of the remaining list.",
    "Points"        4
  |>,

  (* \[HorizontalLine]\[HorizontalLine] ADVANCED \[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine] *)

  <|
    "ID"           "rec-mcq-single-adv-1",
    "Topic"        "Recursion",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Single",
    "Tags"         {"divide and conquer", "binary search"},
    "Question"     "In a divide-and-conquer recursive function, what happens at each step?",
    "Options"      {"The problem is solved directly", "The problem is split into smaller subproblems", "A loop iterates over all elements", "The base case is skipped"},
    "Answer"       "The problem is split into smaller subproblems",
    "Explanation"  "Divide and conquer recursion splits the problem into independent subproblems, solves each, then combines results.",
    "Points"       1
  |>,

  <|
    "ID"           "rec-mcq-multi-adv-1",
    "Topic"        "Recursion",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Multiple",
    "Tags"         {"branching recursion", "fibonacci", "efficiency"},
    "Question"     "Which of the following are valid ways to improve naive recursive Fibonacci?",
    "Options"      {"Memoization", "Tail recursion", "Adding more base cases", "Iterative rewrite"},
    "Answer"       {"Memoization", "Tail recursion", "Iterative rewrite"},
    "Explanation"  "Memoization caches results, tail recursion avoids stack growth, and an iterative approach eliminates redundant calls entirely. Adding base cases alone does not fix the exponential blowup.",
    "Points"       2
  |>,

  <|
    "ID"           "rec-blank-adv-1",
    "Topic"        "Recursion",
    "Difficulty"   "Advanced",
    "Type"         "Blanks",
    "Tags"         {"index recursion", "accumulator"},
    "Question"     "Complete the index-based recursive step for summing a list.",
    "Template"     "sum[list_, i_] := If[i > Length[list], 0, list[[i]] + sum[list, ____]]",
    "Hint"         "Each call processes the current index, so the next call should move to the next index.",
    "Answer"       "i + 1",
    "Explanation"  "Incrementing i moves to the next element. When i exceeds the list length the base case returns 0.",
    "Points"       3
  |>,

  <|
    "ID"            "rec-code-adv-1",
    "Topic"         "Recursion",
    "Difficulty"    "Advanced",
    "Type"          "Code Writing",
    "Tags"          {"fibonacci", "branching recursion", "memoization"},
    "Question"      "Write a memoized recursive Fibonacci function using Mathematica's pattern caching.",
    "Template"      "fib[0] = ___;\nfib[1] = ___;\nfib[n_] := fib[n] = ___",
    "Hint"          "Assign the result back to fib[n] in the recursive case so it is cached for future calls.",
    "TestCases"     {{0, 0}, {1, 1}, {5, 5}, {10, 55}, {20, 6765}},
    "SampleAnswer"  "fib[0] = 0;\nfib[1] = 1;\nfib[n_] := fib[n] = fib[n - 1] + fib[n - 2]",
    "Explanation"   "Writing fib[n] = fib[n-1] + fib[n-2] stores the result as a new rule, so each value is only computed once.",
    "Points"        5
  |>,

  (* ---- BEGINNER (added) ---- *)

  <|
    "ID" -> "rec-mcq-single-beg-2",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"infinite recursion", "base case"},
    "Question" -> "What happens if a recursive function is defined without a base case?",
    "Options" -> {"It stops automatically after one call", "It keeps calling itself until it hits Mathematica's recursion limit and errors out", "It behaves like a loop and runs forever without error", "Mathematica automatically adds a base case"},
    "Answer" -> "It keeps calling itself until it hits Mathematica's recursion limit and errors out",
    "Explanation" -> "Without a base case, the function keeps recursing until $RecursionLimit (or $IterationLimit) is exceeded, producing a recursion-depth error instead of a result.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-mcq-multi-beg-2",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"recursive case", "problem reduction"},
    "Question" -> "Which of the following are true about the recursive case of a well-formed recursive function?",
    "Options" -> {"It should move the input closer to the base case", "It can call the function itself more than once", "It never needs to use the function's own name", "It solves a smaller version of the same problem"},
    "Answer" -> {"It should move the input closer to the base case", "It can call the function itself more than once", "It solves a smaller version of the same problem"},
    "Explanation" -> "The recursive case must shrink the problem toward the base case (otherwise it never terminates) and may call itself once (linear recursion) or multiple times (branching recursion, like Fibonacci). It always references the function's own name, that's what makes it recursive.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-blank-beg-2",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"base case", "power"},
    "Question" -> "Complete the base case for a recursive power function, where anything to the power 0 is 1.",
    "Template" -> "power[base_, 0] = ____",
    "Hint" -> "What is any number raised to the power 0?",
    "Answer" -> 1,
    "Explanation" -> "power[base_, 0] = 1 is the base case: any base raised to the 0th power is 1, regardless of the base.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-code-beg-2",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"list recursion", "base case"},
    "Question" -> "Write a recursive function countdownList that takes a non-negative integer n and returns the list {n, n-1, ..., 1} (empty list for n = 0).",
    "Template" -> "countdownList[0] = ___;\ncountdownList[n_] := ___",
    "Hint" -> "The base case returns an empty list. The recursive case prepends n to countdownList[n-1].",
    "TestCases" -> {{3, {3, 2, 1}}, {1, {1}}, {0, {}}},
    "SampleAnswer" -> "countdownList[0] = {};\ncountdownList[n_] := Prepend[countdownList[n - 1], n]",
    "Explanation" -> "The base case for n = 0 is the empty list. Each recursive call prepends the current n to the countdown of n-1.",
    "Points" -> 3
  |>,

  (* ---- INTERMEDIATE (added) ---- *)

  <|
    "ID" -> "rec-mcq-single-int-2",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"accumulator", "tail recursion"},
    "Question" -> "What is the purpose of an accumulator parameter in a recursive function?",
    "Options" -> {"It stores the function's name for debugging", "It carries the partial result along so each call can be the last operation performed, enabling tail-call style recursion", "It counts how many times the base case was hit", "It is required by Mathematica for all recursive functions"},
    "Answer" -> "It carries the partial result along so each call can be the last operation performed, enabling tail-call style recursion",
    "Explanation" -> "An accumulator threads the partial result through each call, so the recursive call is the very last thing that happens (tail position), rather than needing to wait for a nested call to return before combining results.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-mcq-multi-int-2",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"linear recursion", "branching recursion"},
    "Question" -> "Which of the following statements about linear vs. branching recursion are correct?",
    "Options" -> {"Linear recursion makes exactly one recursive call per step", "Branching recursion makes more than one recursive call per step", "factorial is an example of branching recursion", "Naive Fibonacci is an example of branching recursion"},
    "Answer" -> {"Linear recursion makes exactly one recursive call per step", "Branching recursion makes more than one recursive call per step", "Naive Fibonacci is an example of branching recursion"},
    "Explanation" -> "Linear recursion (like factorial) calls itself once per step. Branching recursion (like naive Fibonacci, which calls fib[n-1] and fib[n-2]) makes multiple calls per step, which is why it grows exponentially.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-blank-int-2",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"list recursion", "length"},
    "Question" -> "Complete the recursive case for computing the length of a list.",
    "Template" -> "length[{}] = 0;\nlength[list_] := 1 + length[____]",
    "Hint" -> "Recurse on everything except the first element, same as the sum example.",
    "Answer" -> "Rest[list]",
    "Explanation" -> "Each call adds 1 for the first element, then recurses on Rest[list] until the list is empty and the base case returns 0.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-code-int-2",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"list recursion", "reversal"},
    "Question" -> "Write a recursive function reverseList that reverses a list.",
    "Template" -> "reverseList[{}] = ___;\nreverseList[list_] := ___",
    "Hint" -> "Recursively reverse Rest[list], then Append First[list] to the end.",
    "TestCases" -> {{{1, 2, 3}, {3, 2, 1}}, {{}, {}}, {{5}, {5}}},
    "SampleAnswer" -> "reverseList[{}] = {};\nreverseList[list_] := Append[reverseList[Rest[list]], First[list]]",
    "Explanation" -> "The base case is the empty list. Each recursive call reverses the rest of the list first, then appends the original first element to the end.",
    "Points" -> 4
  |>,

  (* ---- ADVANCED (added) ---- *)

  <|
    "ID" -> "rec-mcq-single-adv-2",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"mutual recursion"},
    "Question" -> "What is mutual recursion?",
    "Options" -> {"A function that calls itself twice in one line", "Two or more functions that call each other, such as isEven calling isOdd and vice versa", "A recursive function with two base cases", "A function that recurses over two lists at once"},
    "Answer" -> "Two or more functions that call each other, such as isEven calling isOdd and vice versa",
    "Explanation" -> "Mutual recursion occurs when two or more functions call each other, forming a recursive cycle across function definitions rather than within a single one.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-mcq-multi-adv-2",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"recursion limit", "deep recursion"},
    "Question" -> "Which of the following are true about deep, non-tail recursion in Mathematica on very large inputs?",
    "Options" -> {"It can exceed $RecursionLimit and throw an error", "It always runs in constant memory", "An accumulator-based rewrite can sometimes avoid the recursion depth problem", "Mathematica automatically converts all recursion into iteration"},
    "Answer" -> {"It can exceed $RecursionLimit and throw an error", "An accumulator-based rewrite can sometimes avoid the recursion depth problem"},
    "Explanation" -> "Very deep recursion can exceed $RecursionLimit. Rewriting with an accumulator so the recursive call is in tail position can reduce the depth needed, though Mathematica does not automatically optimize tail calls into iteration.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-blank-adv-2",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"accumulator", "factorial"},
    "Question" -> "Complete the recursive step for an accumulator-based factorial.",
    "Template" -> "factorialAcc[0, acc_] := acc;\nfactorialAcc[n_, acc_] := factorialAcc[n - 1, ____]",
    "Hint" -> "Multiply the accumulator by the current n before passing it to the next call.",
    "Answer" -> "n * acc",
    "Explanation" -> "Each call multiplies the running accumulator by n before recursing, so the final multiplication happens before the last call instead of after it returns.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "rec-code-adv-2",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"mutual recursion", "gcd", "Euclidean algorithm"},
    "Question" -> "Write a recursive function gcd that computes the greatest common divisor of two non-negative integers using the Euclidean algorithm.",
    "Template" -> "gcd[a_, 0] := ___;\ngcd[a_, b_] := gcd[___, ___]",
    "Hint" -> "The base case is gcd[a, 0] = a. The recursive case is gcd[b, Mod[a, b]].",
    "TestCases" -> {{{48, 18}, 6}, {{7, 3}, 1}, {{100, 10}, 10}},
    "SampleAnswer" -> "gcd[a_, 0] := a;\ngcd[a_, b_] := gcd[b, Mod[a, b]]",
    "Explanation" -> "The Euclidean algorithm repeatedly replaces (a, b) with (b, a mod b) until b reaches 0, at which point a is the greatest common divisor.",
    "Points" -> 5
  |>,

  (* ---- BEGINNER (round 3) ---- *)

  <|
    "ID" -> "rec-mcq-single-beg-3",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"evaluation order", "unwinding"},
    "Question" -> "When Mathematica evaluates factorial[3] using factorial[1] = 1; factorial[n_] := n*factorial[n-1], in what order do the multiplications actually happen?",
    "Options" -> {"3*2*1 all multiply at the same instant", "The base case factorial[1] is reached first, then the multiplications happen while returning back up the call chain", "Multiplication happens before the base case is ever reached", "It depends on $RecursionLimit"},
    "Answer" -> "The base case factorial[1] is reached first, then the multiplications happen while returning back up the call chain",
    "Explanation" -> "Recursive calls must first descend all the way to the base case before any pending multiplication can complete; the actual arithmetic happens on the way back up as each call returns.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-mcq-multi-beg-3",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"call stack"},
    "Question" -> "Which of the following are true about how Mathematica keeps track of pending recursive calls?",
    "Options" -> {"Each call waits for its recursive call to return before finishing its own computation", "All recursive calls happen simultaneously, independent of each other", "Pending calls are tracked using an internal call stack", "The deepest call (the one that hits the base case) is the first to actually finish"},
    "Answer" -> {"Each call waits for its recursive call to return before finishing its own computation", "Pending calls are tracked using an internal call stack", "The deepest call (the one that hits the base case) is the first to actually finish"},
    "Explanation" -> "Recursive calls are tracked on a call stack; each call pauses until its own recursive call returns, and the base case (the deepest call) is the first to actually finish.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-blank-beg-3",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"repeated addition", "recursive case"},
    "Question" -> "Complete the recursive call so multiply computes n * m via repeated addition.",
    "Template" -> "multiply[n_, 0] := 0;\nmultiply[n_, m_] := n + multiply[n, ____]",
    "Hint" -> "Each call should add n one more time and shrink m toward the base case.",
    "Answer" -> "m - 1",
    "Explanation" -> "Each recursive call adds n once and decreases m by 1, so after m additions the base case multiply[n, 0] = 0 is reached.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-code-beg-3",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"digit manipulation"},
    "Question" -> "Write a recursive function sumDigits that returns the sum of the digits of a non-negative integer n.",
    "Template" -> "sumDigits[n_] := If[n < 10, ___, ___]",
    "Hint" -> "The base case is a single digit (n < 10), returning n itself. Otherwise add the last digit to the sum of the rest.",
    "TestCases" -> {{5, 5}, {123, 6}, {999, 27}},
    "SampleAnswer" -> "sumDigits[n_] := If[n < 10, n, Mod[n, 10] + sumDigits[Quotient[n, 10]]]",
    "Explanation" -> "Mod[n,10] extracts the last digit and Quotient[n,10] drops it, so each call peels off one digit until a single digit remains.",
    "Points" -> 3
  |>,

  (* ---- INTERMEDIATE (round 3) ---- *)

  <|
    "ID" -> "rec-mcq-single-int-3",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"inductive definition"},
    "Question" -> "What is a key advantage of writing sum[list_] recursively instead of using a Do loop?",
    "Options" -> {"Recursive code is always faster", "The recursive definition closely mirrors the mathematical/inductive definition of the problem, which can make it easier to reason about correctness", "Recursive functions never need a base case", "Do loops cannot process lists at all"},
    "Answer" -> "The recursive definition closely mirrors the mathematical/inductive definition of the problem, which can make it easier to reason about correctness",
    "Explanation" -> "Recursive definitions often directly mirror an inductive mathematical definition (base case + inductive step), which can make correctness easier to see, even though performance isn't automatically better.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-mcq-multi-int-3",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"nested lists", "tree recursion"},
    "Question" -> "Which of the following are true about writing a recursive function over a nested list (a list that may itself contain sublists)?",
    "Options" -> {"The function typically needs a case for when an element is itself a list (recurse into it)", "The function typically needs a case for when an element is an atom (a base case for that branch)", "Nested lists can only be processed with explicit loops, never recursion", "Head[x] === List can be used to test whether an element is itself a sublist"},
    "Answer" -> {"The function typically needs a case for when an element is itself a list (recurse into it)", "The function typically needs a case for when an element is an atom (a base case for that branch)", "Head[x] === List can be used to test whether an element is itself a sublist"},
    "Explanation" -> "Processing nested/tree-like lists recursively typically branches on whether the current element is itself a list (recurse deeper) or an atom (base case for that branch); Head[x] === List is a standard way to test which case applies.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-blank-int-3",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"list recursion", "counting"},
    "Question" -> "Complete the recursive case that counts how many elements of a list are even.",
    "Template" -> "countEven[{}] = 0;\ncountEven[list_] := If[EvenQ[First[list]], 1, 0] + countEven[____]",
    "Hint" -> "Recurse on everything except the first element, same as the length/sum examples.",
    "Answer" -> "Rest[list]",
    "Explanation" -> "Each call checks the first element and recurses on Rest[list], accumulating 1 for every even element found until the list is empty.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-code-int-3",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"nested lists", "tree recursion"},
    "Question" -> "Write a recursive function flattenList that takes a list which may contain sublists and returns a single flat list of all the atomic elements, in order.",
    "Template" -> "flattenList[{}] := ___;\nflattenList[list_] := ___",
    "Hint" -> "For each element, if it's a list recurse into it with flattenList, otherwise keep it as a one-element list, then Join everything together.",
    "TestCases" -> {{{1, {2, 3}, 4}, {1, 2, 3, 4}}, {{{1, {2}}, 3}, {1, 2, 3}}, {{}, {}}},
    "SampleAnswer" -> "flattenList[{}] := {};\nflattenList[list_] := Join @@ (If[ListQ[#], flattenList[#], {#}] & /@ list)",
    "Explanation" -> "Each element is either recursively flattened (if it's a sublist) or wrapped as a one-element list (if it's an atom), and Join stitches all the pieces back into one flat list.",
    "Points" -> 4
  |>,

  (* ---- ADVANCED (round 3) ---- *)

  <|
    "ID" -> "rec-mcq-single-adv-3",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"primitive recursion", "general recursion"},
    "Question" -> "What distinguishes primitive recursion from general recursion, in terms of what determines when the recursion stops?",
    "Options" -> {"Primitive recursion always stops after a number of steps fixed in advance (e.g. by a counting parameter), while general recursion can depend on an arbitrary computed condition", "There is no meaningful distinction", "Primitive recursion never has a base case", "General recursion is always primitive recursion in disguise"},
    "Answer" -> "Primitive recursion always stops after a number of steps fixed in advance (e.g. by a counting parameter), while general recursion can depend on an arbitrary computed condition",
    "Explanation" -> "Primitive recursion decreases a counting parameter toward zero in a fixed, predictable number of steps; general recursion (guarded by an arbitrary condition, like Collatz-style rules) may have no a priori bound on the number of steps.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-mcq-multi-adv-3",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Ackermann function", "nested recursive calls"},
    "Question" -> "Which of the following are true about a recursive definition like A[m_, n_] := A[m - 1, A[m, n - 1]] (an Ackermann-style pattern)?",
    "Options" -> {"The inner call A[m, n-1] must be evaluated before the outer call A[m-1, ...] can proceed", "This pattern can grow extremely fast compared to simple linear or branching recursion", "This is invalid syntax in Mathematica", "A function can never appear as an argument to another call of itself"},
    "Answer" -> {"The inner call A[m, n-1] must be evaluated before the outer call A[m-1, ...] can proceed", "This pattern can grow extremely fast compared to simple linear or branching recursion"},
    "Explanation" -> "Standard evaluation order means the innermost call A[m,n-1] must finish first, since its result becomes an argument to the outer call; Ackermann-style recursion is famous for growing far faster than typical linear or branching recursion.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-blank-adv-3",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Ackermann function", "nested recursive calls"},
    "Question" -> "Complete the general recursive case of this Ackermann-style function.",
    "Template" -> "ackermannLike[0, n_] := n + 1;\nackermannLike[m_, 0] := ackermannLike[m - 1, 1];\nackermannLike[m_, n_] := ackermannLike[m - 1, ____]",
    "Hint" -> "The inner call should reduce n by 1 first; its result becomes the second argument to the outer call with m-1.",
    "Answer" -> "ackermannLike[m, n - 1]",
    "Explanation" -> "The general case reduces n by 1 first (as the inner call), then uses that result as the second argument to a call with a smaller m \[LongDash] the hallmark structure of Ackermann-style recursion.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "rec-code-adv-3",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Towers of Hanoi", "recurrence relation"},
    "Question" -> "Write a function hanoiMoves that returns the minimum number of moves required to solve the Towers of Hanoi puzzle with n disks.",
    "Template" -> "hanoiMoves[0] := ___;\nhanoiMoves[n_] := ___",
    "Hint" -> "Solving n disks requires solving n-1 disks twice, plus one move for the largest disk: 2*hanoiMoves[n-1] + 1.",
    "TestCases" -> {{0, 0}, {1, 1}, {3, 7}, {4, 15}},
    "SampleAnswer" -> "hanoiMoves[0] := 0;\nhanoiMoves[n_] := 2*hanoiMoves[n - 1] + 1",
    "Explanation" -> "Moving n disks means moving the top n-1 disks out of the way, moving the largest disk once, then moving the n-1 disks back on top, giving 2*hanoiMoves[n-1] + 1.",
    "Points" -> 5
  |>,

  (* ---- BEGINNER (round 4) ---- *)

  <|
    "ID" -> "rec-mcq-single-beg-4",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"counting calls"},
    "Question" -> "How many total function calls (including the initial one) does evaluating factorial[4] make, using factorial[1] = 1; factorial[n_] := n*factorial[n-1]?",
    "Options" -> {"3", "4", "5", "16"},
    "Answer" -> "4",
    "Explanation" -> "factorial[4] calls factorial[3], which calls factorial[2], which calls factorial[1] \[LongDash] four calls total, one for each integer from 4 down to 1.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-mcq-multi-beg-4",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"SetDelayed", "pattern matching", "base case"},
    "Question" -> "Which of the following are true about writing a recursive definition in Mathematica?",
    "Options" -> {"SetDelayed (:=) is typically used so the body isn't evaluated until the function is called", "The argument is usually matched with a pattern like n_", "A base case stops the recursion for specific input(s)", "NestList must always be used instead of writing your own recursive rules"},
    "Answer" -> {"SetDelayed (:=) is typically used so the body isn't evaluated until the function is called", "The argument is usually matched with a pattern like n_", "A base case stops the recursion for specific input(s)"},
    "Explanation" -> "Recursive definitions typically use :=, pattern-match their argument, and include an explicit base case; NestList is a built-in alternative, not a requirement.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-blank-beg-4",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"base case", "list length"},
    "Question" -> "Complete the base case for a function that returns the length of a list using recursion.",
    "Template" -> "listLength[{}] = ____",
    "Hint" -> "What is the length of an empty list?",
    "Answer" -> "0",
    "Explanation" -> "The empty list has length 0, which is the base case listLength[{}] = 0.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-code-beg-4",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"list recursion", "product"},
    "Question" -> "Write a recursive function productOfList that returns the product of all elements in a list (base case: empty list returns 1).",
    "Template" -> "productOfList[{}] := ___;\nproductOfList[list_] := ___",
    "Hint" -> "Multiply First[list] by the recursively computed product of Rest[list].",
    "TestCases" -> {{{2, 3, 4}, 24}, {{5}, 5}, {{}, 1}},
    "SampleAnswer" -> "productOfList[{}] := 1;\nproductOfList[list_] := First[list] * productOfList[Rest[list]]",
    "Explanation" -> "The empty list contributes 1 (the multiplicative identity); each call multiplies the first element by the product of the rest.",
    "Points" -> 3
  |>,

  (* ---- INTERMEDIATE (round 4) ---- *)

  <|
    "ID" -> "rec-mcq-single-int-4",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"termination", "well-founded recursion"},
    "Question" -> "What does it mean for a recursive function to be \"well-founded\"?",
    "Options" -> {"It always returns True", "Its recursive calls are guaranteed to eventually reach the base case for any valid input", "It uses only well-known built-in functions", "It never uses pattern matching"},
    "Answer" -> "Its recursive calls are guaranteed to eventually reach the base case for any valid input",
    "Explanation" -> "A well-founded recursive function is guaranteed to terminate because each recursive call moves strictly closer to the base case for every valid input.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-mcq-multi-int-4",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"list transformation", "recursion pattern"},
    "Question" -> "Which of the following are true when writing a recursive function that returns a modified copy of a list (like doubling every element), rather than a single aggregated value?",
    "Options" -> {"The base case is usually the empty list, returning {}", "The recursive case combines a transformed First[list] with the recursively processed Rest[list]", "Prepend or a list constructor is typically used to build up the result", "The function must always return a number"},
    "Answer" -> {"The base case is usually the empty list, returning {}", "The recursive case combines a transformed First[list] with the recursively processed Rest[list]", "Prepend or a list constructor is typically used to build up the result"},
    "Explanation" -> "List-transforming recursive functions typically have an empty-list base case and build up the result by combining a transformed first element with the recursively processed rest.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-blank-int-4",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"list transformation"},
    "Question" -> "Complete the recursive case that doubles every element of a list.",
    "Template" -> "doubleAll[{}] = {};\ndoubleAll[list_] := Prepend[doubleAll[Rest[list]], ____]",
    "Hint" -> "Double the first element before prepending it.",
    "Answer" -> "2*First[list]",
    "Explanation" -> "Each call doubles the first element and prepends it to the recursively doubled rest of the list.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-code-int-4",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"list recursion", "maximum"},
    "Question" -> "Write a recursive function maxOfList that returns the maximum value in a non-empty list.",
    "Template" -> "maxOfList[{x_}] := ___;\nmaxOfList[list_] := ___",
    "Hint" -> "The base case is a single-element list. Otherwise take the Max of First[list] and the recursively computed maximum of Rest[list].",
    "TestCases" -> {{{3}, 3}, {{1, 5, 2}, 5}, {{7, 7, 7}, 7}},
    "SampleAnswer" -> "maxOfList[{x_}] := x;\nmaxOfList[list_] := Max[First[list], maxOfList[Rest[list]]]",
    "Explanation" -> "The base case handles a single-element list directly; otherwise each call compares the first element against the maximum of the rest.",
    "Points" -> 4
  |>,

  (* ---- ADVANCED (round 4) ---- *)

  <|
    "ID" -> "rec-mcq-single-adv-4",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"structural induction", "proof technique"},
    "Question" -> "Why does structural induction naturally align with proving properties of recursively-defined functions?",
    "Options" -> {"Because structural induction proves a base case and an inductive step, mirroring a recursive function's base case and recursive case exactly", "Because induction only works for numbers, not lists", "Because Mathematica performs proofs automatically", "There is no natural connection"},
    "Answer" -> "Because structural induction proves a base case and an inductive step, mirroring a recursive function's base case and recursive case exactly",
    "Explanation" -> "Structural induction's base case and inductive step correspond directly to a recursive function's base case and recursive case, making it a natural proof technique for recursive definitions.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-mcq-multi-adv-4",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"mutual recursion", "isEven", "isOdd"},
    "Question" -> "Which of the following are true when implementing mutually recursive functions isEven/isOdd in Mathematica?",
    "Options" -> {"Both functions can reference each other by name regardless of definition order, since symbols resolve at call time", "isEven[n_] := If[n == 0, True, isOdd[n-1]] and isOdd[n_] := If[n == 0, False, isEven[n-1]] correctly implement mutual recursion", "Mutual recursion requires a single combined function; two separate functions can never call each other", "Each function still needs its own base case"},
    "Answer" -> {"Both functions can reference each other by name regardless of definition order, since symbols resolve at call time", "isEven[n_] := If[n == 0, True, isOdd[n-1]] and isOdd[n_] := If[n == 0, False, isEven[n-1]] correctly implement mutual recursion", "Each function still needs its own base case"},
    "Explanation" -> "Mutually recursive functions can freely reference each other by name (Mathematica resolves the symbol at call time, not definition time); each still needs a base case, and the isEven/isOdd example is a correct standard implementation.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-blank-adv-4",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"mutual recursion", "isEven", "isOdd"},
    "Question" -> "Complete the mutually recursive definition of isOdd, given isEven is defined analogously.",
    "Template" -> "isEven[0] := True;\nisEven[n_] := isOdd[n - 1];\nisOdd[0] := False;\nisOdd[n_] := ____",
    "Hint" -> "isOdd should defer to isEven on n-1, mirroring isEven's own definition.",
    "Answer" -> "isEven[n - 1]",
    "Explanation" -> "isOdd defers to isEven on n-1, mirroring isEven's own definition, completing the mutual recursion.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "rec-code-adv-4",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"mutual recursion", "isEven", "isOdd"},
    "Question" -> "Write mutually recursive functions isEven and isOdd (both defined) such that isEven[n] returns True/False for whether n is even, without using EvenQ or Mod.",
    "Template" -> "isEven[0] := ___;\nisEven[n_] := ___;\nisOdd[0] := ___;\nisOdd[n_] := ___",
    "Hint" -> "isEven[n] should defer to isOdd[n-1], and isOdd[n] should defer to isEven[n-1].",
    "TestCases" -> {{4, True}, {7, False}, {0, True}},
    "SampleAnswer" -> "isEven[0] := True;\nisEven[n_] := isOdd[n - 1];\nisOdd[0] := False;\nisOdd[n_] := isEven[n - 1]",
    "Explanation" -> "isEven and isOdd defer to each other on n-1 until reaching 0, where the base cases True/False directly answer the question.",
    "Points" -> 5
  |>,

  (* ---- BEGINNER (round 5) ---- *)

  <|
    "ID" -> "rec-mcq-single-beg-5",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"named pattern", "function argument"},
    "Question" -> "In a recursive definition like power[base_, n_] := ..., what does the pattern n_ do?",
    "Options" -> {"It requires n to be exactly the letter n", "It binds whatever value is passed as the second argument to the name n for use in the function body", "It means n is optional", "It converts the argument to a string"},
    "Answer" -> "It binds whatever value is passed as the second argument to the name n for use in the function body",
    "Explanation" -> "n_ is a named blank pattern that matches any single value passed in that position and binds it to n for use inside the function body.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-mcq-multi-beg-5",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"termination", "linear recursion"},
    "Question" -> "For countdown[n_] := If[n <= 0, Print[\"done\"], (Print[n]; countdown[n-1])], which of the following are true?",
    "Options" -> {"It will terminate for any starting non-negative integer n", "It calls itself once per step (linear recursion)", "It prints numbers from n down to 1 before printing done", "It requires n to be a list"},
    "Answer" -> {"It will terminate for any starting non-negative integer n", "It calls itself once per step (linear recursion)", "It prints numbers from n down to 1 before printing done"},
    "Explanation" -> "Each call decreases n by 1 until it's <= 0, so it terminates for any non-negative starting integer, calling itself once per step and printing n, n-1, ..., 1 before printing done.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-blank-beg-5",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"base case", "empty list"},
    "Question" -> "Complete the base case for a recursive function that returns whether a list is empty.",
    "Template" -> "isEmpty[{}] := ____",
    "Hint" -> "What truth value describes an empty list, when asked if it's empty?",
    "Answer" -> "True",
    "Explanation" -> "isEmpty[{}] := True directly states that the empty list is empty; a separate rule handles non-empty lists.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-code-beg-5",
    "Topic" -> "Recursion",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"list recursion", "membership"},
    "Question" -> "Write a recursive function listContains that returns True if target appears anywhere in list, False otherwise.",
    "Template" -> "listContains[{}, target_] := ___;\nlistContains[list_, target_] := ___",
    "Hint" -> "Compare First[list] to target; if it doesn't match, recurse on Rest[list].",
    "TestCases" -> {{{{1, 2, 3}, 2}, True}, {{{1, 2, 3}, 5}, False}, {{{}, 1}, False}},
    "SampleAnswer" -> "listContains[{}, target_] := False;\nlistContains[list_, target_] := If[First[list] === target, True, listContains[Rest[list], target]]",
    "Explanation" -> "The empty list can never contain target (base case False); otherwise check the first element, falling back to searching the rest of the list.",
    "Points" -> 3
  |>,

  (* ---- INTERMEDIATE (round 5) ---- *)

  <|
    "ID" -> "rec-mcq-single-int-5",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Fold", "functional alternative"},
    "Question" -> "Which built-in function provides a functional (non-recursive) way to accumulate a result across a list, similar to what a hand-written recursive \"sum\" function does?",
    "Options" -> {"Fold", "Head", "Length", "Part"},
    "Answer" -> "Fold",
    "Explanation" -> "Fold[f, init, list] threads an accumulator through the list using f, achieving the same kind of accumulation a hand-written recursive sum function would, without writing explicit recursion.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-mcq-multi-int-5",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"accumulator", "optional argument"},
    "Question" -> "Which of the following are true about using an optional accumulator parameter, like sumAcc[list_, acc_:0], in a recursive definition?",
    "Options" -> {"Callers can invoke sumAcc[list] without specifying the accumulator, letting it default to 0", "The accumulator carries the running result forward through each call", "This pattern is a step toward tail-recursive style", "Optional parameters cannot be used in recursive functions"},
    "Answer" -> {"Callers can invoke sumAcc[list] without specifying the accumulator, letting it default to 0", "The accumulator carries the running result forward through each call", "This pattern is a step toward tail-recursive style"},
    "Explanation" -> "An optional accumulator parameter defaults to a starting value (like 0) so callers don't need to supply it, while it threads the running result through each recursive call in a tail-recursive style.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-blank-int-5",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"accumulator", "tail recursion"},
    "Question" -> "Complete the accumulator-based recursive case for summing a list.",
    "Template" -> "sumAcc[{}, acc_] := acc;\nsumAcc[list_, acc_] := sumAcc[Rest[list], ____]",
    "Hint" -> "Add the current first element to the accumulator before recursing.",
    "Answer" -> "acc + First[list]",
    "Explanation" -> "Each call adds the current first element to the accumulator before recursing on the rest of the list, so the final result is ready as soon as the list is empty.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-code-int-5",
    "Topic" -> "Recursion",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"accumulator", "tail recursion", "optional argument"},
    "Question" -> "Write a function sumAcc that takes a list and an accumulator (defaulting to 0) and returns the sum of the list using accumulator-based (tail-recursive style) recursion.",
    "Template" -> "sumAcc[{}, acc_:0] := ___;\nsumAcc[list_, acc_:0] := ___",
    "Hint" -> "Add First[list] to acc and recurse on Rest[list]; the base case just returns acc.",
    "TestCases" -> {{{{1, 2, 3}}, 6}, {{{}}, 0}, {{{5, 5}}, 10}},
    "SampleAnswer" -> "sumAcc[{}, acc_:0] := acc;\nsumAcc[list_, acc_:0] := sumAcc[Rest[list], acc + First[list]]",
    "Explanation" -> "Each call folds the current first element into the accumulator before recursing, so the base case simply returns the fully-accumulated result.",
    "Points" -> 4
  |>,

  (* ---- ADVANCED (round 5) ---- *)

  <|
    "ID" -> "rec-mcq-single-adv-5",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"halting problem", "undecidability"},
    "Question" -> "Why can't Mathematica (or any system) automatically determine, for an arbitrary recursive function and input, whether it will terminate?",
    "Options" -> {"This is related to the halting problem \[LongDash] termination of arbitrary programs is undecidable in general", "Mathematica always terminates every computation successfully", "It's a hardware limitation that will be fixed in future versions", "Recursive functions always terminate by definition"},
    "Answer" -> "This is related to the halting problem \[LongDash] termination of arbitrary programs is undecidable in general",
    "Explanation" -> "Determining whether an arbitrary program (including an arbitrary recursive function) halts on a given input is the halting problem, which is provably undecidable in general \[LongDash] no algorithm can decide this for all possible programs.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rec-mcq-multi-adv-5",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"function composition", "higher-order recursion"},
    "Question" -> "Which of the following are true about a recursive function that builds up and returns a composed function (e.g., composing n copies of a function f)?",
    "Options" -> {"repeatFn[f_, 0] := Identity; repeatFn[f_, n_] := f @* repeatFn[f, n-1] recursively composes f with itself n times", "The base case can return the identity function, representing zero applications", "Composition (@*) can be built up recursively just like numeric or list results", "Functions can never be the result of a recursive function in Mathematica"},
    "Answer" -> {"repeatFn[f_, 0] := Identity; repeatFn[f_, n_] := f @* repeatFn[f, n-1] recursively composes f with itself n times", "The base case can return the identity function, representing zero applications", "Composition (@*) can be built up recursively just like numeric or list results"},
    "Explanation" -> "A recursive function can return composed functions just as easily as numbers or lists; here the base case returns Identity (zero applications) and each recursive step composes one more copy of f.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rec-blank-adv-5",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"function composition", "higher-order recursion"},
    "Question" -> "Complete the recursive case that composes f with itself n times.",
    "Template" -> "repeatFn[f_, 0] := Identity;\nrepeatFn[f_, n_] := ____",
    "Hint" -> "Compose f with the result of repeatFn[f, n-1] using @*.",
    "Answer" -> "f @* repeatFn[f, n - 1]",
    "Explanation" -> "Composing f with the result of repeatFn[f, n-1] builds up n total applications of f, with the base case (Identity) representing zero applications.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "rec-code-adv-5",
    "Topic" -> "Recursion",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"higher-order recursion", "repeated application"},
    "Question" -> "Write a function repeatFn that takes a function f, a non-negative integer n, and a starting value x, and returns the result of applying f to x, n times in a row.",
    "Template" -> "repeatFn[f_, 0, x_] := ___;\nrepeatFn[f_, n_, x_] := ___",
    "Hint" -> "The base case returns x unchanged. Otherwise apply f to the result of repeatFn[f, n-1, x].",
    "TestCases" -> {{{(#+1)&, 3, 5}, 8}, {{(2#)&, 0, 5}, 5}, {{(#^2)&, 2, 2}, 16}},
    "SampleAnswer" -> "repeatFn[f_, 0, x_] := x;\nrepeatFn[f_, n_, x_] := f[repeatFn[f, n - 1, x]]",
    "Explanation" -> "The base case (n=0) returns x unchanged (zero applications); each recursive step applies f once more to the result of one fewer application.",
    "Points" -> 5
  |>

};
