ClearAll[associationQuestions];
associationQuestions = {

  (* ---------------- BEGINNER ---------------- *)

  <|
    "ID"           -> "as-mcq-single-beg-1",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"syntax"},
    "Question"     -> "How is an Association written?",
    "Options"      -> {"Enclosed in <| and |>", "Enclosed in { and }", "Enclosed in [ and ]", "Enclosed in ( and )"},
    "Answer"       -> "Enclosed in <| and |>",
    "Explanation"  -> "An Association is written as a list of rules between <| and |>, for example <|\"a\" -> 1, \"b\" -> 2|>.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "as-mcq-single-beg-2",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"lookup"},
    "Question"     -> "Given person = <|\"name\" -> \"ann\", \"age\" -> 31|>, what does person[\"age\"] return?",
    "Options"      -> {"31", "\"age\"", "\"ann\"", "Missing[\"KeyAbsent\", \"age\"]"},
    "Answer"       -> "31",
    "Explanation"  -> "Square brackets look a key up in an Association, in the same way they call a function, and return the value stored under that key.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "as-mcq-multi-beg-1",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"properties"},
    "Question"     -> "Which statements about Associations are true?",
    "Options"      -> {"Keys must be unique", "Values can be looked up by key", "The order keys were added is preserved", "They must be indexed by integer position"},
    "Answer"       -> {"Keys must be unique", "Values can be looked up by key", "The order keys were added is preserved"},
    "Explanation"  -> "Associations are indexed by key, not by position. Adding an entry whose key already exists replaces the old value rather than adding a duplicate.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "as-mcq-multi-beg-2",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"Keys", "Values"},
    "Question"     -> "Given a = <|\"x\" -> 1, \"y\" -> 2|>, which are true?",
    "Options"      -> {"Keys[a] gives {\"x\", \"y\"}", "Values[a] gives {1, 2}", "Length[a] gives 2", "Keys[a] gives {1, 2}"},
    "Answer"       -> {"Keys[a] gives {\"x\", \"y\"}", "Values[a] gives {1, 2}", "Length[a] gives 2"},
    "Explanation"  -> "Keys returns the keys and Values returns the values, each as an ordinary list in the order the entries were added. Length counts the entries.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "as-blank-beg-1",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"syntax"},
    "Question"     -> "Complete the Association so that the key \"score\" maps to 90.",
    "Template"     -> "<|\"score\" ___ 90|>",
    "Hint"         -> "Which arrow is used to write a rule?",
    "Answer"       -> "->",
    "Explanation"  -> "Each entry in an Association is written as key -> value, exactly like an ordinary rule.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "as-blank-beg-2",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"KeyExistsQ"},
    "Question"     -> "Complete so that the expression tests whether the key \"age\" is present in person.",
    "Template"     -> "___[person, \"age\"]",
    "Hint"         -> "The function name should read as a yes or no question.",
    "Answer"       -> "KeyExistsQ",
    "Explanation"  -> "KeyExistsQ returns True or False for whether a key is present, without producing a Missing object the way a direct lookup would.",
    "Points"       -> 1
  |>,

  <|
    "ID"            -> "as-code-beg-1",
    "Topic"         -> "Associations",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"lookup", "default"},
    "Question"      -> "Write a function of two arguments that looks up a key in an Association, returning \"unknown\" if the key is not present.",
    "Template"      -> "lookupOrUnknown[assoc_, key_] := ___",
    "Hint"          -> "There is a built-in function that takes a default value for exactly this case.",
    "TestCases"     -> {{{<|"a" -> 1|>, "a"}, 1}, {{<|"a" -> 1|>, "b"}, "unknown"}, {{<||>, "x"}, "unknown"}},
    "SampleAnswer"  -> "lookupOrUnknown[assoc_, key_] := Lookup[assoc, key, \"unknown\"]",
    "Explanation"   -> "Lookup takes a default as its third argument, avoiding the Missing object that a direct lookup on an absent key would return.",
    "Points"        -> 3
  |>,

  <|
    "ID"            -> "as-code-beg-2",
    "Topic"         -> "Associations",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Keys"},
    "Question"      -> "Write a function that returns how many keys an Association has.",
    "Template"      -> "keyCount[assoc_] := ___",
    "Hint"          -> "Length works on an Association directly.",
    "TestCases"     -> {{<|"a" -> 1, "b" -> 2|>, 2}, {<||>, 0}, {<|"x" -> 1|>, 1}},
    "SampleAnswer"  -> "keyCount[assoc_] := Length[assoc]",
    "Explanation"   -> "Length counts the entries of an Association in the same way it counts the elements of a list.",
    "Points"        -> 3
  |>,

  (* ---------------- INTERMEDIATE ---------------- *)

  <|
    "ID"           -> "as-mcq-single-int-1",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Append", "uniqueness"},
    "Question"     -> "Given scores = <|\"ann\" -> 72|>, what does Append[scores, \"ann\" -> 100] return?",
    "Options"      -> {"<|\"ann\" -> 100|>", "<|\"ann\" -> 72, \"ann\" -> 100|>", "<|\"ann\" -> 72|>", "An error"},
    "Answer"       -> "<|\"ann\" -> 100|>",
    "Explanation"  -> "Keys are unique, so appending an entry whose key already exists replaces the stored value rather than creating a second copy.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "as-mcq-single-int-2",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Map"},
    "Question"     -> "What does Map applied to an Association operate on?",
    "Options"      -> {"The values, keeping the keys unchanged", "The keys, keeping the values unchanged", "Both keys and values", "Neither; Map does not work on Associations"},
    "Answer"       -> "The values, keeping the keys unchanged",
    "Explanation"  -> "Map[f, assoc] applies f to each value and leaves the keys as they are. KeyMap is the corresponding function for transforming the keys.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "as-mcq-multi-int-1",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"Missing", "safety"},
    "Question"     -> "Which statements about a missing key are true?",
    "Options"      -> {"A direct lookup returns a Missing object rather than an error", "Lookup can supply a default value instead", "KeyExistsQ tests for presence without producing a Missing object", "A missing key causes the whole expression to fail"},
    "Answer"       -> {"A direct lookup returns a Missing object rather than an error", "Lookup can supply a default value instead", "KeyExistsQ tests for presence without producing a Missing object"},
    "Explanation"  -> "A Missing object can be passed around and tested for, so the calculation does not stop. Whether that Missing then causes trouble later depends on what happens to it.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "as-mcq-multi-int-2",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"KeySelect", "Select"},
    "Question"     -> "Which functions filter an Association by its keys rather than its values?",
    "Options"      -> {"KeySelect", "Select", "KeyDrop", "KeyMap"},
    "Answer"       -> {"KeySelect", "KeyDrop"},
    "Explanation"  -> "Select tests the values. KeySelect and KeyDrop act on the keys, keeping or removing entries by testing or naming the key rather than the value. KeyMap transforms keys but does not filter.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "as-blank-int-1",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"KeyValueMap"},
    "Question"     -> "Complete so that each key and value pair is joined into a string like \"a: 1\".",
    "Template"     -> "KeyValueMap[StringJoin[#1, \": \", ToString[___]] &, assoc]",
    "Hint"         -> "The value is the second argument the function receives.",
    "Answer"       -> "#2",
    "Explanation"  -> "KeyValueMap hands the key as #1 and the value as #2 to its function, producing a plain list rather than an Association.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "as-blank-int-2",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"GroupBy"},
    "Question"     -> "Complete so that entries are grouped into an Association keyed by their first field.",
    "Template"     -> "___[entries, First]",
    "Hint"         -> "This is the Association-producing counterpart to GatherBy.",
    "Answer"       -> "GroupBy",
    "Explanation"  -> "GroupBy keys its result by the computed value, which is what lets a group be looked up afterwards by name.",
    "Points"       -> 2
  |>,

  <|
    "ID"            -> "as-code-int-1",
    "Topic"         -> "Associations",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Select", "values"},
    "Question"      -> "Write a function that returns the keys of an Association whose value is above 70.",
    "Template"      -> "highScorers[assoc_] := ___",
    "Hint"          -> "Select the qualifying entries first, then take their keys.",
    "TestCases"     -> {{<|"ann" -> 72, "raj" -> 91, "mo" -> 65|>, {"ann", "raj"}}, {<||>, {}}, {<|"a" -> 50|>, {}}},
    "SampleAnswer"  -> "highScorers[assoc_] := Keys[Select[assoc, # > 70 &]]",
    "Explanation"   -> "Select keeps the qualifying entries, complete with their keys, and Keys then extracts just the names.",
    "Points"        -> 4
  |>,

  <|
    "ID"            -> "as-code-int-2",
    "Topic"         -> "Associations",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"Merge"},
    "Question"      -> "Write a function of two Associations that merges them, summing the values of any key that appears in both.",
    "Template"      -> "mergeSum[a_, b_] := ___",
    "Hint"          -> "Merge takes a list of Associations and a function to combine the values found for each key.",
    "TestCases"     -> {{{<|"a" -> 1, "b" -> 2|>, <|"a" -> 10|>}, <|"a" -> 11, "b" -> 2|>}, {{<||>, <|"x" -> 1|>}, <|"x" -> 1|>}},
    "SampleAnswer"  -> "mergeSum[a_, b_] := Merge[{a, b}, Total]",
    "Explanation"   -> "Merge hands every value found for a key to the combining function as a list, even when only one Association had that key, so Total works for both cases without a special case.",
    "Points"        -> 4
  |>,

  (* ---------------- ADVANCED ---------------- *)

  <|
    "ID"           -> "as-mcq-single-adv-1",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"part assignment"},
    "Question"     -> "Given a = <||>; a[\"k\"] = 1;, what has happened to a?",
    "Options"      -> {"It now holds <|\"k\" -> 1|>, modified in place", "It is unchanged, since Associations cannot be modified in place", "It now holds <|\"k\" -> 1|> only if reassigned with =", "An error is raised"},
    "Answer"       -> "It now holds <|\"k\" -> 1|>, modified in place",
    "Explanation"  -> "Part assignment on an Association is the one common exception to the rule that operations return a new copy. It updates the variable directly.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "as-mcq-single-adv-2",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"Merge"},
    "Question"     -> "In Merge[{<|\"a\" -> 1|>, <|\"a\" -> 2, \"b\" -> 3|>}, f], what is f actually called with for key \"b\"?",
    "Options"      -> {"f[{3}]", "f[3]", "f[{3, Missing[]}]", "f is not called for \"b\""},
    "Answer"       -> "f[{3}]",
    "Explanation"  -> "Merge always hands its combining function a list of the values found for that key, even when the key was found in only one Association, so the combining function must handle single-element lists too.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "as-mcq-multi-adv-1",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"GroupBy", "reduction"},
    "Question"     -> "Which statements about GroupBy[entries, First -> Last, Mean] are correct?",
    "Options"      -> {"Entries are grouped by their first field", "The second field of each entry is what gets averaged", "The result is an Association keyed by the first field", "It returns a list of lists like GatherBy"},
    "Answer"       -> {"Entries are grouped by their first field", "The second field of each entry is what gets averaged", "The result is an Association keyed by the first field"},
    "Explanation"  -> "The first -> second form of the key argument says what to group by and what to extract from each entry before reducing, here with Mean.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "as-mcq-multi-adv-2",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"Normal", "conversion"},
    "Question"     -> "Which statements about converting between Associations and lists of rules are correct?",
    "Options"      -> {"Normal[assoc] converts an Association to a list of rules", "Association[rules] converts a list of rules to an Association", "The conversions can lose data if keys repeat", "Normal has no effect on an Association"},
    "Answer"       -> {"Normal[assoc] converts an Association to a list of rules", "Association[rules] converts a list of rules to an Association", "The conversions can lose data if keys repeat"},
    "Explanation"  -> "Because Association keys must be unique, converting a list of rules with a repeated key keeps only the last value for that key, discarding the earlier ones.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "as-blank-adv-1",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"Merge", "collision policy"},
    "Question"     -> "Complete so that when a key collides, the earlier Association's value is kept.",
    "Template"     -> "Merge[{a, b}, ___]",
    "Hint"         -> "The combining function receives a list of values in Association order; which built-in picks the first one?",
    "Answer"       -> "First",
    "Explanation"  -> "Merge hands the combining function a list of every value found for that key, in the order the Associations were given, so First keeps the earliest one.",
    "Points"       -> 3
  |>,

  <|
    "ID"           -> "as-blank-adv-2",
    "Topic"        -> "Associations",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"accumulation", "Lookup"},
    "Question"     -> "Complete so that a running count in an Association is safely incremented even the first time a key is seen.",
    "Template"     -> "counter[w] = ___[counter, w, 0] + 1",
    "Hint"         -> "Reading counter[w] directly would give Missing on the first occurrence, so a default is needed.",
    "Answer"       -> "Lookup",
    "Explanation"  -> "Lookup with a default of 0 avoids adding one to a Missing object, which is what a direct lookup on an unseen key would otherwise produce.",
    "Points"       -> 3
  |>,

  <|
    "ID"            -> "as-code-adv-1",
    "Topic"         -> "Associations",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"GroupBy", "Mean"},
    "Question"      -> "Write a function that takes a list of {subject, mark} pairs and returns an Association of each subject's average mark.",
    "Template"      -> "averagesBySubject[entries_] := ___",
    "Hint"          -> "GroupBy with a key extractor and a reducing function does grouping and summarising in one step.",
    "TestCases"     -> {{{{"maths", 70}, {"physics", 65}, {"maths", 80}}, <|"maths" -> 75, "physics" -> 65|>}, {{{"a", 10}}, <|"a" -> 10|>}},
    "SampleAnswer"  -> "averagesBySubject[entries_] := GroupBy[entries, First -> Last, Mean]",
    "Explanation"   -> "GroupBy's three-argument form groups by the first field, extracts the second field from each entry, and reduces each group with Mean, in a single pass.",
    "Points"        -> 5
  |>,

  <|
    "ID"            -> "as-code-adv-2",
    "Topic"         -> "Associations",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"accumulation", "Do", "Lookup"},
    "Question"      -> "Write a function that takes a list of words and returns an Association mapping each word to how many times it occurred, built up with a loop rather than Counts.",
    "Template"      -> "wordCounts[words_] := Module[{___}, ___]",
    "Hint"          -> "Start from an empty Association and, for each word, look up its current count with a default of 0 and add one.",
    "TestCases"     -> {{{"to", "be", "to"}, <|"to" -> 2, "be" -> 1|>}, {{}, <||>}, {{"x"}, <|"x" -> 1|>}},
    "SampleAnswer"  -> "wordCounts[words_] := Module[{counter = <||>}, Do[counter[w] = Lookup[counter, w, 0] + 1, {w, words}]; counter]",
    "Explanation"   -> "The Lookup default is what keeps the first occurrence of each word from failing, since counter[w] alone would be Missing before that word has been seen. Counts[words] is the built-in equivalent.",
    "Points"        -> 5
  |>

};
