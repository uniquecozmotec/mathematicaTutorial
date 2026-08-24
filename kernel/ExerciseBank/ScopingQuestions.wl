ClearAll[scopingQuestions];
scopingQuestions = {

  (* ---------------- BEGINNER ---------------- *)

  <|
    "ID"           -> "sc-mcq-single-beg-1",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Module"},
    "Question"     -> "What is the purpose of Module?",
    "Options"      -> {"To create local variables", "To define a new function", "To loop over a list", "To load a package"},
    "Answer"       -> "To create local variables",
    "Explanation"  -> "Module introduces variables that exist only while its body runs, so they cannot clash with anything of the same name elsewhere in the session.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "sc-mcq-single-beg-2",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Module", "return value"},
    "Question"     -> "What is the value of Module[{x = 5}, x^2]?",
    "Options"      -> {"25", "5", "x^2", "Null"},
    "Answer"       -> "25",
    "Explanation"  -> "The local x starts at 5, and the value of a Module is the value of the last expression in its body, so the result is 25.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "sc-mcq-multi-beg-1",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"constructs"},
    "Question"     -> "Which of the following are scoping constructs in the Wolfram Language?",
    "Options"      -> {"Module", "Block", "With", "Map"},
    "Answer"       -> {"Module", "Block", "With"},
    "Explanation"  -> "Module, Block and With are the three scoping constructs. Map applies a function to elements and has nothing to do with scope.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "sc-mcq-multi-beg-2",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"Module", "behaviour"},
    "Question"     -> "Which statements about Module are true?",
    "Options"      -> {"Local variables may be given initial values", "The value returned is that of the last expression in the body", "It renames its variables internally", "It permanently changes global variables of the same name"},
    "Answer"       -> {"Local variables may be given initial values", "The value returned is that of the last expression in the body", "It renames its variables internally"},
    "Explanation"  -> "Module renames its variables to fresh symbols such as x$123, which is precisely why a global of the same name is left untouched.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "sc-blank-beg-1",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"Module", "initial value"},
    "Question"     -> "Complete so that the result is 25.",
    "Template"     -> "Module[{x = ___}, x^2]",
    "Hint"         -> "Which starting value, when squared, gives 25?",
    "Answer"       -> 5,
    "Explanation"  -> "Module[{x = 5}, x^2] gives 25. The initial value is written with = inside the variable list.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "sc-blank-beg-2",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"Module", "declaration"},
    "Question"     -> "Complete the declaration so that the local variable is named total.",
    "Template"     -> "Module[{___ = 0}, total + 1]",
    "Hint"         -> "The name declared must match the name used in the body.",
    "Answer"       -> "total",
    "Explanation"  -> "A name used in the body must be declared in the variable list, otherwise it refers to a global symbol rather than a local one.",
    "Points"       -> 1
  |>,

  <|
    "ID"            -> "sc-code-beg-1",
    "Topic"         -> "Scoping",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Module", "accumulator"},
    "Question"      -> "Write a function that returns the sum of the integers from 1 to n, using a local accumulator inside Module.",
    "Template"      -> "sumTo[n_] := Module[{___}, ___]",
    "Hint"          -> "Declare a running total starting at 0, add each value to it with Do, then return it.",
    "TestCases"     -> {{1, 1}, {5, 15}, {10, 55}, {0, 0}},
    "SampleAnswer"  -> "sumTo[n_] := Module[{total = 0}, Do[total = total + i, {i, n}]; total]",
    "Explanation"   -> "The accumulator is local, so calling the function leaves no global symbol behind. With n = 0 the Do loop runs no iterations and the initial 0 is returned.",
    "Points"        -> 3
  |>,

  <|
    "ID"            -> "sc-code-beg-2",
    "Topic"         -> "Scoping",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"With", "constant"},
    "Question"      -> "Write a function that returns the square of its argument, using With to name the value first.",
    "Template"      -> "squareWith[x_] := With[{___}, ___]",
    "Hint"          -> "With introduces a constant. Give the argument a local name, then multiply it by itself.",
    "TestCases"     -> {{3, 9}, {0, 0}, {-4, 16}, {12, 144}},
    "SampleAnswer"  -> "squareWith[x_] := With[{v = x}, v*v]",
    "Explanation"   -> "With substitutes the value in before evaluating. It is the right choice here because the name is never reassigned.",
    "Points"        -> 3
  |>,

  (* ---------------- INTERMEDIATE ---------------- *)

  <|
    "ID"           -> "sc-mcq-single-int-1",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Module", "With", "comparison"},
    "Question"     -> "What is the essential difference between Module and With?",
    "Options"      -> {"Module creates variables that can be reassigned, while With substitutes constants", "With is faster but otherwise identical", "Module works on functions and With works on lists", "There is no difference"},
    "Answer"       -> "Module creates variables that can be reassigned, while With substitutes constants",
    "Explanation"  -> "With performs a substitution before evaluation, so its names are constants. Module creates genuine variables that can be assigned to inside the body.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "sc-mcq-single-int-2",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Module", "globals"},
    "Question"     -> "After evaluating x = 10; Module[{x = 5}, x], what is the value of the global x?",
    "Options"      -> {"10", "5", "Null", "15"},
    "Answer"       -> "10",
    "Explanation"  -> "The Module used a private symbol, so the global x was never touched and still holds 10.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "sc-mcq-multi-int-1",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"With", "semantics"},
    "Question"     -> "Which statements about With are true?",
    "Options"      -> {"Its names cannot be reassigned inside the body", "Its assignments are carried out together rather than in order", "A later assignment can refer to an earlier one in the same With", "It substitutes values before the body is evaluated"},
    "Answer"       -> {"Its names cannot be reassigned inside the body", "Its assignments are carried out together rather than in order", "It substitutes values before the body is evaluated"},
    "Explanation"  -> "Because the assignments happen simultaneously, With[{a = 1, b = a + 1}, b] does not give 2. Two nested With constructs are needed when one value depends on another.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "sc-mcq-multi-int-2",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"choosing", "Module"},
    "Question"     -> "Which situations call for Module rather than With?",
    "Options"      -> {"A counter that is incremented", "An accumulator updated inside a loop", "A fixed value used several times in the body", "Any variable that is assigned to inside the body"},
    "Answer"       -> {"A counter that is incremented", "An accumulator updated inside a loop", "Any variable that is assigned to inside the body"},
    "Explanation"  -> "A value that never changes is exactly the case for With. Anything that is assigned to needs a real variable, which is what Module provides.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "sc-blank-int-1",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"With", "nesting"},
    "Question"     -> "Complete the nested With so that the result is 2.",
    "Template"     -> "With[{a = 1}, With[{b = a + ___}, b]]",
    "Hint"         -> "The inner With sees the substitution the outer one has already made.",
    "Answer"       -> 1,
    "Explanation"  -> "Nesting is required because the assignments inside a single With happen together. Written as one With, b would not see the value of a.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "sc-blank-int-2",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"Block", "dynamic scoping"},
    "Question"     -> "Complete with the construct that temporarily changes the value of an existing global symbol.",
    "Template"     -> "___[{$RecursionLimit = 10000}, deepFunction[2000]]",
    "Hint"         -> "The change must be visible to code called from inside, and must be undone afterwards.",
    "Answer"       -> "Block",
    "Explanation"  -> "Block sets the existing symbol aside and restores it afterwards, so functions called from within see the temporary value. Module would create a private symbol the evaluator has never heard of.",
    "Points"       -> 2
  |>,

  <|
    "ID"            -> "sc-code-int-1",
    "Topic"         -> "Scoping",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Module", "counter"},
    "Question"      -> "Write a function that counts how many elements of a list are even, using a local counter inside Module.",
    "Template"      -> "countEven[lst_] := Module[{___}, ___]",
    "Hint"          -> "Start a counter at 0, walk the list with Do, and increase the counter when EvenQ is True.",
    "TestCases"     -> {{{1, 2, 3, 4}, 2}, {{1, 3}, 0}, {{}, 0}, {{2, 4, 6}, 3}},
    "SampleAnswer"  -> "countEven[lst_] := Module[{c = 0}, Do[If[EvenQ[x], c = c + 1], {x, lst}]; c]",
    "Explanation"   -> "The counter is local, so repeated calls do not interfere with one another. Count[lst, _?EvenQ] is the shorter built-in equivalent.",
    "Points"        -> 4
  |>,

  <|
    "ID"            -> "sc-code-int-2",
    "Topic"         -> "Scoping",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"With", "two arguments"},
    "Question"      -> "Write a function of two arguments that returns the length of the hypotenuse, using With to name the sum of the squares before taking its root.",
    "Template"      -> "hyp[a_, b_] := With[{___}, ___]",
    "Hint"          -> "Name a^2 + b^2 with With, then take Sqrt of that name.",
    "TestCases"     -> {{{3, 4}, 5}, {{5, 12}, 13}, {{0, 0}, 0}, {{8, 15}, 17}},
    "SampleAnswer"  -> "hyp[a_, b_] := With[{s = a^2 + b^2}, Sqrt[s]]",
    "Explanation"   -> "With names the intermediate value so it is written once rather than twice. All the test cases are Pythagorean triples, so Sqrt returns exact integers.",
    "Points"        -> 4
  |>,

  (* ---------------- ADVANCED ---------------- *)

  <|
    "ID"           -> "sc-mcq-single-adv-1",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Module", "renaming"},
    "Question"     -> "What does Module[{y}, Hold[y]] return?",
    "Options"      -> {"Hold[y$nnn], containing a renamed symbol", "Hold[y]", "y", "Null"},
    "Answer"       -> "Hold[y$nnn], containing a renamed symbol",
    "Explanation"  -> "Module does not hide the name, it creates a fresh symbol with a different name. Holding the body makes that renaming visible instead of letting it evaluate away.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "sc-mcq-single-adv-2",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Block", "dynamic scoping"},
    "Question"     -> "Given the definitions g[] := v and v = 1, what does Block[{v = 2}, g[]] return?",
    "Options"      -> {"2", "1", "v", "Null"},
    "Answer"       -> "2",
    "Explanation"  -> "Block changes the value of the existing symbol v for the duration of its body, so g sees the temporary value. Module would give 1, because it renames its own variable and leaves the global v alone.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "sc-mcq-multi-adv-1",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"lexical", "dynamic"},
    "Question"     -> "Which statements correctly distinguish Module from Block?",
    "Options"      -> {"Module provides lexical scoping", "Block provides dynamic scoping", "Block changes the value of the existing symbol", "Module renames its variables to fresh symbols"},
    "Answer"       -> {"Module provides lexical scoping", "Block provides dynamic scoping", "Block changes the value of the existing symbol", "Module renames its variables to fresh symbols"},
    "Explanation"  -> "With lexical scoping, what a name refers to is fixed by where it is written. With dynamic scoping it depends on what is running at the time, which is why Block affects functions called from within.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "sc-mcq-multi-adv-2",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"helper functions", "localisation"},
    "Question"     -> "Why must a helper function defined inside a Module be listed in the Module's variable list?",
    "Options"      -> {"Otherwise it becomes a global symbol", "Otherwise separate calls overwrite one another's definition", "Otherwise it cannot be called at all", "Otherwise it is renamed twice"},
    "Answer"       -> {"Otherwise it becomes a global symbol", "Otherwise separate calls overwrite one another's definition"},
    "Explanation"  -> "An undeclared helper is defined globally, so two simultaneous calls share one definition and the second silently replaces the first. The helper still works when called, which is what makes this bug hard to notice.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "sc-blank-adv-1",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"helper functions", "localisation"},
    "Question"     -> "Complete the variable list so that the helper function is properly localised.",
    "Template"     -> "Module[{visited = {}, ___}, visit[n_] := ...; visit[start]; visited]",
    "Hint"         -> "Anything defined inside the body and used by name must be declared, not just the ordinary variables.",
    "Answer"       -> "visit",
    "Explanation"  -> "Declaring visit alongside visited makes it private to this call. Left out of the list it would be a global definition shared by every call.",
    "Points"       -> 3
  |>,

  <|
    "ID"           -> "sc-blank-adv-2",
    "Topic"        -> "Scoping",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"recursion", "Module"},
    "Question"     -> "Complete with the construct that gives each recursive call its own copy of the variable here.",
    "Template"     -> "countDown[n_] := ___[{here = n}, Prepend[countDown[n - 1], here]]",
    "Hint"         -> "Several calls are alive at once, so each needs a variable of its own rather than a shared temporary value.",
    "Answer"       -> "Module",
    "Explanation"  -> "Module creates a fresh symbol per call, so the nested calls do not overwrite one another. Block would share a single symbol and every call would see the innermost value.",
    "Points"       -> 3
  |>,

  <|
    "ID"            -> "sc-code-adv-1",
    "Topic"         -> "Scoping",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Module", "loop variable"},
    "Question"      -> "Write a function that returns the list of integers from n down to 1, using Module with a local loop variable. An argument of 0 should give the empty list.",
    "Template"      -> "downFrom[n_] := Module[{___}, ___]",
    "Hint"          -> "Declare both the output list and the loop variable, and make sure the loop runs no iterations when n is 0.",
    "TestCases"     -> {{3, {3, 2, 1}}, {1, {1}}, {0, {}}, {5, {5, 4, 3, 2, 1}}},
    "SampleAnswer"  -> "downFrom[n_] := Module[{out = {}, i}, For[i = n, i >= 1, i--, out = Append[out, i]]; out]",
    "Explanation"   -> "Both out and i are declared, so nothing leaks into the global namespace. Reverse[Range[n]] is the built-in equivalent and gives the empty list for 0 as well.",
    "Points"        -> 5
  |>,

  <|
    "ID"            -> "sc-code-adv-2",
    "Topic"         -> "Scoping",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Module", "running state"},
    "Question"      -> "Write a function that returns the running totals of a list, so that {1, 2, 3} gives {1, 3, 6}. Use a local variable to carry the running sum.",
    "Template"      -> "runningTotals[lst_] := Module[{___}, ___]",
    "Hint"          -> "Keep a local sum, and map over the list updating that sum and returning its new value each time.",
    "TestCases"     -> {{{1, 2, 3}, {1, 3, 6}}, {{5}, {5}}, {{}, {}}, {{2, -2, 4}, {2, 0, 4}}},
    "SampleAnswer"  -> "runningTotals[lst_] := Module[{s = 0}, Map[(s = s + #) &, lst]]",
    "Explanation"   -> "Map evaluates its function on the elements in order, so the running sum builds up correctly and each call returns the value just assigned. Accumulate[lst] is the built-in equivalent.",
    "Points"        -> 5
  |>

};
