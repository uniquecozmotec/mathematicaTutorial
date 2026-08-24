ClearAll[iterationQuestions];
iterationQuestions = {

  (* ---------------- BEGINNER ---------------- *)

  <|
    "ID"           -> "it-mcq-single-beg-1",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Nest"},
    "Question"     -> "What does Nest[f, x, 3] compute?",
    "Options"      -> {"f[f[f[x]]]", "{x, f[x], f[f[x]], f[f[f[x]]]}", "f[x]", "3*f[x]"},
    "Answer"       -> "f[f[f[x]]]",
    "Explanation"  -> "Nest applies f three times in a row to x and returns only the final result.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "it-mcq-single-beg-2",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"NestList", "length"},
    "Question"     -> "How many elements does NestList[f, x, 4] return?",
    "Options"      -> {"5", "4", "3", "1"},
    "Answer"       -> "5",
    "Explanation"  -> "NestList keeps every intermediate value including the starting one, so n steps produce n plus one elements.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "it-mcq-multi-beg-1",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"Nest", "NestList"},
    "Question"     -> "Which statements about Nest and NestList are true?",
    "Options"      -> {"Nest returns only the final value", "NestList returns every intermediate value", "Both take a function, a starting value, and a count", "Nest requires the function to take two arguments"},
    "Answer"       -> {"Nest returns only the final value", "NestList returns every intermediate value", "Both take a function, a starting value, and a count"},
    "Explanation"  -> "The function passed to Nest or NestList takes one argument: the current value. It is applied repeatedly to its own output.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "it-mcq-multi-beg-2",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"Nest", "base case"},
    "Question"     -> "Which are true of Nest[f, x, 0]?",
    "Options"      -> {"It returns x unchanged", "f is never applied", "It raises an error", "It returns f[x]"},
    "Answer"       -> {"It returns x unchanged", "f is never applied"},
    "Explanation"  -> "A count of zero is the natural base case: the starting value is returned as it is, with no need for special-case handling.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "it-blank-beg-1",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"Nest"},
    "Question"     -> "Complete so that the result of squaring 2 twice, giving 16, is produced.",
    "Template"     -> "Nest[#^2 &, 2, ___]",
    "Hint"         -> "2 squared is 4, and 4 squared is 16 -- how many applications is that?",
    "Answer"       -> 2,
    "Explanation"  -> "Nest[#^2 &, 2, 2] squares twice: 2 becomes 4, then 4 becomes 16.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "it-blank-beg-2",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"NestList"},
    "Question"     -> "Complete so that the result is {1, 3, 9, 27}.",
    "Template"     -> "NestList[#*___ &, 1, 3]",
    "Hint"         -> "Each term is three times the one before it.",
    "Answer"       -> 3,
    "Explanation"  -> "NestList[#*3 &, 1, 3] gives {1, 3, 9, 27}: the starting value 1 followed by three multiplications by 3.",
    "Points"       -> 1
  |>,

  <|
    "ID"            -> "it-code-beg-1",
    "Topic"         -> "Nest and FixedPoint",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Nest"},
    "Question"      -> "Write a function of two arguments that doubles a number n times, using Nest.",
    "Template"      -> "doubleNTimes[x_, n_] := ___",
    "Hint"          -> "The function passed to Nest should double its argument.",
    "TestCases"     -> {{{1, 3}, 8}, {{5, 0}, 5}, {{2, 2}, 8}, {{10, 1}, 20}},
    "SampleAnswer"  -> "doubleNTimes[x_, n_] := Nest[#*2 &, x, n]",
    "Explanation"   -> "Nest applies the doubling function n times. With n = 0 the starting value is returned untouched.",
    "Points"        -> 3
  |>,

  <|
    "ID"            -> "it-code-beg-2",
    "Topic"         -> "Nest and FixedPoint",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"NestList"},
    "Question"      -> "Write a function that returns the first n+1 powers of 2 starting from 1, so n = 3 gives {1, 2, 4, 8}.",
    "Template"      -> "powersOfTwo[n_] := ___",
    "Hint"          -> "Start from 1 and repeatedly multiply by 2, keeping every step.",
    "TestCases"     -> {{3, {1, 2, 4, 8}}, {0, {1}}, {1, {1, 2}}, {5, {1, 2, 4, 8, 16, 32}}},
    "SampleAnswer"  -> "powersOfTwo[n_] := NestList[#*2 &, 1, n]",
    "Explanation"   -> "NestList keeps the starting value 1 along with every doubled result, giving n+1 elements in total.",
    "Points"        -> 3
  |>,

  (* ---------------- INTERMEDIATE ---------------- *)

  <|
    "ID"           -> "it-mcq-single-int-1",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"FixedPoint"},
    "Question"     -> "What does FixedPoint do differently from Nest?",
    "Options"      -> {"It stops when applying the function again produces the same value", "It applies the function a fixed number of times", "It only works on numbers", "It returns every intermediate value"},
    "Answer"       -> "It stops when applying the function again produces the same value",
    "Explanation"  -> "FixedPoint keeps applying the function until the result stops changing, rather than for a count fixed in advance.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "it-mcq-single-int-2",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"NestWhile"},
    "Question"     -> "When does NestWhile[f, x, test] stop applying f?",
    "Options"      -> {"As soon as test on the current value returns False", "After a fixed number of steps", "As soon as the value repeats", "It never stops"},
    "Answer"       -> "As soon as test on the current value returns False",
    "Explanation"  -> "NestWhile checks the test before each application and stops the first time it fails, returning the value that failed the test.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "it-mcq-multi-int-1",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"FixedPoint", "risk"},
    "Question"     -> "Which statements about FixedPoint are true?",
    "Options"      -> {"It compares consecutive values for exact sameness", "A step limit can be supplied as a third argument", "An oscillating computation will never settle without a limit", "It always terminates by default"},
    "Answer"       -> {"It compares consecutive values for exact sameness", "A step limit can be supplied as a third argument", "An oscillating computation will never settle without a limit"},
    "Explanation"  -> "A function that oscillates between two values, or keeps changing forever, will not reach a fixed point, so supplying a maximum number of steps is a safeguard worth using when convergence is not certain.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "it-mcq-multi-int-2",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"FixedPointList"},
    "Question"     -> "Which statements about FixedPointList are true?",
    "Options"      -> {"It records every value up to and including the point of convergence", "The last two elements of its result are equal", "It never terminates", "It is useful for checking that a computation actually converged"},
    "Answer"       -> {"It records every value up to and including the point of convergence", "The last two elements of its result are equal", "It is useful for checking that a computation actually converged"},
    "Explanation"  -> "The final two entries being equal is exactly the condition that ended the iteration, which makes FixedPointList a way to confirm convergence happened rather than assume it.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "it-blank-int-1",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"NestWhile"},
    "Question"     -> "Complete so that halving continues only while the value is even.",
    "Template"     -> "NestWhile[#/2 &, 80, ___]",
    "Hint"         -> "The test should be a function that returns True for even numbers.",
    "Answer"       -> "EvenQ",
    "Explanation"  -> "NestWhile[#/2 &, 80, EvenQ] halves 80 while the result stays even, stopping at the first odd value.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "it-blank-int-2",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"FixedPoint", "rules"},
    "Question"     -> "Complete so that the rule is applied repeatedly until nothing changes.",
    "Template"     -> "___[# /. f[t_] :> t &, f[f[f[x]]]]",
    "Hint"         -> "The result should keep peeling off f until no more f remains.",
    "Answer"       -> "FixedPoint",
    "Explanation"  -> "FixedPoint applies the replacement over and over, which is exactly what //. does with rewrite rules directly.",
    "Points"       -> 2
  |>,

  <|
    "ID"            -> "it-code-int-1",
    "Topic"         -> "Nest and FixedPoint",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"NestWhileList", "Collatz"},
    "Question"      -> "Write a function that returns the Collatz sequence from n down to 1: halve if even, otherwise triple and add one.",
    "Template"      -> "collatz[n_] := ___",
    "Hint"          -> "NestWhileList continues while the current value is not yet 1.",
    "TestCases"     -> {{6, {6, 3, 10, 5, 16, 8, 4, 2, 1}}, {1, {1}}, {2, {2, 1}}},
    "SampleAnswer"  -> "collatz[n_] := NestWhileList[If[EvenQ[#], #/2, 3*# + 1] &, n, # != 1 &]",
    "Explanation"   -> "The test is checked before each step, so the sequence stops as soon as it reaches 1 rather than continuing past it.",
    "Points"        -> 4
  |>,

  <|
    "ID"            -> "it-code-int-2",
    "Topic"         -> "Nest and FixedPoint",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"FixedPoint", "Newton's method"},
    "Question"      -> "Write a function that approximates the square root of x using Newton's method, starting the iteration from 1.0.",
    "Template"      -> "mySqrt[x_] := ___",
    "Hint"          -> "Each step should average the current guess with x divided by the current guess.",
    "TestCases"     -> {{4.0, 2.0}, {9.0, 3.0}, {2.0, 1.4142135623730951`}},
    "SampleAnswer"  -> "mySqrt[x_] := FixedPoint[(# + x/#)/2 &, 1.0]",
    "Explanation"   -> "Each iteration is a step of Newton's method for the square root, and the process is run until two consecutive guesses agree.",
    "Points"        -> 4
  |>,

  (* ---------------- ADVANCED ---------------- *)

  <|
    "ID"           -> "it-mcq-single-adv-1",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"NestWhile", "test timing"},
    "Question"     -> "NestWhile[f, x, test] applies its test to the value before or after f runs?",
    "Options"      -> {"Before, so the result is the first value that failed the test", "After, so the result is the last value that passed the test", "Both before and after", "Neither; the test only checks the count of steps"},
    "Answer"       -> "Before, so the result is the first value that failed the test",
    "Explanation"  -> "The test is checked on the current value before deciding whether to apply f again, so the value NestWhile returns is always the first one the test rejected.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "it-mcq-single-adv-2",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"FixedPoint", "step limit"},
    "Question"     -> "What does FixedPoint[# + 1 &, 0, 5] return?",
    "Options"      -> {"5", "1", "0", "It never terminates"},
    "Answer"       -> "5",
    "Explanation"  -> "This function never settles, since adding one always changes the value. The step limit of 5 stops the iteration after five applications and returns what it has, which is 5.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "it-mcq-multi-adv-1",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"recursion equivalence"},
    "Question"     -> "Which statements correctly compare NestList to an equivalent recursive definition?",
    "Options"      -> {"Both can compute the same sequence of values", "NestList states the iteration directly, without a named helper or a base case", "A recursive version needs an explicit base case for zero steps", "Recursion cannot express repeated application of a function"},
    "Answer"       -> {"Both can compute the same sequence of values", "NestList states the iteration directly, without a named helper or a base case", "A recursive version needs an explicit base case for zero steps"},
    "Explanation"  -> "Recursion can express the same computation, but needs its own base case and a name; NestList expresses the same repeated application without either, in a single expression.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "it-mcq-multi-adv-2",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"convergence"},
    "Question"     -> "Which situations are genuine risks when using FixedPoint without a step limit?",
    "Options"      -> {"A computation that oscillates between two values", "A computation using machine precision numbers that settles normally", "A rule that always produces a new match when rewritten", "A computation that converges after ten steps"},
    "Answer"       -> {"A computation that oscillates between two values", "A rule that always produces a new match when rewritten"},
    "Explanation"  -> "Anything that keeps changing forever, whether by oscillating or by always matching a further rewrite, never reaches the exact sameness FixedPoint is waiting for.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "it-blank-adv-1",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"NestWhileList", "termination"},
    "Question"     -> "Complete the test so the sequence includes the first value that is no longer positive.",
    "Template"     -> "NestWhileList[# - 3 &, 10, ___]",
    "Hint"         -> "The iteration should continue only while the value is still positive.",
    "Answer"       -> "# > 0 &",
    "Explanation"  -> "The test is checked before each step, so the value that first fails it, which is not positive, is still included as the final entry of the returned list.",
    "Points"       -> 3
  |>,

  <|
    "ID"           -> "it-blank-adv-2",
    "Topic"        -> "Nest and FixedPoint",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"bottom-up", "Fibonacci"},
    "Question"     -> "Complete the pair-update rule so that NestList computes Fibonacci numbers bottom-up.",
    "Template"     -> "NestList[{#[[2]], #[[1]] + ___} &, {0, 1}, 10]",
    "Hint"         -> "The new second element should be the sum of the current pair.",
    "Answer"       -> "#[[2]]",
    "Explanation"  -> "Each step carries the pair {previous, current} forward, shifting current into previous and producing the next Fibonacci number as the new current.",
    "Points"       -> 3
  |>,

  <|
    "ID"            -> "it-code-adv-1",
    "Topic"         -> "Nest and FixedPoint",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"NestList", "Fibonacci", "bottom-up"},
    "Question"      -> "Write a function that returns the nth Fibonacci number (0-indexed, so fibN[0] = 0 and fibN[1] = 1), computed bottom-up with NestList rather than by recursion.",
    "Template"      -> "fibN[n_] := ___",
    "Hint"          -> "Carry a pair of consecutive Fibonacci numbers forward n times, then take the first element of the final pair.",
    "TestCases"     -> {{0, 0}, {1, 1}, {10, 55}, {20, 6765}},
    "SampleAnswer"  -> "fibN[n_] := First[Nest[{#[[2]], #[[1]] + #[[2]]} &, {0, 1}, n]]",
    "Explanation"   -> "Each application advances the pair by one Fibonacci step, so after n applications the first element of the pair is the nth Fibonacci number, computed with constant memory and no recursion.",
    "Points"        -> 5
  |>,

  <|
    "ID"            -> "it-code-adv-2",
    "Topic"         -> "Nest and FixedPoint",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"FixedPoint", "digit sum"},
    "Question"      -> "Write a function that repeatedly sums the digits of a positive integer until a single digit remains, known as the digital root.",
    "Template"      -> "digitRoot[n_] := ___",
    "Hint"          -> "Repeat summing digits until the value stops changing, which happens exactly when it is already a single digit.",
    "TestCases"     -> {{9875, 2}, {5, 5}, {99, 9}, {123, 6}},
    "SampleAnswer"  -> "digitRoot[n_] := FixedPoint[Total[IntegerDigits[#]] &, n]",
    "Explanation"   -> "A number equal to the sum of its own digits is exactly a single-digit number, so the fixed point of this rule is the digital root by construction.",
    "Points"        -> 5
  |>

};
