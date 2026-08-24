ClearAll[ruleQuestions];
ruleQuestions = {


  <|
    "ID"           "rule-mcq-single-beg-1",
    "Topic"        "Rules",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Single",
    "Tags"         {"Rule", "ReplaceAll"},
    "Question"     "What does x /. x -> 5 return?",
    "Options"      {"x", "5", "x -> 5", "An error"},
    "Answer"       "5",
    "Explanation"  "/. (ReplaceAll) applies the rule x -> 5 to the expression x, replacing it with 5.",
    "Points"       1
  |>,

  <|
    "ID"           "rule-mcq-multi-beg-1",
    "Topic"        "Rules",
    "Difficulty"   "Beginner",
    "Type"         "MCQ-Multiple",
    "Tags"         {"Rule", "RuleDelayed"},
    "Question"     "Which of the following are valid ways to write a rule in Mathematica?",
    "Options"      {"x -> 5", "x :> 5", "x => 5", "x == 5"},
    "Answer"       {"x -> 5", "x :> 5"},
    "Explanation"  "-> is Rule and :> is RuleDelayed. => and == are not rule operators (== is equality testing).",
    "Points"       2
  |>,

  <|
    "ID"           "rule-blank-beg-1",
    "Topic"        "Rules",
    "Difficulty"   "Beginner",
    "Type"         "Blanks",
    "Tags"         {"ReplaceAll", "Rule"},
    "Question"     "Complete the expression that replaces x with 3 in x^2 + x.",
    "Template"     "x^2 + x ____ x -> 3",
    "Hint"         "The infix operator for ReplaceAll is a forward slash followed by a period.",
    "Answer"       "/.",
    "Explanation"  "x^2 + x /. x -> 3 substitutes 3 for every x, giving 9 + 3 = 12.",
    "Points"       1
  |>,

  <|
    "ID"            "rule-code-beg-1",
    "Topic"         "Rules",
    "Difficulty"    "Beginner",
    "Type"          "Code Writing",
    "Tags"          {"ReplaceAll", "Rule"},
    "Question"      "Write a function substitute that takes an expression expr and a value val, and replaces every x in expr with val.",
    "Template"      "substitute[expr_, val_] := ____",
    "Hint"          "Use ReplaceAll (/.) with the rule x -> val.",
    "TestCases"     {{{x^2 + 1, 3}, 10}, {{2*x, 5}, 10}},
    "SampleAnswer"  "substitute[expr_, val_] := expr /. x -> val",
    "Explanation"   "expr /. x -> val replaces every occurrence of the symbol x in expr with val before evaluating.",
    "Points"        3
  |>,


  <|
    "ID"           "rule-mcq-single-int-1",
    "Topic"        "Rules",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Single",
    "Tags"         {"Rule", "RuleDelayed", "evaluation timing"},
    "Question"     "What is the key difference between -> (Rule) and :> (RuleDelayed)?",
    "Options"      {"There is no difference", "Rule evaluates the right-hand side immediately when the rule is created; RuleDelayed evaluates it each time the rule is applied", "RuleDelayed only works with patterns", "Rule is faster than RuleDelayed"},
    "Answer"       "Rule evaluates the right-hand side immediately when the rule is created; RuleDelayed evaluates it each time the rule is applied",
    "Explanation"  "Rule (->) evaluates its right side once, at creation time. RuleDelayed (:>) defers evaluation until the rule is actually used in a replacement.",
    "Points"       1
  |>,

  <|
    "ID"           "rule-mcq-multi-int-1",
    "Topic"        "Rules",
    "Difficulty"   "Intermediate",
    "Type"         "MCQ-Multiple",
    "Tags"         {"ReplaceAll", "ReplaceRepeated"},
    "Question"     "Which statements about ReplaceAll (/.) and ReplaceRepeated (//.) are correct?",
    "Options"      {"/. applies a rule once across the expression", "//. applies a rule repeatedly until the expression stops changing", "//. can be used to fully simplify nested or recursive substitutions", "/. and //. always give the same result"},
    "Answer"       {"/. applies a rule once across the expression", "//. applies a rule repeatedly until the expression stops changing", "//. can be used to fully simplify nested or recursive substitutions"},
    "Explanation"  "ReplaceAll does a single pass. ReplaceRepeated keeps applying the rule until no further change occurs, which is useful for recursive rewriting but can give a different result than a single pass.",
    "Points"       2
  |>,

  <|
    "ID"           "rule-blank-int-1",
    "Topic"        "Rules",
    "Difficulty"   "Intermediate",
    "Type"         "Blanks",
    "Tags"         {"ReplaceRepeated"},
    "Question"     "Complete the operator that repeatedly applies a rule until the expression no longer changes.",
    "Template"     "expr ____ rule",
    "Hint"         "It looks like ReplaceAll's operator but with an extra slash.",
    "Answer"       "//.",
    "Explanation"  "//. is ReplaceRepeated, which keeps applying the rule until the result stabilizes.",
    "Points"       2
  |>,

  <|
    "ID"            "rule-code-int-1",
    "Topic"         "Rules",
    "Difficulty"    "Intermediate",
    "Type"          "Code Writing",
    "Tags"          {"ReplaceAll", "list of rules"},
    "Question"      "Write a function swapXY that takes an expression and swaps every x with y and every y with x, using a list of rules applied simultaneously.",
    "Template"      "swapXY[expr_] := ____",
    "Hint"          "Pass a list of rules {x -> y, y -> x} to ReplaceAll so the swap happens simultaneously, not sequentially.",
    "TestCases"     {{x + y, y + x}, {x*y, y*x}},
    "SampleAnswer"  "swapXY[expr_] := expr /. {x -> y, y -> x}",
    "Explanation"   "Passing a list of rules to /. applies all substitutions simultaneously, avoiding the bug of x becoming y and then immediately becoming x again.",
    "Points"        4
  |>,


  <|
    "ID"           "rule-mcq-single-adv-1",
    "Topic"        "Rules",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Single",
    "Tags"         {"RuleDelayed", "pattern matching", "dynamic rules"},
    "Question"     "Why is RuleDelayed (:>) typically used instead of Rule (->) when the right-hand side depends on pattern variables bound during matching, e.g. x_ :> x^2?",
    "Options"      {"It isn't, Rule works identically", "RuleDelayed prevents the right side from evaluating before the pattern variable is bound, since with Rule the right side would evaluate immediately and fail since x_ has no value yet", "RuleDelayed is required syntactically for all rules with patterns", "RuleDelayed is faster"},
    "Answer"       "RuleDelayed prevents the right side from evaluating before the pattern variable is bound, since with Rule the right side would evaluate immediately and fail since x_ has no value yet",
    "Explanation"  "With x_ -> x^2, x^2 would attempt to evaluate immediately with x unbound. RuleDelayed (:>) defers that evaluation until after a match assigns a value to x.",
    "Points"       1
  |>,

  <|
    "ID"           "rule-mcq-multi-adv-1",
    "Topic"        "Rules",
    "Difficulty"   "Advanced",
    "Type"         "MCQ-Multiple",
    "Tags"         {"Replace", "ReplaceAll", "levelspec"},
    "Question"     "Which statements about Replace and its level specification are correct?",
    "Options"      {"Replace[expr, rule] applies the rule only at the top level by default", "ReplaceAll applies a rule at every level of the expression", "Replace[expr, rule, {2}] restricts replacement to level 2 only", "Replace and ReplaceAll always produce identical results"},
    "Answer"       {"Replace[expr, rule] applies the rule only at the top level by default", "ReplaceAll applies a rule at every level of the expression", "Replace[expr, rule, {2}] restricts replacement to level 2 only"},
    "Explanation"  "Replace defaults to level 0 (top level) and accepts a level spec to target deeper levels. ReplaceAll (/.) traverses and replaces at all levels by default, so the two can give different results.",
    "Points"       2
  |>,

  <|
    "ID"           "rule-blank-adv-1",
    "Topic"        "Rules",
    "Difficulty"   "Advanced",
    "Type"         "Blanks",
    "Tags"         {"RuleDelayed", "PatternTest"},
    "Question"     "Complete the rule that replaces only even numbers in a list with the string \"even\", leaving odd numbers untouched.",
    "Template"     "{1, 2, 3, 4} /. n_____EvenQ ____ \"even\"",
    "Hint"         "Combine a PatternTest (?EvenQ) with RuleDelayed (:>) since the right side doesn't depend on n.",
    "Answer"       "?",
    "Explanation"  "n_?EvenQ :> \"even\" only matches numbers passing EvenQ, replacing them with the string while leaving odd numbers as-is.",
    "Points"       3
  |>,

  <|
    "ID"            "rule-code-adv-1",
    "Topic"         "Rules",
    "Difficulty"    "Advanced",
    "Type"          "Code Writing",
    "Tags"          {"RuleDelayed", "PatternTest", "ReplaceAll"},
    "Question"      "Write a function flagNegatives that takes a list of numbers and replaces every negative number with the string \"negative\", leaving non-negative numbers unchanged.",
    "Template"      "flagNegatives[list_] := ____",
    "Hint"          "Use a PatternTest with Negative combined with RuleDelayed inside ReplaceAll.",
    "TestCases"     {{{1, -2, 3, -4}, {1, "negative", 3, "negative"}}, {{5, 6}, {5, 6}}},
    "SampleAnswer"  "flagNegatives[list_] := list /. n_?Negative :> \"negative\"",
    "Explanation"   "n_?Negative :> \"negative\" matches only negative numbers via the PatternTest, replacing each with the string while leaving others untouched.",
    "Points"        5
  |>,

  (* ---- BEGINNER (added) ---- *)

  <|
    "ID" -> "rule-mcq-single-beg-2",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"ReplaceAll", "list of rules"},
    "Question" -> "What does x + y /. {x -> 1, y -> 2} return?",
    "Options" -> {"x + y", "3", "{1, 2}", "An error"},
    "Answer" -> "3",
    "Explanation" -> "/. applies a list of rules simultaneously; x becomes 1 and y becomes 2, so x+y evaluates to 3.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-mcq-multi-beg-2",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Rule", "expression structure"},
    "Question" -> "Which of the following are true about rules in Mathematica?",
    "Options" -> {"A rule like x -> 5 has head Rule", "Rules can be stored in a variable and reused, e.g. r = x -> 5; expr /. r", "A rule by itself, without /. or Replace, immediately modifies x globally", "You can apply a list of several rules at once with /."},
    "Answer" -> {"A rule like x -> 5 has head Rule", "Rules can be stored in a variable and reused, e.g. r = x -> 5; expr /. r", "You can apply a list of several rules at once with /."},
    "Explanation" -> "A rule is just an expression (head Rule) that does nothing by itself until applied with /. or Replace; it doesn't modify anything globally on its own, but it can be stored, reused, and combined into lists.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-blank-beg-2",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"ReplaceAll", "list of rules"},
    "Question" -> "Complete the expression that replaces both x and y at once using a single ReplaceAll call.",
    "Template" -> "x + y ____ {x -> 1, y -> 2}",
    "Hint" -> "The operator for ReplaceAll works the same whether given one rule or a list of rules.",
    "Answer" -> "/.",
    "Explanation" -> "/. applies the list of rules {x->1, y->2} simultaneously to every matching symbol in the expression.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-code-beg-2",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"ReplaceAll", "dynamic rule"},
    "Question" -> "Write a function applyRule that takes an expression, a pattern to match, and a replacement value, and returns the expression with the pattern replaced.",
    "Template" -> "applyRule[expr_, pattern_, replacement_] := ____",
    "Hint" -> "Build the rule pattern -> replacement from the arguments and apply it with /.",
    "TestCases" -> {{{x^2 + x, x, 3}, 12}, {{2*y, y, 5}, 10}},
    "SampleAnswer" -> "applyRule[expr_, pattern_, replacement_] := expr /. pattern -> replacement",
    "Explanation" -> "Building the rule pattern -> replacement dynamically from the arguments and applying it with /. replaces every occurrence of pattern in expr with replacement.",
    "Points" -> 3
  |>,

  (* ---- INTERMEDIATE (added) ---- *)

  <|
    "ID" -> "rule-mcq-single-int-2",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"RuleDelayed", "Cases"},
    "Question" -> "Why does Cases typically use :> (RuleDelayed) rather than -> (Rule) when extracting matches, e.g. Cases[{1,2,3,4}, n_?EvenQ :> n^2]?",
    "Options" -> {"Because -> is not allowed inside Cases", "Because the replacement often depends on the pattern variable (like n), which must remain unbound until a match occurs", "There is no real reason, either works identically here", "Because Cases only accepts RuleDelayed by syntax restriction"},
    "Answer" -> "Because the replacement often depends on the pattern variable (like n), which must remain unbound until a match occurs",
    "Explanation" -> "Just like in /. replacements, when the right-hand side depends on a pattern variable such as n, RuleDelayed defers evaluation until after a match binds that variable; using Rule would try to evaluate n^2 with n still unbound.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-mcq-multi-int-2",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"ReplaceAll", "rule order"},
    "Question" -> "Which of the following are true about how /. resolves when an expression could match more than one rule in a list?",
    "Options" -> {"Rules are tried in the order given, and the first matching rule is applied for each position", "All matching rules are applied simultaneously to the same position", "/. never applies more than one rule to the exact same subexpression in a single pass", "The order of rules in the list never matters"},
    "Answer" -> {"Rules are tried in the order given, and the first matching rule is applied for each position", "/. never applies more than one rule to the exact same subexpression in a single pass"},
    "Explanation" -> "When several rules could match the same subexpression, /. tries them in order and uses the first one that matches; each subexpression gets at most one rule applied to it per pass, so rule order can matter.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-blank-int-2",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"RuleDelayed"},
    "Question" -> "Complete the rule that replaces any matched number n with its square, using RuleDelayed since the replacement depends on n.",
    "Template" -> "n_ ____ n^2",
    "Hint" -> "Using Rule (->) here would try to evaluate n^2 before n is bound.",
    "Answer" -> ":>",
    "Explanation" -> "n_ :> n^2 uses RuleDelayed so n^2 is computed only after n is bound by a successful match; using -> would try to evaluate n^2 immediately while n is still just a pattern.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-code-int-2",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"RuleDelayed", "PatternTest", "ReplaceAll"},
    "Question" -> "Write a function squareEvens that takes a list of numbers and replaces every even number with its square, leaving odd numbers unchanged.",
    "Template" -> "squareEvens[list_] := ____",
    "Hint" -> "Combine a PatternTest (?EvenQ) with RuleDelayed (:>) since the replacement depends on n.",
    "TestCases" -> {{{1, 2, 3, 4}, {1, 4, 3, 16}}, {{5, 6}, {5, 36}}},
    "SampleAnswer" -> "squareEvens[list_] := list /. n_?EvenQ :> n^2",
    "Explanation" -> "n_?EvenQ :> n^2 matches only even numbers via PatternTest, replacing each with its square using RuleDelayed so n^2 is computed after n is bound.",
    "Points" -> 4
  |>,

  (* ---- ADVANCED (added) ---- *)

  <|
    "ID" -> "rule-mcq-single-adv-2",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Dispatch", "performance"},
    "Question" -> "What is the purpose of wrapping a large list of rules with Dispatch before repeatedly applying them with /.?",
    "Options" -> {"Dispatch sorts the rules alphabetically", "Dispatch precompiles the rules into an optimized lookup structure, speeding up repeated pattern matching against many rules", "Dispatch converts Rule to RuleDelayed automatically", "Dispatch is required syntactically before any list of rules can be used"},
    "Answer" -> "Dispatch precompiles the rules into an optimized lookup structure, speeding up repeated pattern matching against many rules",
    "Explanation" -> "Dispatch[rules] compiles a large set of rules into an internal optimized structure, which can significantly speed up repeated replacement operations against that same rule set.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-mcq-multi-adv-2",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"ReplaceRepeated", "termination"},
    "Question" -> "Which of the following are true about ReplaceRepeated (//.)?",
    "Options" -> {"It keeps applying the rule(s) until the expression no longer changes", "A poorly designed rule can cause //. to loop forever if the expression never stabilizes", "//. guarantees termination for any rule, no matter what", "//. is useful for fully simplifying expressions via repeated rewriting"},
    "Answer" -> {"It keeps applying the rule(s) until the expression no longer changes", "A poorly designed rule can cause //. to loop forever if the expression never stabilizes", "//. is useful for fully simplifying expressions via repeated rewriting"},
    "Explanation" -> "ReplaceRepeated is powerful for iterative rewriting but offers no termination guarantee \[LongDash] if the rule keeps producing new matches indefinitely, //. will not stop on its own.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-blank-adv-2",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Dispatch", "performance"},
    "Question" -> "Complete the call that compiles a large list of rules into an optimized structure for faster repeated replacement.",
    "Template" -> "____[{a -> 1, b -> 2, c -> 3}]",
    "Hint" -> "This function precompiles rules for repeated use, similar to how CompiledFunction speeds up numeric code.",
    "Answer" -> "Dispatch",
    "Explanation" -> "Dispatch[rules] precompiles the rule list into an optimized lookup structure for faster repeated pattern matching.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "rule-code-adv-2",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"ReplaceRepeated", "chained rules"},
    "Question" -> "Write a function toInches that reduces an expression written using the symbols yard and foot down to a plain inch count, using ReplaceRepeated with the rules {yard -> 3 foot, foot -> 12}.",
    "Template" -> "toInches[expr_] := ____",
    "Hint" -> "//. keeps applying both rules, first turning yard into feet, then feet into inches, until nothing more changes.",
    "TestCases" -> {{yard, 36}, {2*foot, 24}, {yard + 6, 42}},
    "SampleAnswer" -> "toInches[expr_] := expr //. {yard -> 3 foot, foot -> 12}",
    "Explanation" -> "ReplaceRepeated keeps applying the rules until no yard or foot symbols remain, first converting yard to feet, then feet to a plain inch count.",
    "Points" -> 5
  |>,

  (* ================= BEGINNER (rounds 3-5) ================= *)

  <|
    "ID" -> "rule-mcq-single-beg-3",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Rule", "Head"},
    "Question" -> "What is Head[x -> 5]?",
    "Options" -> {"Rule", "RuleDelayed", "List", "Equal"},
    "Answer" -> "Rule",
    "Explanation" -> "x -> 5 is internally Rule[x, 5], so its head is Rule.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-mcq-multi-beg-3",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"ReplaceAll", "selective replacement"},
    "Question" -> "Which of the following are true about x + y /. x -> 5?",
    "Options" -> {"Only occurrences of x are replaced; y is left untouched", "The result is 5 + y", "Both x and y get replaced with 5", "The original expression x + y is permanently modified in place"},
    "Answer" -> {"Only occurrences of x are replaced; y is left untouched", "The result is 5 + y"},
    "Explanation" -> "/. only replaces symbols matching the rule's left-hand side (x here); y is untouched, and the result 5+y is a new expression, not a permanent in-place modification of the original.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-blank-beg-3",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"Rule", "ReplaceAll"},
    "Question" -> "Complete the rule that replaces y with 10 in the expression 2y + 3.",
    "Template" -> "2 y + 3 /. y ____ 10",
    "Hint" -> "This is the basic Rule operator.",
    "Answer" -> "->",
    "Explanation" -> "y -> 10 is a Rule that replaces y with 10 wherever it appears, giving 2*10+3=23.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-code-beg-3",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"ReplaceAll", "Rule"},
    "Question" -> "Write a function doubleValue that takes an expression, a symbol, and a value v, and returns the expression with that symbol replaced by twice v.",
    "Template" -> "doubleValue[expr_, sym_, v_] := ___",
    "Hint" -> "Build the rule sym -> 2*v and apply it with /.",
    "TestCases" -> {{{x + 1, x, 3}, 7}, {{2*y, y, 5}, 20}},
    "SampleAnswer" -> "doubleValue[expr_, sym_, v_] := expr /. sym -> 2*v",
    "Explanation" -> "The rule sym -> 2*v replaces sym with twice v wherever it appears in expr.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "rule-mcq-single-beg-4",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"ReplaceAll", "nested expressions"},
    "Question" -> "Does x /. x -> 5 replace x even if it's nested deep inside a complicated expression, like f[g[x], h[x]]?",
    "Options" -> {"Yes, /. searches and replaces at every level by default", "No, /. only replaces at the very top level", "Only the first occurrence of x is replaced, not all of them", "It depends on the function f and g"},
    "Answer" -> "Yes, /. searches and replaces at every level by default",
    "Explanation" -> "ReplaceAll (/.) searches the entire expression tree by default, replacing every matching occurrence no matter how deeply nested.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-mcq-multi-beg-4",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"ReplaceAll", "list of rules"},
    "Question" -> "Which of the following are true about f[x,y,z] /. {x->1, y->2, z->3}?",
    "Options" -> {"All three substitutions happen at once, giving f[1,2,3]", "Only x gets replaced; y and z are ignored", "The rules are applied one after another, not simultaneously, which could matter if they interfered with each other", "For this particular example (unrelated symbols), the result is the same whether simultaneous or sequential"},
    "Answer" -> {"All three substitutions happen at once, giving f[1,2,3]", "For this particular example (unrelated symbols), the result is the same whether simultaneous or sequential"},
    "Explanation" -> "/. applies a list of rules simultaneously (in one pass); since x, y, and z don't interfere with each other here, the result is f[1,2,3] regardless.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-blank-beg-4",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"list of rules"},
    "Question" -> "Complete the expression that replaces both a and b at once in a+b using a list of rules.",
    "Template" -> "a + b /. {a -> 1, ____}",
    "Hint" -> "Add a second rule for b in the same list.",
    "Answer" -> "b -> 2",
    "Explanation" -> "Including b -> 2 in the same rule list replaces both a and b simultaneously, giving 1+2=3.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-code-beg-4",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"list of rules", "simultaneous substitution"},
    "Question" -> "Write a function swapPair that takes an expression and two symbols a and b, and returns the expression with a and b swapped everywhere, using a list of rules applied simultaneously.",
    "Template" -> "swapPair[expr_, a_, b_] := ___",
    "Hint" -> "Use the list of rules {a -> b, b -> a} so the swap happens at once, not sequentially.",
    "TestCases" -> {{{x + 2*y, x, y}, y + 2*x}, {{p - q, p, q}, q - p}},
    "SampleAnswer" -> "swapPair[expr_, a_, b_] := expr /. {a -> b, b -> a}",
    "Explanation" -> "Passing both rules in one list applies them simultaneously, avoiding the bug of a becoming b and then immediately becoming a again.",
    "Points" -> 4
  |>,

  <|
    "ID" -> "rule-mcq-single-beg-5",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Single",
    "Tags" -> {"ReplaceAll", "no match"},
    "Question" -> "What does 5 /. x -> 10 return, given the expression 5 doesn't contain x at all?",
    "Options" -> {"5, unchanged, since there's nothing to replace", "10", "An error", "Missing[]"},
    "Answer" -> "5, unchanged, since there's nothing to replace",
    "Explanation" -> "If the rule's pattern doesn't appear anywhere in the expression, /. simply leaves the expression completely unchanged.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-mcq-multi-beg-5",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Rule", "compound expressions"},
    "Question" -> "Which of the following are true about x^2 /. x^2 -> 100?",
    "Options" -> {"The rule matches the whole sub-expression x^2 (not just the symbol x alone), replacing it with 100", "Rules can match compound expressions, not only bare symbols", "x alone (without the ^2) would also be replaced by this rule", "This gives 100 as the result"},
    "Answer" -> {"The rule matches the whole sub-expression x^2 (not just the symbol x alone), replacing it with 100", "Rules can match compound expressions, not only bare symbols", "This gives 100 as the result"},
    "Explanation" -> "A rule's left-hand side can be any expression, not just a bare symbol; x^2 -> 100 matches the whole compound expression x^2 specifically, not a standalone x.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-blank-beg-5",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "Blanks",
    "Tags" -> {"Rule", "compound expressions"},
    "Question" -> "Complete the rule that replaces the whole expression x^2 with 100.",
    "Template" -> "x^2 /. ____ -> 100",
    "Hint" -> "Match the entire compound expression, not just x alone.",
    "Answer" -> "x^2",
    "Explanation" -> "x^2 -> 100 matches the compound expression x^2 specifically and replaces it with 100.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-code-beg-5",
    "Topic" -> "Rules",
    "Difficulty" -> "Beginner",
    "Type" -> "Code Writing",
    "Tags" -> {"Rule", "compound expressions"},
    "Question" -> "Write a function replaceSquare that takes an expression and a symbol x, and replaces every occurrence of x^2 (specifically, not bare x) with the string \"squared\".",
    "Template" -> "replaceSquare[expr_, x_] := ___",
    "Hint" -> "Build the rule x^2 -> \"squared\" using the given symbol.",
    "TestCases" -> {{{y^2 + 3, y}, "squared" + 3}, {{a^2*b, a}, "squared"*b}},
    "SampleAnswer" -> "replaceSquare[expr_, x_] := expr /. x^2 -> \"squared\"",
    "Explanation" -> "The rule x^2 -> \"squared\" matches the compound expression x^2 specifically, leaving a bare x untouched.",
    "Points" -> 3
  |>,

  (* ================= INTERMEDIATE (rounds 3-5) ================= *)

  <|
    "ID" -> "rule-mcq-single-int-3",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"PatternTest", "RuleDelayed"},
    "Question" -> "Which replacement correctly doubles only the negative numbers in a list, leaving positives unchanged?",
    "Options" -> {"list /. n_?Negative :> 2n", "list /. n_ :> 2n", "list /. n_?Negative -> 2n", "list /. Negative -> 2n"},
    "Answer" -> "list /. n_?Negative :> 2n",
    "Explanation" -> "n_?Negative :> 2n uses PatternTest to match only negative numbers, and RuleDelayed so 2n is computed after n is bound; the other options either match everything or use the wrong syntax.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-mcq-multi-int-3",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"ReplaceAll", "traversal"},
    "Question" -> "Which of the following are true about how /. traverses an expression by default?",
    "Options" -> {"/. tries to match and replace at every level of the expression, from the top down", "Once a match is found and replaced at a given position, /. does not then also try to match inside the newly-inserted replacement", "/. only ever looks at the very top level", "/. effectively performs one full top-down pass over the expression tree"},
    "Answer" -> {"/. tries to match and replace at every level of the expression, from the top down", "Once a match is found and replaced at a given position, /. does not then also try to match inside the newly-inserted replacement", "/. effectively performs one full top-down pass over the expression tree"},
    "Explanation" -> "/. performs a single top-down pass over the whole expression, replacing matches at every level, but it doesn't re-scan newly-inserted replacement text for further matches (that's what //. is for).",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-blank-int-3",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"PatternTest", "RuleDelayed"},
    "Question" -> "Complete the rule that doubles only negative numbers in a list, leaving positives unchanged.",
    "Template" -> "list /. n_?Negative ____ 2 n",
    "Hint" -> "The replacement depends on n, so use RuleDelayed.",
    "Answer" -> ":>",
    "Explanation" -> "n_?Negative :> 2n matches only negative numbers via PatternTest, doubling them while leaving non-negative numbers untouched.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-code-int-3",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"PatternTest", "RuleDelayed"},
    "Question" -> "Write a function doubleNegatives that takes a list of numbers and doubles only the negative ones, leaving non-negative numbers unchanged.",
    "Template" -> "doubleNegatives[list_] := ___",
    "Hint" -> "Use list /. n_?Negative :> 2*n.",
    "TestCases" -> {{{1, -2, 3, -4}, {1, -4, 3, -8}}, {{5, 6}, {5, 6}}},
    "SampleAnswer" -> "doubleNegatives[list_] := list /. n_?Negative :> 2*n",
    "Explanation" -> "n_?Negative :> 2*n matches only negative numbers via PatternTest, doubling each one while leaving the rest untouched.",
    "Points" -> 4
  |>,

  <|
    "ID" -> "rule-mcq-single-int-4",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"ReplaceAll", "multiple occurrences"},
    "Question" -> "What does {x, y, x} /. x -> 1 return?",
    "Options" -> {"{1, y, 1}", "{1, 1, 1}", "x is only replaced once, at its first occurrence: {1, y, x}", "An error"},
    "Answer" -> "{1, y, 1}",
    "Explanation" -> "/. replaces every occurrence of a match, not just the first, so both x's in the list become 1, giving {1, y, 1}.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-mcq-multi-int-4",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"ReplaceAll", "Association"},
    "Question" -> "Which of the following are true about applying /. to an Association, like <|a->1,b->2|> /. 1 -> 100?",
    "Options" -> {"/. searches the values of the Association too, not just the top-level structure", "<|a->1,b->2|> /. 1 -> 100 gives <|a->100,b->2|>", "Associations are completely immune to any /. replacement", "/. treats an Association like any other expression, searching its parts for matches"},
    "Answer" -> {"/. searches the values of the Association too, not just the top-level structure", "<|a->1,b->2|> /. 1 -> 100 gives <|a->100,b->2|>", "/. treats an Association like any other expression, searching its parts for matches"},
    "Explanation" -> "/. treats an Association like any other expression, searching through its parts (including values) for matches, so replacing 1 with 100 updates the value associated with key a.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-blank-int-4",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"ReplaceAll", "multiple occurrences"},
    "Question" -> "Complete the expression that replaces every occurrence of x with 1 in the list {x, y, x, z}.",
    "Template" -> "{x, y, x, z} ____ x -> 1",
    "Hint" -> "This is the basic ReplaceAll operator.",
    "Answer" -> "/.",
    "Explanation" -> "/. replaces every matching occurrence throughout the list, giving {1,y,1,z}.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-code-int-4",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"ReplaceAll", "dynamic rule"},
    "Question" -> "Write a function replaceAllOccurrences that takes a list and a rule, and applies that rule throughout the list, using /.",
    "Template" -> "replaceAllOccurrences[list_, rule_] := ___",
    "Hint" -> "Just apply /. between list and rule.",
    "TestCases" -> {{{{1, 2, 1, 3}, 1 -> 99}, {99, 2, 99, 3}}, {{{"a", "b", "a"}, "a" -> "x"}, {"x", "b", "x"}}},
    "SampleAnswer" -> "replaceAllOccurrences[list_, rule_] := list /. rule",
    "Explanation" -> "Since rule is already a Rule object, list /. rule applies it directly throughout the list.",
    "Points" -> 4
  |>,

  <|
    "ID" -> "rule-mcq-single-int-5",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Single",
    "Tags" -> {"ReplaceAll", "assignment"},
    "Question" -> "After evaluating y = x /. x -> 5, does x itself now equal 5 globally?",
    "Options" -> {"No, only y is set to 5; x itself remains whatever it was before (likely still symbolic/unbound)", "Yes, x is now permanently 5 everywhere", "It depends on whether Global` context is used", "x is cleared entirely"},
    "Answer" -> "No, only y is set to 5; x itself remains whatever it was before (likely still symbolic/unbound)",
    "Explanation" -> "/. produces a new expression with the substitution applied; it does not modify the original symbol x anywhere. Only y (which was explicitly assigned the result) becomes 5.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-mcq-multi-int-5",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Table", "generating rules"},
    "Question" -> "Which of the following are true about generating a list of rules dynamically, like Table[i -> i^2, {i, 1, 3}]?",
    "Options" -> {"This produces {1->1, 2->4, 3->9}, a list of three concrete Rule objects", "Since Table evaluates i^2 immediately for each i as it builds the list, plain -> (Rule) works fine here", "This is a common pattern for building a lookup table of rules to use with /.", "RuleDelayed (:>) would be required here, since Rule cannot be used inside Table"},
    "Answer" -> {"This produces {1->1, 2->4, 3->9}, a list of three concrete Rule objects", "Since Table evaluates i^2 immediately for each i as it builds the list, plain -> (Rule) works fine here", "This is a common pattern for building a lookup table of rules to use with /."},
    "Explanation" -> "Table already substitutes each concrete value of i before building each rule, so plain Rule (->) works perfectly fine here; RuleDelayed is only needed when the right-hand side must stay unevaluated until a later pattern-match binds its variables, not when Table has already substituted concrete values.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-blank-int-5",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "Blanks",
    "Tags" -> {"Table", "generating rules"},
    "Question" -> "Complete the Table call that builds the rules {1->1, 2->4, 3->9}.",
    "Template" -> "Table[i -> ____, {i, 1, 3}]",
    "Hint" -> "Each rule maps i to its square.",
    "Answer" -> "i^2",
    "Explanation" -> "Table[i -> i^2, {i,1,3}] builds a concrete rule for each i from 1 to 3, substituting i^2 immediately since Table already evaluates i for each step.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-code-int-5",
    "Topic" -> "Rules",
    "Difficulty" -> "Intermediate",
    "Type" -> "Code Writing",
    "Tags" -> {"Table", "generating rules"},
    "Question" -> "Write a function squareLookup that takes an integer n and returns a list of rules mapping each integer from 1 to n to its square, using Table.",
    "Template" -> "squareLookup[n_] := ___",
    "Hint" -> "Table[i -> i^2, {i, 1, n}] builds one rule per integer.",
    "TestCases" -> {{2, {1 -> 1, 2 -> 4}}, {3, {1 -> 1, 2 -> 4, 3 -> 9}}},
    "SampleAnswer" -> "squareLookup[n_] := Table[i -> i^2, {i, 1, n}]",
    "Explanation" -> "Table builds one concrete rule i -> i^2 for each integer from 1 to n.",
    "Points" -> 4
  |>,

  (* ================= ADVANCED (rounds 3-5) ================= *)

  <|
    "ID" -> "rule-mcq-single-adv-3",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Replace", "level 0"},
    "Question" -> "What does Replace[{1,2,3}, {a_,b_,c_} -> a+b+c] return?",
    "Options" -> {"6, since Replace matches the whole list at level 0 against the pattern", "{1,2,3}, unchanged, since Replace never matches lists", "An error", "{6,6,6}"},
    "Answer" -> "6, since Replace matches the whole list at level 0 against the pattern",
    "Explanation" -> "Replace defaults to level 0, matching the entire expression as a whole; here the whole list {1,2,3} matches {a_,b_,c_}, binding a,b,c and replacing the whole thing with their sum.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-mcq-multi-adv-3",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"ReplaceList"},
    "Question" -> "What does ReplaceList[{1,2,3}, {x___,y_,z___} -> {x,y,z}] do?",
    "Options" -> {"It returns every possible way of splitting the list into x,y,z given the pattern, one result per way", "It returns only the first matching split", "It behaves identically to Replace, returning a single result", "It requires the pattern to match only once"},
    "Answer" -> {"It returns every possible way of splitting the list into x,y,z given the pattern, one result per way"},
    "Explanation" -> "ReplaceList returns a list of all the different ways a pattern could match (with sequence patterns like ___ trying different lengths), unlike Replace which returns just one result.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-blank-adv-3",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"ReplaceList"},
    "Question" -> "Complete the call that finds every way to split {1,2,3} into a before-part, one element, and an after-part.",
    "Template" -> "____[{1, 2, 3}, {x___, y_, z___} -> {x, y, z}]",
    "Hint" -> "This function returns every possible match, not just one.",
    "Answer" -> "ReplaceList",
    "Explanation" -> "ReplaceList[{1,2,3}, {x___,y_,z___}->{x,y,z}] returns all 3 ways of choosing which single element is y, with x and z as everything before/after.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "rule-code-adv-3",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Replace", "level 0"},
    "Question" -> "Write a function sumWhole that takes a 3-element list and returns the sum of all three elements, using Replace matching the whole list at level 0 (not Plus @@ list).",
    "Template" -> "sumWhole[list_] := ___",
    "Hint" -> "Replace[list, {a_, b_, c_} -> a + b + c] matches the whole list at once.",
    "TestCases" -> {{{1, 2, 3}, 6}, {{10, 20, 30}, 60}},
    "SampleAnswer" -> "sumWhole[list_] := Replace[list, {a_, b_, c_} -> a + b + c]",
    "Explanation" -> "Replace defaults to level 0, matching the entire list against {a_,b_,c_} and replacing it with the sum of the three bound values.",
    "Points" -> 5
  |>,

  <|
    "ID" -> "rule-mcq-single-adv-4",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"Dispatch", "performance"},
    "Question" -> "Why would you combine Dispatch with ReplaceRepeated when applying a large set of rules many times in a loop?",
    "Options" -> {"Dispatch precompiles the rule set once, so each of the many ReplaceRepeated calls looks up matches faster instead of re-scanning the raw rule list every time", "Dispatch makes ReplaceRepeated terminate faster in terms of number of passes", "Dispatch is required syntactically to use ReplaceRepeated at all", "There is no benefit to combining them"},
    "Answer" -> "Dispatch precompiles the rule set once, so each of the many ReplaceRepeated calls looks up matches faster instead of re-scanning the raw rule list every time",
    "Explanation" -> "Dispatch's main benefit is precompiling a large rule set into an optimized lookup structure once, so repeated replacement operations against that same set run faster; it doesn't change how many passes ReplaceRepeated needs.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-mcq-multi-adv-4",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"RuleDelayed", "Module"},
    "Question" -> "Which of the following are true about using RuleDelayed with a fresh computation on the right-hand side, like x_ :> Module[{temp}, temp = x^2; temp]?",
    "Options" -> {"The right-hand side is recomputed fresh every time the rule matches, since RuleDelayed defers evaluation until each individual match", "This lets each match get its own independent local computation, without interference between matches", "Using Rule (->) instead would compute the Module body only once, at rule-creation time, which is usually not what's wanted here", "Module cannot be used on the right-hand side of a rule at all"},
    "Answer" -> {"The right-hand side is recomputed fresh every time the rule matches, since RuleDelayed defers evaluation until each individual match", "This lets each match get its own independent local computation, without interference between matches", "Using Rule (->) instead would compute the Module body only once, at rule-creation time, which is usually not what's wanted here"},
    "Explanation" -> "RuleDelayed re-evaluates its right-hand side fresh for every match, so a Module (or any computation) there runs independently each time; using Rule instead would freeze the computation at rule-creation time, breaking this pattern.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-blank-adv-4",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"RuleDelayed", "Module"},
    "Question" -> "Complete the operator needed so the Module-based computation on the right runs fresh for every match, not just once at rule-creation.",
    "Template" -> "x_ ____ Module[{temp}, temp = x^2; temp]",
    "Hint" -> "This is the deferred version of Rule.",
    "Answer" -> ":>",
    "Explanation" -> "RuleDelayed (:>) ensures the Module body re-runs fresh for each individual match, rather than being computed once when the rule itself is created.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "rule-code-adv-4",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"RuleDelayed", "Module"},
    "Question" -> "Write a function squareEachViaModule that takes a list and replaces every number with its square, computed via an inline Module on the right-hand side of a RuleDelayed rule.",
    "Template" -> "squareEachViaModule[list_] := list /. n_ ____ Module[{sq}, sq = n^2; sq]",
    "Hint" -> "Fill in the RuleDelayed operator between the pattern and the Module.",
    "TestCases" -> {{{1, 2, 3}, {1, 4, 9}}, {{4}, {16}}},
    "SampleAnswer" -> "squareEachViaModule[list_] := list /. n_ :> Module[{sq}, sq = n^2; sq]",
    "Explanation" -> "RuleDelayed (:>) ensures the Module runs fresh for each matched n, correctly computing that element's square independently.",
    "Points" -> 5
  |>,

  <|
    "ID" -> "rule-mcq-single-adv-5",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Single",
    "Tags" -> {"repeated pattern variable", "ReplaceAll"},
    "Question" -> "What does {1,1,2,3} /. {a_, a_, b___} -> \"found duplicate at start\" do?",
    "Options" -> {"It matches only if the list starts with two identical elements, replacing the whole list with the string", "It matches any list regardless of repeated elements", "This pattern is invalid, repeated pattern names can't be used in rules", "It only checks the first element, ignoring the second"},
    "Answer" -> "It matches only if the list starts with two identical elements, replacing the whole list with the string",
    "Explanation" -> "Repeating the pattern name a_ requires both matched elements to be identical; here {1,1,2,3} matches ({a_,a_,b___} with a=1,a=1 consistent, b___={2,3}), replacing the entire list with the string.",
    "Points" -> 1
  |>,

  <|
    "ID" -> "rule-mcq-multi-adv-5",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "MCQ-Multiple",
    "Tags" -> {"Cases", "RuleDelayed"},
    "Question" -> "Which of the following are true about Cases[list, pattern :> result]?",
    "Options" -> {"This combines pattern matching (via pattern) with transformation (via result) in a single step", "It's equivalent to first Selecting matching elements, then separately Mapping a transformation over them", "RuleDelayed (:>) is typically used here since result usually depends on variables bound by pattern", "Cases can only extract elements unchanged, never transform them"},
    "Answer" -> {"This combines pattern matching (via pattern) with transformation (via result) in a single step", "It's equivalent to first Selecting matching elements, then separately Mapping a transformation over them", "RuleDelayed (:>) is typically used here since result usually depends on variables bound by pattern"},
    "Explanation" -> "Cases[list, pattern :> result] both filters (via pattern) and transforms (via result) in one pass, achieving the same net effect as a separate Select-then-Map pipeline; RuleDelayed is standard here since result typically depends on pattern-bound variables.",
    "Points" -> 2
  |>,

  <|
    "ID" -> "rule-blank-adv-5",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "Blanks",
    "Tags" -> {"Cases", "RuleDelayed"},
    "Question" -> "Complete the Cases call that finds all even numbers in {1,2,3,4,5,6} and replaces each with its square, in one step.",
    "Template" -> "Cases[{1, 2, 3, 4, 5, 6}, n_?EvenQ ____ n^2]",
    "Hint" -> "The replacement depends on n, so use RuleDelayed.",
    "Answer" -> ":>",
    "Explanation" -> "Cases[list, n_?EvenQ :> n^2] both filters for even numbers and squares them in a single combined pass.",
    "Points" -> 3
  |>,

  <|
    "ID" -> "rule-code-adv-5",
    "Topic" -> "Rules",
    "Difficulty" -> "Advanced",
    "Type" -> "Code Writing",
    "Tags" -> {"Cases", "RuleDelayed"},
    "Question" -> "Write a function evenSquares that takes a list of numbers and returns the squares of just the even ones (in order), using Cases with a combined pattern-and-transform rule.",
    "Template" -> "evenSquares[list_] := ___",
    "Hint" -> "Cases[list, n_?EvenQ :> n^2] filters and transforms in one pass.",
    "TestCases" -> {{{1, 2, 3, 4, 5, 6}, {4, 16, 36}}, {{1, 3, 5}, {}}},
    "SampleAnswer" -> "evenSquares[list_] := Cases[list, n_?EvenQ :> n^2]",
    "Explanation" -> "Cases[list, n_?EvenQ :> n^2] keeps only even numbers and squares them in the same pass.",
    "Points" -> 5
  |>

};
