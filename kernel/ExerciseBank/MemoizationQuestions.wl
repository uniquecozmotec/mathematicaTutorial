ClearAll[memoizationQuestions];
memoizationQuestions = {

  (* ---------------- BEGINNER ---------------- *)

  <|
    "ID"           -> "mz-mcq-single-beg-1",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"purpose"},
    "Question"     -> "What is the purpose of memoization?",
    "Options"      -> {"To remember results so they are not recomputed", "To make a function's arguments optional", "To restrict what type a function accepts", "To sort the output of a function"},
    "Answer"       -> "To remember results so they are not recomputed",
    "Explanation"  -> "Memoization stores the result of a computation the first time it is done, so a later request for the same result is a lookup rather than a recomputation.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "mz-mcq-single-beg-2",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"idiom"},
    "Question"     -> "Which pattern is the standard memoization idiom in the Wolfram Language?",
    "Options"      -> {"f[n_] := f[n] = body", "f[n_] = f[n] := body", "f[n_] := body := f[n]", "Memoize[f[n_] := body]"},
    "Answer"       -> "f[n_] := f[n] = body",
    "Explanation"  -> "The outer := delays the whole definition, while the inner = stores the computed value as a new, more specific definition the first time it runs.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "mz-mcq-multi-beg-1",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"naive recursion"},
    "Question"     -> "Which statements about naive recursive Fibonacci are true?",
    "Options"      -> {"It recomputes the same values many times", "Its running time grows exponentially with n", "It gives the wrong answer for large n", "Memoization fixes its speed without changing its answers"},
    "Answer"       -> {"It recomputes the same values many times", "Its running time grows exponentially with n", "Memoization fixes its speed without changing its answers"},
    "Explanation"  -> "The naive version is correct, only slow, because the same subproblems are solved repeatedly. Memoization changes how fast the answer arrives, not what the answer is.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "mz-mcq-multi-beg-2",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"DownValues"},
    "Question"     -> "Which statements about a memoized function's stored values are true?",
    "Options"      -> {"They are ordinary definitions, visible via DownValues", "There is one stored definition per distinct argument computed so far", "They disappear automatically once the notebook is saved", "Clear removes them"},
    "Answer"       -> {"They are ordinary definitions, visible via DownValues", "There is one stored definition per distinct argument computed so far", "Clear removes them"},
    "Explanation"  -> "A remembered value is nothing more than a rule the function added to itself, so it shows up in DownValues and persists until the symbol is cleared.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "mz-blank-beg-1",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"idiom"},
    "Question"     -> "Complete the memoized definition of factorial.",
    "Template"     -> "fact[0] = 1;\nfact[n_] := fact[n] ___ n*fact[n - 1]",
    "Hint"         -> "The value must be assigned back to fact[n], not just returned.",
    "Answer"       -> "=",
    "Explanation"  -> "fact[n] = n*fact[n-1] stores the computed value as a new definition for that particular n, which is what makes it memoized rather than plain recursion.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "mz-blank-beg-2",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"inspection"},
    "Question"     -> "Complete so that the stored definitions of fib can be inspected.",
    "Template"     -> "___[fib]",
    "Hint"         -> "This function lists every rule currently defined for a symbol.",
    "Answer"       -> "DownValues",
    "Explanation"  -> "DownValues[fib] lists every stored rule for fib, including both the general definition and every memoized value computed so far.",
    "Points"       -> 1
  |>,

  <|
    "ID"            -> "mz-code-beg-1",
    "Topic"         -> "DP / Memoization",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"memoized recursion"},
    "Question"      -> "Write a memoized recursive function computing the nth Fibonacci number, with fib[0] = 0 and fib[1] = 1.",
    "Template"      -> "fib[0] = ___;\nfib[1] = ___;\nfib[n_Integer] := fib[n] = ___",
    "Hint"         -> "The recursive case should assign fib[n-1] + fib[n-2] back to fib[n].",
    "TestCases"     -> {{0, 0}, {1, 1}, {10, 55}, {30, 832040}},
    "SampleAnswer"  -> "fib[0] = 0;\nfib[1] = 1;\nfib[n_Integer] := fib[n] = fib[n - 1] + fib[n - 2]",
    "Explanation"   -> "Assigning the result back to fib[n] means each value is computed once no matter how many times it is asked for again, which is what lets fib[30] return immediately.",
    "Points"        -> 3
  |>,

  <|
    "ID"            -> "mz-code-beg-2",
    "Topic"         -> "DP / Memoization",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"memoized recursion"},
    "Question"      -> "Write a memoized recursive function that computes 2 raised to the power n, for non-negative integer n, using the rule power[n] = 2*power[n-1].",
    "Template"      -> "powerOfTwo[0] = ___;\npowerOfTwo[n_Integer] := powerOfTwo[n] = ___",
    "Hint"         -> "The base case is 2^0 = 1.",
    "TestCases"     -> {{0, 1}, {1, 2}, {5, 32}, {10, 1024}},
    "SampleAnswer"  -> "powerOfTwo[0] = 1;\npowerOfTwo[n_Integer] := powerOfTwo[n] = 2*powerOfTwo[n - 1]",
    "Explanation"   -> "Each call stores its own result, so a later call for the same or a smaller n never recomputes it.",
    "Points"        -> 3
  |>,

  (* ---------------- INTERMEDIATE ---------------- *)

  <|
    "ID"           -> "mz-mcq-single-int-1",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"benchmarking pitfall"},
    "Question"     -> "A memoized function is timed twice in a row on the same argument. What does the second timing actually measure?",
    "Options"      -> {"A lookup, not a computation", "The same computation as the first timing", "An error, since the value is already defined", "Twice the work of the first timing"},
    "Answer"       -> "A lookup, not a computation",
    "Explanation"  -> "After the first call, the answer for that argument is already a stored definition, so the second call just retrieves it. Benchmarking a memoized function requires a freshly cleared copy.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "mz-mcq-single-int-2",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"editing a memoized function"},
    "Question"     -> "A memoized function g is redefined with a new rule, without clearing g first. What happens when g is called again on an argument it had already memoized?",
    "Options"      -> {"The old stored value is returned, because it is more specific than the new rule", "The new rule is used, since it was defined more recently", "An error is raised for the conflicting definitions", "Both rules run and their results are combined"},
    "Answer"       -> "The old stored value is returned, because it is more specific than the new rule",
    "Explanation"  -> "A memoized value is a definition for one exact argument, which is more specific than any general pattern, so it continues to be matched first regardless of when the new rule was added.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "mz-mcq-multi-int-1",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"trade-offs"},
    "Question"     -> "Which statements about the trade-offs of memoization are true?",
    "Options"      -> {"It trades memory for speed", "A function called on many distinct arguments accumulates many stored definitions", "It only helps when the same arguments recur", "It has no cost at all"},
    "Answer"       -> {"It trades memory for speed", "A function called on many distinct arguments accumulates many stored definitions", "It only helps when the same arguments recur"},
    "Explanation"  -> "A recursion that never revisits a subproblem gains no speed from memoizing it, and still pays the cost of storing every result.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "mz-mcq-multi-int-2",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"grid paths"},
    "Question"     -> "In counting paths through a grid with paths[m, n] = paths[m-1, n] + paths[m, n-1], which statements are true?",
    "Options"      -> {"The subproblems overlap heavily", "Memoization avoids recomputing the same cell from different paths", "Each cell's value should be stored once computed", "Every call computes a completely new subproblem"},
    "Answer"       -> {"The subproblems overlap heavily", "Memoization avoids recomputing the same cell from different paths", "Each cell's value should be stored once computed"},
    "Explanation"  -> "An interior cell is reached from both the cell above it and the cell to its left, so without memoization its own value would be computed twice, and this compounds across the grid.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "mz-blank-int-1",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"clearing"},
    "Question"     -> "Complete so that both the memoized values and the rule for h are removed before redefining it.",
    "Template"     -> "___[h];\nh[n_] := h[n] = 2*n;",
    "Hint"         -> "One function removes every definition attached to a symbol.",
    "Answer"       -> "Clear",
    "Explanation"  -> "Clear removes every stored definition for the symbol, both the general rule and any memoized values, so the function can be redefined cleanly.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "mz-blank-int-2",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"grid paths", "memoized recursion"},
    "Question"     -> "Complete the memoized recursion for counting grid paths.",
    "Template"     -> "paths[1, _] := 1;\npaths[_, 1] := 1;\npaths[m_, n_] := paths[m, n] ___ paths[m - 1, n] + paths[m, n - 1]",
    "Hint"         -> "The result must be assigned back to paths[m, n].",
    "Answer"       -> "=",
    "Explanation"  -> "Assigning back to paths[m, n] stores each cell's value once it is computed, which is what makes the recursion tractable on a grid of any reasonable size.",
    "Points"       -> 2
  |>,

  <|
    "ID"            -> "mz-code-int-1",
    "Topic"         -> "DP / Memoization",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"grid paths", "memoized recursion"},
    "Question"      -> "Write a memoized function paths[m, n] giving the number of routes from one corner of an m by n grid to the opposite corner, moving only right or down.",
    "Template"      -> "paths[1, _] := 1;\npaths[_, 1] := 1;\npaths[m_Integer, n_Integer] := ___",
    "Hint"         -> "Each interior cell's count is the sum of the cell above it and the cell to its left.",
    "TestCases"     -> {{{1, 1}, 1}, {{2, 2}, 2}, {{3, 3}, 6}, {{4, 3}, 10}},
    "SampleAnswer"  -> "paths[m_Integer, n_Integer] := paths[m, n] = paths[m - 1, n] + paths[m, n - 1]",
    "Explanation"   -> "The two given base cases cover the top row and left column, and the memoized recursive rule fills in the rest without recomputation.",
    "Points"        -> 4
  |>,

  <|
    "ID"            -> "mz-code-int-2",
    "Topic"         -> "DP / Memoization",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"climbing stairs", "memoized recursion"},
    "Question"      -> "A staircase can be climbed taking 1 or 2 steps at a time. Write a memoized function ways[n] giving the number of distinct ways to climb n steps. ways[0] should be 1, representing the single way to climb zero steps: do nothing.",
    "Template"      -> "ways[0] = 1;\nways[1] = 1;\nways[n_Integer] := ___",
    "Hint"         -> "The last step taken is either a single step from n-1, or a double step from n-2.",
    "TestCases"     -> {{0, 1}, {1, 1}, {2, 2}, {5, 8}, {10, 89}},
    "SampleAnswer"  -> "ways[n_Integer] := ways[n] = ways[n - 1] + ways[n - 2]",
    "Explanation"   -> "This is the Fibonacci recurrence in disguise: every path to step n arrives either from n-1 or n-2, and memoization is what keeps ways[10] fast.",
    "Points"        -> 4
  |>,

  (* ---------------- ADVANCED ---------------- *)

  <|
    "ID"           -> "mz-mcq-single-adv-1",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"top-down vs bottom-up"},
    "Question"     -> "What is the key difference between top-down memoized recursion and a bottom-up dynamic programming table?",
    "Options"      -> {"Top-down computes only the subproblems actually needed; bottom-up fills in every one in order", "Top-down is always faster", "Bottom-up cannot be written in the Wolfram Language", "They always use the same amount of memory"},
    "Answer"       -> "Top-down computes only the subproblems actually needed; bottom-up fills in every one in order",
    "Explanation"  -> "Top-down starts from the answer wanted and lets recursion decide what is needed. Bottom-up builds every subproblem from the smallest upward, typically using a plain loop or NestList and no stored definitions.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "mz-mcq-single-adv-2",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Pascal's rule"},
    "Question"     -> "In binom[n_, n_] := 1, why is the pattern variable named n twice rather than using a separate name like k?",
    "Options"      -> {"So the rule only matches when both arguments are equal", "It is a typo and has no effect", "So the rule matches any two arguments", "Named patterns must always repeat"},
    "Answer"       -> "So the rule only matches when both arguments are equal",
    "Explanation"  -> "Using the same pattern name twice requires both occurrences to match the same value, which is how the diagonal edge of Pascal's triangle is expressed without writing an explicit condition.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "mz-mcq-multi-adv-1",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"choosing an approach"},
    "Question"     -> "Which statements about choosing between top-down and bottom-up are true?",
    "Options"      -> {"Bottom-up avoids filling the session with stored definitions", "Top-down avoids computing subproblems that are never needed", "Bottom-up is usually better when most subproblems are needed anyway", "Top-down is impossible for any grid or table problem"},
    "Answer"       -> {"Bottom-up avoids filling the session with stored definitions", "Top-down avoids computing subproblems that are never needed", "Bottom-up is usually better when most subproblems are needed anyway"},
    "Explanation"  -> "Neither approach dominates the other; the right choice depends on whether the full table of subproblems is likely to be needed or only a scattered few.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "mz-mcq-multi-adv-2",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"correctness"},
    "Question"     -> "Which statements about memoization and correctness are true?",
    "Options"      -> {"Memoization does not change what a correct function computes", "Memoizing an incorrect function produces incorrect stored values just as fast", "Stale stored values after an edit can make correct source code behave incorrectly", "Memoization guarantees a function is correct"},
    "Answer"       -> {"Memoization does not change what a correct function computes", "Memoizing an incorrect function produces incorrect stored values just as fast", "Stale stored values after an edit can make correct source code behave incorrectly"},
    "Explanation"  -> "Memoization only affects speed. Whether the underlying recursion is correct is a separate question, and stale values left over from before an edit can make even correct new source code give a wrong answer until cleared.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "mz-blank-adv-1",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"bottom-up"},
    "Question"     -> "Complete the bottom-up alternative to memoized Fibonacci, which uses no stored definitions at all.",
    "Template"     -> "Last[___[{#[[2]], #[[1]] + #[[2]]} &, {0, 1}, 30]]",
    "Hint"         -> "This function repeatedly applies a rule and keeps every intermediate result.",
    "Answer"       -> "NestList",
    "Explanation"  -> "NestList builds the whole sequence of pairs bottom-up in one expression, using constant memory per step and no DownValues at all, unlike the memoized version.",
    "Points"       -> 3
  |>,

  <|
    "ID"           -> "mz-blank-adv-2",
    "Topic"        -> "DP / Memoization",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"stale values"},
    "Question"     -> "A memoized function is redefined without clearing, and now returns stale answers. Complete the fix.",
    "Template"     -> "___[g];\ng[n_] := g[n] = newBody[n];",
    "Hint"         -> "The stored values need to be removed, not just the general rule replaced.",
    "Answer"       -> "Clear",
    "Explanation"  -> "Clear removes both the old general rule and every memoized value that was stored under it, which is the only way to guarantee the redefinition takes full effect.",
    "Points"       -> 3
  |>,

  <|
    "ID"            -> "mz-code-adv-1",
    "Topic"         -> "DP / Memoization",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"coin change", "memoized recursion"},
    "Question"      -> "Given a fixed list of coin denominations coins = {1, 2, 5}, write a memoized function minCoins[amount] giving the fewest coins needed to make that amount exactly. minCoins[0] should be 0.",
    "Template"      -> "coins = {1, 2, 5};\nminCoins[0] = 0;\nminCoins[amount_Integer] := ___",
    "Hint"         -> "Try using each coin no larger than the amount as the last coin, and take the option using the fewest coins overall.",
    "TestCases"     -> {{0, 0}, {3, 2}, {11, 3}, {7, 2}},
    "SampleAnswer"  -> "minCoins[amount_Integer] := minCoins[amount] = 1 + Min[Map[minCoins[amount - #] &, Select[coins, # <= amount &]]]",
    "Explanation"   -> "Every valid last coin gives a candidate count of one plus the best count for the remaining amount, and Min picks the cheapest option. Memoization is what makes the overlapping remainders affordable to explore.",
    "Points"        -> 5
  |>,

  <|
    "ID"            -> "mz-code-adv-2",
    "Topic"         -> "DP / Memoization",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"longest common subsequence", "memoized recursion"},
    "Question"      -> "Write a memoized function lcsLen[a, b] giving the length of the longest common subsequence of two strings, using the standard recursion: if the last characters match, the answer is 1 plus lcsLen on both strings shortened by one; otherwise it is the better of shortening either string by one.",
    "Template"      -> "lcsLen[\"\", _] := 0;\nlcsLen[_, \"\"] := 0;\nlcsLen[a_String, b_String] := ___",
    "Hint"         -> "Compare the last characters with StringTake[a, -1], and shorten with StringDrop[a, -1].",
    "TestCases"     -> {{{"abcde", "ace"}, 3}, {{"abc", "abc"}, 3}, {{"abc", "def"}, 0}, {{"", "abc"}, 0}},
    "SampleAnswer"  -> "lcsLen[a_String, b_String] := lcsLen[a, b] = If[StringTake[a, -1] == StringTake[b, -1], 1 + lcsLen[StringDrop[a, -1], StringDrop[b, -1]], Max[lcsLen[StringDrop[a, -1], b], lcsLen[a, StringDrop[b, -1]]]]",
    "Explanation"   -> "The two base cases handle either string running out. The recursive case either extends a shared matching character or discards one character from whichever string offers the better remaining match, and memoization keeps the doubly-overlapping subproblems fast.",
    "Points"        -> 5
  |>

};
