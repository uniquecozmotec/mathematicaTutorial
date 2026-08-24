ClearAll[functionQuestions];
functionQuestions = {


  <|
    "ID"           "func-mcq-single-beg-1",
    "Topic"        "Functions",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Single",
    "Tags"         {"SetDelayed", "function definition"},
    "Question"     "What is the difference between = (Set) and := (SetDelayed) when defining a function?",
    "Options"      {"There is no difference", "= evaluates the right side immediately and stores the result; := stores the right side unevaluated", "= is for variables only; := is for functions only", ":= is faster than ="},
    "Answer"       "= evaluates the right side immediately and stores the result; := stores the right side unevaluated",
    "Explanation"  "Set (=) evaluates the right-hand side once at definition time. SetDelayed (:=) re-evaluates the right-hand side every time the function is called.",
    "Points"       1
  |>,

  <|
    "ID"           "func-mcq-multi-beg-1",
    "Topic"        "Functions",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Multiple",
    "Tags"         {"function definition", "pure function"},
    "Question"     "Which of the following are valid ways to define a function in Mathematica?",
    "Options"      {"f[x_] := x^2", "f = Function[x, x^2]", "f[x_] = x^2", "f := x^2 always"},
    "Answer"       {"f[x_] := x^2", "f = Function[x, x^2]", "f[x_] = x^2"},
    "Explanation"  "f[x_] := x^2 and f[x_] = x^2 are both valid pattern-based definitions, and Function explicitly builds a pure function. The fourth option is not valid syntax for defining a function with an argument.",
    "Points"       2
  |>,

  <|
    "ID"           "func-blank-beg-1",
    "Topic"        "Functions",
    "Difficulty"   "Beginner",
    "Type"         "Blanks",
    "Tags"         {"function definition"},
    "Question"     "Complete the function definition for square, which returns the square of its argument.",
    "Template"     "square[x_] ____ x^2",
    "Hint"         "Use the delayed assignment operator so the body is recomputed for each call.",
    "Answer"       ":=",
    "Explanation"  "square[x_] := x^2 defines square using SetDelayed, so x^2 is recomputed for each new x.",
    "Points"       1
  |>,

  <|
    "ID"            "func-code-beg-1",
    "Topic"         "Functions",
    "Difficulty"    "Beginner",
    "Type"          "Code Writing",
    "Tags"          {"function definition", "multiple arguments"},
    "Question"      "Write a function add3 that takes three numbers and returns their sum.",
    "Template"      "add3[a_, b_, c_] := ____",
    "Hint"          "Simply add the three parameters together.",
    "TestCases"     {{{1, 2, 3}, 6}, {{0, 0, 5}, 5}, {{-1, 1, 1}, 1}},
    "SampleAnswer"  "add3[a_, b_, c_] := a + b + c",
    "Explanation"   "Each named blank a_, b_, c_ binds to one of the three arguments, which are then summed.",
    "Points"        3
  |>,

  

  <|
    "ID"           "func-mcq-single-int-1",
    "Topic"        "Functions",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Single",
    "Tags"         {"default arguments", "Optional"},
    "Question"     "What does f[x_, y_:10] := x + y allow?",
    "Options"      {"y must always be provided", "y defaults to 10 if not provided", "x defaults to 10 if not provided", "This is invalid syntax"},
    "Answer"       "y defaults to 10 if not provided",
    "Explanation"  "y_:10 is an optional pattern with default value 10, so f[5] returns 15 without needing a second argument.",
    "Points"       1
  |>,

  <|
    "ID"           "func-mcq-multi-int-1",
    "Topic"        "Functions",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Multiple",
    "Tags"         {"pure function", "anonymous function"},
    "Question"     "Which of the following are equivalent ways to write a pure function that squares its input?",
    "Options"      {"Function[x, x^2]", "#^2 &", "x_ -> x^2", "x \\[Function] x^2"},
    "Answer"       {"Function[x, x^2]", "#^2 &"},
    "Explanation"  "Function[x, x^2] and #^2 & are both valid pure function syntax. x_ -> x^2 is a replacement rule, not a function, and the unicode arrow form is not standard Mathematica syntax for this.",
    "Points"       2
  |>,

  <|
    "ID"           "func-blank-int-1",
    "Topic"        "Functions",
    "Difficulty"   "Intermediate",
    "Type"         "Blanks",
    "Tags"         {"pure function", "shorthand"},
    "Question"     "Complete the pure function shorthand that adds 1 to its argument.",
    "Template"     "(# ____ 1) &",
    "Hint"         "# refers to the function's argument in shorthand pure function syntax.",
    "Answer"       "+",
    "Explanation"  "(# + 1) & is a pure function that adds 1 to whatever is passed to it via #.",
    "Points"       2
  |>,

  <|
    "ID"            "func-code-int-1",
    "Topic"         "Functions",
    "Difficulty"    "Intermediate",
    "Type"          "Code Writing",
    "Tags"          {"default arguments", "Optional"},
    "Question"      "Write a function power that takes a base and an optional exponent (default 2), returning base raised to the exponent.",
    "Template"      "power[base_, exp_:____] := ____",
    "Hint"          "Use the Optional pattern y_:default for the exponent parameter.",
    "TestCases"     {{{3}, 9}, {{2, 3}, 8}, {{5, 0}, 1}},
    "SampleAnswer"  "power[base_, exp_:2] := base^exp",
    "Explanation"   "exp_:2 makes the second argument optional with a default value of 2 when omitted.",
    "Points"        4
  |>,

  

  <|
    "ID"           "func-mcq-single-adv-1",
    "Topic"        "Functions",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Single",
    "Tags"         {"overloading", "multiple definitions", "specificity"},
    "Question"     "If f[x_Integer] := \"int\" and f[x_] := \"general\" are both defined, what does f[3] return?",
    "Options"      {"\"general\"", "\"int\"", "Both are returned", "An error occurs"},
    "Answer"       "\"int\"",
    "Explanation"  "Mathematica tries the most specific pattern first. x_Integer is more specific than x_, so it matches first for integer input.",
    "Points"       1
  |>,

  <|
    "ID"           "func-mcq-multi-adv-1",
    "Topic"        "Functions",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Multiple",
    "Tags"         {"HoldAll", "attributes", "evaluation"},
    "Question"     "Which statements about function attributes like HoldAll are correct?",
    "Options"      {"HoldAll prevents arguments from being evaluated before the function body runs", "Attributes are set using SetAttributes", "All functions have HoldAll by default", "Listable causes a function to automatically thread over lists"},
    "Answer"       {"HoldAll prevents arguments from being evaluated before the function body runs", "Attributes are set using SetAttributes", "Listable causes a function to automatically thread over lists"},
    "Explanation"  "HoldAll and Listable are attributes set via SetAttributes. By default, functions evaluate their arguments first (standard evaluation), not HoldAll.",
    "Points"       2
  |>,

  <|
    "ID"           "func-blank-adv-1",
    "Topic"        "Functions",
    "Difficulty"   "Advanced",
    "Type"         "Blanks",
    "Tags"         {"attributes", "SetAttributes", "Listable"},
    "Question"     "Complete the statement that makes the function addOne automatically thread over lists.",
    "Template"     "SetAttributes[addOne, ____]",
    "Hint"         "There is a specific attribute that makes a function apply itself to each element of a list automatically.",
    "Answer"       "Listable",
    "Explanation"  "SetAttributes[addOne, Listable] makes addOne[{1,2,3}] automatically return {addOne[1], addOne[2], addOne[3]}.",
    "Points"       3
  |>,

  <|
    "ID"            "func-code-adv-1",
    "Topic"         "Functions",
    "Difficulty"    "Advanced",
    "Type"          "Code Writing",
    "Tags"          {"overloading", "multiple definitions", "specificity"},
    "Question"      "Write a function describe that returns \"empty list\" for {}, \"single element\" for a one-element list, and \"multiple elements\" for any other list.",
    "Template"      "describe[{}] := ____\ndescribe[{x_}] := ____\ndescribe[list_List] := ____",
    "Hint"          "Define the most specific patterns first: empty list, then single-element list, then the general case.",
    "TestCases"     {{{}, "empty list"}, {{5}, "single element"}, {{1, 2, 3}, "multiple elements"}},
    "SampleAnswer"  "describe[{}] := \"empty list\"\ndescribe[{x_}] := \"single element\"\ndescribe[list_List] := \"multiple elements\"",
    "Explanation"   "Mathematica matches the most specific pattern first, so the empty and single-element cases are caught before falling through to the general list pattern.",
    "Points"        5
  |>,

  (* ---- BEGINNER (added) ---- *)

  <|
    "ID" -> "func-mcq-single-beg-2",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"pure function", "Slot"},
    "Question" -> "What does # refer to inside a pure function like #^2 &?",
    "Options" -> {"The name of the function", "The first (or only) argument passed to the pure function", "The previous output %", "Nothing, # is optional syntax with no meaning"},
    "Answer" -> "The first (or only) argument passed to the pure function",
    "Explanation" -> "# is a slot that refers to the argument passed when the pure function is applied; #^2 & squares whatever value fills that slot.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-mcq-multi-beg-2",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"CompoundExpression", "function body"},
    "Question" -> "Which of the following are true about a function body written as (a = x; a + 1) using semicolons?",
    "Options" -> {"f[x_] := (a = x; a + 1) returns the value of the last statement", "Semicolons separate statements evaluated in sequence", "Only the first statement's value is ever returned", "This CompoundExpression style can only be used inside Module"},
    "Answer" -> {"f[x_] := (a = x; a + 1) returns the value of the last statement", "Semicolons separate statements evaluated in sequence"},
    "Explanation" -> "A parenthesized, semicolon-separated sequence evaluates each expression in order and returns the value of the last one; this works anywhere, not only inside Module.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-blank-beg-2",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"named pattern", "function header"},
    "Question" -> "Complete the function header so cube accepts exactly one argument named n.",
    "Template" -> "cube[____] := n^3",
    "Hint" -> "Use a named blank so the argument is bound to n, matching the body.",
    "Answer" -> "n_",
    "Explanation" -> "n_ is a named blank that binds the single argument to n, matching the reference to n in the body.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-code-beg-2",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"predicate function", "EvenQ"},
    "Question" -> "Write a function isEven that returns True if a number is even, False otherwise.",
    "Template" -> "isEven[n_] := ____",
    "Hint" -> "EvenQ is a built-in predicate that tests exactly this.",
    "TestCases" -> {{4, True}, {7, False}, {0, True}},
    "SampleAnswer" -> "isEven[n_] := EvenQ[n]",
    "Explanation" -> "EvenQ[n] returns True exactly when n is evenly divisible by 2, which is exactly what defines an even number.",
    "Points" -> 3
  |>,

  (* ---- INTERMEDIATE (added) ---- *)

  <|
    "ID" -> "func-mcq-single-int-2",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Module", "local variables", "scoping"},
    "Question" -> "Why should a function generally use Module for temporary local variables instead of bare global assignments?",
    "Options" -> {"Module makes the function run faster", "Module scopes variables locally so they don't leak into or clash with the global context", "Module is required syntactically for all function definitions", "Module prevents functions from taking arguments"},
    "Answer" -> "Module scopes variables locally so they don't leak into or clash with the global context",
    "Explanation" -> "Module creates fresh, local instances of its listed variables for each call, preventing accidental interaction with global symbols of the same name.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-mcq-multi-int-2",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Module", "Block", "scoping"},
    "Question" -> "Which of the following correctly distinguish Module from Block?",
    "Options" -> {"Module renames local variables to fresh symbols to avoid collisions", "Block temporarily overrides the global value of a variable by name, without renaming", "Module and Block behave identically in all cases", "Block is typically used for dynamically scoped values like $RecursionLimit"},
    "Answer" -> {"Module renames local variables to fresh symbols to avoid collisions", "Block temporarily overrides the global value of a variable by name, without renaming", "Block is typically used for dynamically scoped values like $RecursionLimit"},
    "Explanation" -> "Module uses lexical scoping via automatically renamed symbols (like x$123), while Block uses dynamic scoping, temporarily replacing a symbol's global value without renaming it \[LongDash] useful for system variables like $RecursionLimit.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-blank-int-2",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"Module", "return value"},
    "Question" -> "Complete the definition so area computes width*height using a local variable scoped with Module.",
    "Template" -> "area[w_, h_] := Module[{result}, result = w * h; ____]",
    "Hint" -> "The last expression in a Module body is what gets returned.",
    "Answer" -> "result",
    "Explanation" -> "The last expression in a Module body is its return value, so ending with result returns the locally computed value.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-code-int-2",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"Module", "local variables"},
    "Question" -> "Write a function average that takes two numbers and returns their average, storing the sum in a local variable via Module before dividing.",
    "Template" -> "average[a_, b_] := Module[{total}, ____]",
    "Hint" -> "Assign the sum to total first, then divide it by 2 as the last expression.",
    "TestCases" -> {{{4, 6}, 5}, {{0, 10}, 5}, {{3, 3}, 3}},
    "SampleAnswer" -> "average[a_, b_] := Module[{total}, total = a + b; total/2]",
    "Explanation" -> "Module creates a local variable total to hold the sum, then the final expression divides it by 2 to compute the average.",
    "Points" -> 4
  |>,

  (* ---- ADVANCED (added) ---- *)

  <|
    "ID" -> "func-mcq-single-adv-2",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Orderless", "attributes"},
    "Question" -> "What does the Orderless attribute do when set on a function f?",
    "Options" -> {"It sorts f's arguments into a canonical order automatically, similar to how Plus and Times behave", "It prevents f from being redefined", "It makes f evaluate its arguments in reverse order", "It has no functional effect, purely cosmetic"},
    "Answer" -> "It sorts f's arguments into a canonical order automatically, similar to how Plus and Times behave",
    "Explanation" -> "Orderless tells Mathematica the function's arguments can be freely reordered into a canonical form, exactly how Plus and Times already behave by default.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-mcq-multi-adv-2",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Nest", "FixedPoint", "functional iteration"},
    "Question" -> "Which of the following are true about using functional iteration (Nest, NestList, FixedPoint) instead of writing an explicit recursive function?",
    "Options" -> {"Nest[f, x, n] applies f to x n times without needing a named recursive function", "FixedPoint[f, x] repeatedly applies f until the result stops changing", "These functions can only be used with numeric arguments", "NestList returns the full list of intermediate results, not just the final one"},
    "Answer" -> {"Nest[f, x, n] applies f to x n times without needing a named recursive function", "FixedPoint[f, x] repeatedly applies f until the result stops changing", "NestList returns the full list of intermediate results, not just the final one"},
    "Explanation" -> "Nest, NestList, and FixedPoint provide built-in functional iteration that can replace many hand-written recursive functions, and none of them are restricted to numeric arguments.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-blank-adv-2",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Nest", "functional iteration"},
    "Question" -> "Complete the call that squares 2 three times in a row using Nest (computing ((2^2)^2)^2).",
    "Template" -> "Nest[#^2 &, 2, ____]",
    "Hint" -> "Nest[f, x, n] applies f exactly n times.",
    "Answer" -> "3",
    "Explanation" -> "Nest[f, x, n] applies f to x exactly n times; here n = 3 applies the squaring pure function three times.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "func-code-adv-2",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Nest", "functional iteration"},
    "Question" -> "Write a function repeatedSquare that takes a starting number x and a count n, and returns the result of squaring x, n times in a row, using Nest.",
    "Template" -> "repeatedSquare[x_, n_] := ____",
    "Hint" -> "Nest[#^2 &, x, n] applies the squaring pure function n times to x.",
    "TestCases" -> {{{2, 3}, 256}, {{3, 2}, 81}, {{5, 0}, 5}},
    "SampleAnswer" -> "repeatedSquare[x_, n_] := Nest[#^2 &, x, n]",
    "Explanation" -> "Nest applies the squaring pure function to x exactly n times, chaining the result of each application into the next.",
    "Points" -> 5
  |>,

  (* ================= BEGINNER (rounds 3-5) ================= *)

  <|
    "ID" -> "func-mcq-single-beg-3",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"pure function", "Function"},
    "Question" -> "Which of the following defines the same pure function as (#+1)&?",
    "Options" -> {"Function[x, x+1]", "Function[x_, x+1]", "x -> x+1", "#+1"},
    "Answer" -> "Function[x, x+1]",
    "Explanation" -> "Function[x, x+1] and (#+1)& are two equivalent ways to write the same pure function; Function's parameter is a plain symbol, not a pattern.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-mcq-multi-beg-3",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"DownValues", "symbol"},
    "Question" -> "Which of the following are true about how Mathematica stores a function definition like f[x_] := x^2?",
    "Options" -> {"It attaches a DownValue to the symbol f", "f itself is just an ordinary symbol until you attach definitions to it", "Definitions can be inspected using ?f or DownValues[f]", "Function definitions are stored completely separately from ordinary symbols"},
    "Answer" -> {"It attaches a DownValue to the symbol f", "f itself is just an ordinary symbol until you attach definitions to it", "Definitions can be inspected using ?f or DownValues[f]"},
    "Explanation" -> "A function definition like f[x_]:=x^2 attaches a DownValue to the symbol f; f is otherwise an ordinary symbol, and its definitions can be inspected via ?f or DownValues[f].",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-blank-beg-3",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"Times", "function body"},
    "Question" -> "Complete the definition, using the built-in Times function explicitly, so triple returns 3 times its argument.",
    "Template" -> "triple[x_] := Times[3, ____]",
    "Hint" -> "What is being multiplied by 3?",
    "Answer" -> "x",
    "Explanation" -> "Times[3, x] explicitly multiplies 3 by x; combined with the outer definition this returns three times the argument.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-code-beg-3",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"comparison", "predicate function"},
    "Question" -> "Write a function isPositive that returns True if its argument is greater than 0, False otherwise, using a simple comparison (no If needed).",
    "Template" -> "isPositive[n_] := ___",
    "Hint" -> "A comparison operator by itself already evaluates to True or False.",
    "TestCases" -> {{5, True}, {-3, False}, {0, False}},
    "SampleAnswer" -> "isPositive[n_] := n > 0",
    "Explanation" -> "n > 0 evaluates directly to True or False, so no If is needed to define this predicate.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "func-mcq-single-beg-4",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"multiple return values", "List"},
    "Question" -> "How can a Mathematica function return what feels like \"two values\" at once?",
    "Options" -> {"By returning a List containing both values, like {val1, val2}", "Mathematica functions can only ever return one value, never two", "By using the Return[] function twice", "By defining two separate functions with the same name"},
    "Answer" -> "By returning a List containing both values, like {val1, val2}",
    "Explanation" -> "Since a function can return any single expression, wrapping multiple values in a List, like {val1, val2}, is the standard way to return what feels like multiple results.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-mcq-multi-beg-4",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"naming convention"},
    "Question" -> "Which of the following are true about naming your own functions in Mathematica?",
    "Options" -> {"Built-in Mathematica functions start with a capital letter, so user functions are often named starting lowercase to avoid confusion", "User-defined function names can technically start with a capital letter too, though it risks colliding with a built-in", "Function names cannot contain numbers at all", "Mathematica enforces that user functions must start with lowercase letters"},
    "Answer" -> {"Built-in Mathematica functions start with a capital letter, so user functions are often named starting lowercase to avoid confusion", "User-defined function names can technically start with a capital letter too, though it risks colliding with a built-in"},
    "Explanation" -> "By convention (not strict enforcement), user-defined functions are named starting with a lowercase letter to avoid clashing with built-in capitalized names; this is a style convention, not a hard rule enforced by the language.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-blank-beg-4",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"StringJoin", "string concatenation"},
    "Question" -> "Complete the definition so greetPerson returns a personalized greeting string.",
    "Template" -> "greetPerson[name_] := \"Hello, \" <> ____",
    "Hint" -> "Concatenate the argument itself.",
    "Answer" -> "name",
    "Explanation" -> "StringJoin (<>) concatenates the literal greeting text with the value bound to name.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-code-beg-4",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"If", "comparison"},
    "Question" -> "Write a function absoluteValue that returns the absolute value of a number, using a comparison and If (not the built-in Abs).",
    "Template" -> "absoluteValue[n_] := If[____, n, -n]",
    "Hint" -> "If n is already non-negative, return it as-is; otherwise return its negation.",
    "TestCases" -> {{5, 5}, {-3, 3}, {0, 0}},
    "SampleAnswer" -> "absoluteValue[n_] := If[n >= 0, n, -n]",
    "Explanation" -> "When n is non-negative it's returned unchanged; otherwise -n flips a negative number to its positive counterpart.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "func-mcq-single-beg-5",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"postfix", "//"},
    "Question" -> "What does 5 // f mean?",
    "Options" -> {"f[5], applying f to 5 using postfix notation", "5 divided by f", "It defines a new function called f", "It is invalid syntax"},
    "Answer" -> "f[5], applying f to 5 using postfix notation",
    "Explanation" -> "// is postfix application: expr // f is exactly equivalent to f[expr], just written with the function after its argument.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-mcq-multi-beg-5",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"function application", "prefix", "postfix"},
    "Question" -> "Which of the following are equivalent ways to apply the function square to 5?",
    "Options" -> {"square[5]", "5 // square", "square @ 5", "5 @ square"},
    "Answer" -> {"square[5]", "5 // square", "square @ 5"},
    "Explanation" -> "square[5], 5 // square (postfix), and square @ 5 (prefix @) are all equivalent ways to apply square to 5; 5 @ square has the argument and function reversed and is not valid for this purpose.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-blank-beg-5",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"prefix application"},
    "Question" -> "Complete the prefix-application call that applies square to 5, using @.",
    "Template" -> "square ____ 5",
    "Hint" -> "This is the prefix form, the opposite of postfix (//).",
    "Answer" -> "@",
    "Explanation" -> "square @ 5 is prefix notation, equivalent to square[5].",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-code-beg-5",
    "Topic" -> "Functions",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"Power"},
    "Question" -> "Write a function cube that returns its argument raised to the third power, calling the built-in Power function explicitly (not using ^).",
    "Template" -> "cube[n_] := Power[____]",
    "Hint" -> "Power takes the base and the exponent as separate arguments.",
    "TestCases" -> {{2, 8}, {3, 27}, {1, 1}},
    "SampleAnswer" -> "cube[n_] := Power[n, 3]",
    "Explanation" -> "Power[n, 3] is exactly what the ^ operator expands to internally; both compute n raised to the third power.",
    "Points" -> 3
  |>,

  (* ================= INTERMEDIATE (rounds 3-5) ================= *)

  <|
    "ID" -> "func-mcq-single-int-3",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"With", "Module", "scoping"},
    "Question" -> "How does With differ from Module for introducing local constants?",
    "Options" -> {"With substitutes its values immediately and doesn't create new variable instances the way Module does; it's meant for constants, not values that change", "With is identical to Module in every way", "With cannot be nested", "With is only used for pure functions"},
    "Answer" -> "With substitutes its values immediately and doesn't create new variable instances the way Module does; it's meant for constants, not values that change",
    "Explanation" -> "With performs an immediate, one-time substitution of its constants into the body, making it ideal for values that won't be reassigned, unlike Module which creates genuinely mutable local variables.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-mcq-multi-int-3",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Set", "SetDelayed", "evaluation timing"},
    "Question" -> "Given r[x_] = RandomReal[] (using Set) versus r2[x_] := RandomReal[] (using SetDelayed), which of the following are true?",
    "Options" -> {"r[x_] evaluates RandomReal[] once, at definition time, so every call to r returns the same fixed random number", "r2[x_] evaluates RandomReal[] fresh every time it's called, so calls can return different numbers", "Both behave identically", "Set (=) evaluates the right-hand side immediately; SetDelayed (:=) re-evaluates it on every call"},
    "Answer" -> {"r[x_] evaluates RandomReal[] once, at definition time, so every call to r returns the same fixed random number", "r2[x_] evaluates RandomReal[] fresh every time it's called, so calls can return different numbers", "Set (=) evaluates the right-hand side immediately; SetDelayed (:=) re-evaluates it on every call"},
    "Explanation" -> "This is a classic demonstration of Set vs SetDelayed: Set evaluates the right-hand side once and freezes the result, while SetDelayed re-evaluates it fresh on every call, so random or time-dependent expressions behave very differently depending on which you use.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-blank-int-3",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"With", "constant"},
    "Question" -> "Complete the definition so circleArea uses With to name the constant Pi locally as pi.",
    "Template" -> "circleArea[r_] := With[{pi = ____}, pi * r^2]",
    "Hint" -> "What built-in constant represents the ratio of a circle's circumference to its diameter?",
    "Answer" -> "Pi",
    "Explanation" -> "With substitutes pi with the constant Pi immediately, so pi*r^2 computes the circle's area using Pi.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-code-int-3",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"With", "constant"},
    "Question" -> "Write a function cylinderVolume that takes a radius r and a height h, and returns the volume of a cylinder (Pi * r^2 * h), using With to name the constant Pi locally as p.",
    "Template" -> "cylinderVolume[r_, h_] := With[{p = Pi}, ___]",
    "Hint" -> "Multiply p by r^2 and by h.",
    "TestCases" -> {{{1, 1}, Pi}, {{2, 3}, 12*Pi}},
    "SampleAnswer" -> "cylinderVolume[r_, h_] := With[{p = Pi}, p*r^2*h]",
    "Explanation" -> "With substitutes p with Pi immediately, so p*r^2*h computes the cylinder's volume using the exact symbolic constant Pi.",
    "Points" -> 4
  |>,

  <|
    "ID" -> "func-mcq-single-int-4",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"pure function", "Slot"},
    "Question" -> "In a pure function like #1 + #2 &, what do #1 and #2 refer to?",
    "Options" -> {"The first and second arguments passed to the pure function", "Always 1 and 2 literally", "The function's name and its argument", "There is no such thing as #2"},
    "Answer" -> "The first and second arguments passed to the pure function",
    "Explanation" -> "#1 and #2 (or just # and #2) refer to the first and second arguments supplied when the pure function is applied to multiple values.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-mcq-multi-int-4",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"memoization"},
    "Question" -> "Which of the following are true about the memoization pattern f[x_] := f[x] = expensiveComputation[x]?",
    "Options" -> {"The first time f is called with a particular x, the result is computed and also stored as a new rule for that specific x", "Subsequent calls with the same x return instantly, since a specific rule now exists for it", "This pattern works for any expensive, purely deterministic computation, not just recursive ones", "It requires the function to be recursive"},
    "Answer" -> {"The first time f is called with a particular x, the result is computed and also stored as a new rule for that specific x", "Subsequent calls with the same x return instantly, since a specific rule now exists for it", "This pattern works for any expensive, purely deterministic computation, not just recursive ones"},
    "Explanation" -> "Memoization via f[x_] := f[x] = ... caches results for specific inputs by creating a new, more specific rule each time; this works for any deterministic expensive computation, recursive or not.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-blank-int-4",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"memoization"},
    "Question" -> "Complete the memoization pattern for a generic slow function.",
    "Template" -> "slowSquare[x_] := slowSquare[x] = ____",
    "Hint" -> "What is being cached \[LongDash] the square of x.",
    "Answer" -> "x^2",
    "Explanation" -> "Assigning x^2 back to slowSquare[x] caches the result for that specific x, so future calls with the same x skip recomputation.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-code-int-4",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"memoization", "triangular numbers"},
    "Question" -> "Write a function memoTriangular that computes the nth triangular number (the sum of 1 through n) using the memoization pattern f[x_] := f[x] = ....",
    "Template" -> "memoTriangular[0] := ___;\nmemoTriangular[n_] := memoTriangular[n] = ___",
    "Hint" -> "Add n to the memoized result of memoTriangular[n-1].",
    "TestCases" -> {{0, 0}, {4, 10}, {10, 55}},
    "SampleAnswer" -> "memoTriangular[0] := 0;\nmemoTriangular[n_] := memoTriangular[n] = n + memoTriangular[n - 1]",
    "Explanation" -> "Each call caches its own result while adding n to the memoized sum for n-1, building up the running total 0, 1, 3, 6, 10, ....",
    "Points" -> 4
  |>,

  <|
    "ID" -> "func-mcq-single-int-5",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"pure function", "side effects"},
    "Question" -> "What does it mean for a function to be \"pure\" in the functional-programming sense (not to be confused with Mathematica's #& pure-function syntax)?",
    "Options" -> {"Its output depends only on its inputs, with no side effects like modifying global state or printing", "It must be written using the # and & syntax", "It can only take one argument", "It must use recursion"},
    "Answer" -> "Its output depends only on its inputs, with no side effects like modifying global state or printing",
    "Explanation" -> "A pure function (in the functional-programming sense) always produces the same output for the same input and has no side effects \[LongDash] distinct from Mathematica's #& syntax, which is an unrelated use of the word \"pure\".",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-mcq-multi-int-5",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"operator form", "currying"},
    "Question" -> "Which of the following are true about writing a call in \"operator form\", like Plus[2] representing \"add 2 to something\"?",
    "Options" -> {"Plus[2][3] evaluates to 5, since Plus[2] acts as an operator waiting for one more argument", "This pattern is sometimes called partial application or currying", "Every Mathematica function automatically supports operator form", "Operator forms are commonly used with Map, e.g. Map[f]"},
    "Answer" -> {"Plus[2][3] evaluates to 5, since Plus[2] acts as an operator waiting for one more argument", "This pattern is sometimes called partial application or currying", "Operator forms are commonly used with Map, e.g. Map[f]"},
    "Explanation" -> "Some built-in functions support an \"operator form\" (partial application/currying) where supplying fewer arguments returns something waiting for the rest; not every function supports this automatically.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-blank-int-5",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"operator form"},
    "Question" -> "Complete the operator-form call that adds 2 to 3.",
    "Template" -> "____[2][3]",
    "Hint" -> "Which built-in function's operator form is being used here?",
    "Answer" -> "Plus",
    "Explanation" -> "Plus[2][3] uses Plus's operator form, adding 2 to 3 to give 5.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-code-int-5",
    "Topic" -> "Functions",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"pure function", "currying"},
    "Question" -> "Write a function addN that builds a pure function which adds n to its argument, then immediately applies that pure function to x, returning the result.",
    "Template" -> "addN[n_, x_] := ___",
    "Hint" -> "Build the pure function (n + #) & and apply it to x with [x].",
    "TestCases" -> {{{5, 3}, 8}, {{10, 0}, 10}, {{-2, 5}, 3}},
    "SampleAnswer" -> "addN[n_, x_] := (n + #) &[x]",
    "Explanation" -> "(n + #) & builds a pure function that adds n to whatever it's given; applying it to x with [x] immediately produces n + x.",
    "Points" -> 4
  |>,

  (* ================= ADVANCED (rounds 3-5) ================= *)

  <|
    "ID" -> "func-mcq-single-adv-3",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Protect", "Unprotect"},
    "Question" -> "What must you do before you can redefine or Clear a Protected built-in symbol?",
    "Options" -> {"Nothing, Protected symbols can always be redefined freely", "Call Unprotect on the symbol first", "Restart the kernel", "It's impossible to ever change a Protected symbol"},
    "Answer" -> "Call Unprotect on the symbol first",
    "Explanation" -> "Protected symbols (including most built-ins) refuse new definitions or Clear until Unprotect is called on them first, guarding against accidental redefinition.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-mcq-multi-adv-3",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"HoldFirst", "HoldRest", "HoldAll", "attributes"},
    "Question" -> "Which of the following correctly distinguish HoldFirst, HoldRest, and HoldAll?",
    "Options" -> {"HoldFirst prevents only the first argument from being evaluated before the function runs", "HoldRest prevents all arguments except the first from being evaluated", "HoldAll prevents every argument from being evaluated", "These three attributes all behave identically"},
    "Answer" -> {"HoldFirst prevents only the first argument from being evaluated before the function runs", "HoldRest prevents all arguments except the first from being evaluated", "HoldAll prevents every argument from being evaluated"},
    "Explanation" -> "HoldFirst, HoldRest, and HoldAll each control which arguments are shielded from automatic evaluation before the function body runs, with HoldAll being the most restrictive of the three.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-blank-adv-3",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Unprotect"},
    "Question" -> "Complete the call that removes protection from a symbol so it can be redefined.",
    "Template" -> "____[mySymbol]",
    "Hint" -> "This is the opposite of Protect.",
    "Answer" -> "Unprotect",
    "Explanation" -> "Unprotect[mySymbol] removes the Protected attribute so the symbol can be freely redefined or cleared.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "func-code-adv-3",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Check", "error handling"},
    "Question" -> "Write a function safeDivide that uses Check to return $Failed when dividing by zero, instead of returning an unevaluated or infinite expression.",
    "Template" -> "safeDivide[a_, b_] := Check[___, $Failed]",
    "Hint" -> "Check[expr, failValue] returns failValue if evaluating expr generated any messages.",
    "TestCases" -> {{{10, 2}, 5}, {{5, 0}, $Failed}, {{9, 3}, 3}},
    "SampleAnswer" -> "safeDivide[a_, b_] := Check[a/b, $Failed]",
    "Explanation" -> "Dividing by zero generates a message (Power::infy), which Check catches, returning $Failed instead of the normal division result.",
    "Points" -> 5
  |>,

  <|
    "ID" -> "func-mcq-single-adv-4",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Sequence", "splicing"},
    "Question" -> "What does Sequence[a, b, c] do when it appears as an argument inside another function call, like f[Sequence[a,b,c]]?",
    "Options" -> {"It's spliced in as three separate arguments, equivalent to f[a,b,c]", "It's passed as a single List argument {a,b,c}", "It causes an error", "It's ignored entirely"},
    "Answer" -> "It's spliced in as three separate arguments, equivalent to f[a,b,c]",
    "Explanation" -> "Sequence[a,b,c] automatically splices its contents into the surrounding expression as separate arguments, so f[Sequence[a,b,c]] behaves exactly like f[a,b,c].",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-mcq-multi-adv-4",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Apply", "Sequence", "splicing"},
    "Question" -> "Which of the following correctly splice the elements of {1,2,3} as three separate arguments to f?",
    "Options" -> {"f @@ {1,2,3}", "Apply[f, {1,2,3}]", "f[Sequence @@ {1,2,3}]", "f[{1,2,3}]"},
    "Answer" -> {"f @@ {1,2,3}", "Apply[f, {1,2,3}]", "f[Sequence @@ {1,2,3}]"},
    "Explanation" -> "Apply (@@) replaces the list's head with f directly, while Sequence @@ {1,2,3} splices the elements as separate arguments inside an existing f[...] call; f[{1,2,3}] instead passes the whole list as one argument, which is different.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-blank-adv-4",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Sequence", "splicing"},
    "Question" -> "Complete the call that splices the elements of {1,2,3} as separate arguments inside f[...], using Sequence.",
    "Template" -> "f[____ @@ {1, 2, 3}]",
    "Hint" -> "This function splices a list's elements into separate arguments.",
    "Answer" -> "Sequence",
    "Explanation" -> "Sequence @@ {1,2,3} splices the list's elements in as separate arguments, so f[Sequence @@ {1,2,3}] behaves like f[1,2,3].",
    "Points" -> 3
  |>,

  <|
    "ID" -> "func-code-adv-4",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Apply", "splicing"},
    "Question" -> "Write a function callWithArgs that takes a function f and a list of arguments args, and calls f with those arguments spliced in separately (not as one list argument).",
    "Template" -> "callWithArgs[f_, args_] := ___",
    "Hint" -> "Apply (@@) splices a list's elements in as f's separate arguments.",
    "TestCases" -> {{{Plus, {1, 2, 3}}, 6}, {{Times, {2, 3, 4}}, 24}, {{List, {1, 2}}, {1, 2}}},
    "SampleAnswer" -> "callWithArgs[f_, args_] := f @@ args",
    "Explanation" -> "f @@ args replaces the head of args (List) with f, splicing its elements in as f's separate arguments.",
    "Points" -> 5
  |>,

  <|
    "ID" -> "func-mcq-single-adv-5",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Compile", "performance"},
    "Question" -> "What is the purpose of wrapping a numerical function definition with Compile?",
    "Options" -> {"Compile translates the function into a lower-level, faster-executing form for numerical evaluation, at the cost of flexibility with symbolic input", "Compile makes the function symbolic instead of numeric", "Compile is required for all function definitions", "Compile prevents the function from ever being called"},
    "Answer" -> "Compile translates the function into a lower-level, faster-executing form for numerical evaluation, at the cost of flexibility with symbolic input",
    "Explanation" -> "Compile converts a function into a form that can run much faster for purely numerical inputs, trading away the ability to handle symbolic or exact input flexibly.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "func-mcq-multi-adv-5",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Throw", "Catch", "non-local exit"},
    "Question" -> "Which of the following are true about Throw and Catch?",
    "Options" -> {"Throw[value] immediately exits the computation, up to the nearest enclosing Catch", "Catch[expr] returns the thrown value if a Throw occurred inside expr, or the normal result of expr otherwise", "Throw and Catch can be used to exit early from deeply nested loops or recursive calls", "Throw always causes an error"},
    "Answer" -> {"Throw[value] immediately exits the computation, up to the nearest enclosing Catch", "Catch[expr] returns the thrown value if a Throw occurred inside expr, or the normal result of expr otherwise", "Throw and Catch can be used to exit early from deeply nested loops or recursive calls"},
    "Explanation" -> "Throw/Catch provide a non-local exit mechanism: Throw immediately jumps to the nearest enclosing Catch, which is useful for escaping deeply nested computations early.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "func-blank-adv-5",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Catch"},
    "Question" -> "Complete the call that catches a value thrown from deep inside expr.",
    "Template" -> "____[expr]",
    "Hint" -> "This is the counterpart to Throw.",
    "Answer" -> "Catch",
    "Explanation" -> "Catch[expr] captures any value thrown via Throw from within expr's evaluation.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "func-code-adv-5",
    "Topic" -> "Functions",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Throw", "Catch", "Scan"},
    "Question" -> "Write a function findFirstNegative that returns the first negative number in a list, or Null if there are none, using Throw and Catch to exit as soon as one is found.",
    "Template" -> "findFirstNegative[list_] := Catch[___]",
    "Hint" -> "Scan the list, Throw-ing the element as soon as one is found to be negative; end with Null for the no-match case.",
    "TestCases" -> {{{1, 2, -3, 4}, -3}, {{1, 2, 3}, Null}, {{-5, 1, 2}, -5}},
    "SampleAnswer" -> "findFirstNegative[list_] := Catch[Scan[If[# < 0, Throw[#]] &, list]; Null]",
    "Explanation" -> "Scan checks each element in order, immediately Throw-ing (and exiting via Catch) the first negative one found; if none are negative, Scan finishes normally and the trailing Null is returned.",
    "Points" -> 5
  |>

};
