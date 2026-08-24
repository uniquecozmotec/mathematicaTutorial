ClearAll[graphQuestions];
graphQuestions = {

  (* ---------------- BEGINNER ---------------- *)

  <|
    "ID"           -> "gr-mcq-single-beg-1",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"representation"},
    "Question"     -> "In an adjacency list represented as an Association, what does each value hold?",
    "Options"      -> {"The list of nodes that node connects to", "The total number of edges in the graph", "The distance from the start node", "The node's own name"},
    "Answer"       -> "The list of nodes that node connects to",
    "Explanation"  -> "Each key is a node, and its value is the list of neighbours reachable directly from it by one edge.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "gr-mcq-single-beg-2",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"BFS", "order"},
    "Question"     -> "In what order does breadth-first search visit nodes?",
    "Options"      -> {"In order of increasing distance from the start", "In alphabetical order", "In a random order", "In order of decreasing distance from the start"},
    "Answer"       -> "In order of increasing distance from the start",
    "Explanation"  -> "Breadth-first search explores everything one step away before anything two steps away, which is what gives it its layer-by-layer order.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "gr-mcq-multi-beg-1",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"BFS", "DFS"},
    "Question"     -> "Which statements about breadth-first and depth-first search are true?",
    "Options"      -> {"Both visit every node reachable from the start", "Breadth-first search uses a queue", "Depth-first search follows one path as far as possible before backtracking", "They always visit nodes in the same order as each other"},
    "Answer"       -> {"Both visit every node reachable from the start", "Breadth-first search uses a queue", "Depth-first search follows one path as far as possible before backtracking"},
    "Explanation"  -> "Both reach the same set of reachable nodes, but the order generally differs, because a queue explores outward in layers while a stack, or recursion, plunges down one path first.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "gr-mcq-multi-beg-2",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Beginner",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"visited set"},
    "Question"     -> "Why does a graph traversal need to track which nodes have already been visited?",
    "Options"      -> {"To avoid processing the same node twice", "To guarantee the traversal terminates on a graph with a cycle", "Because a graph cannot otherwise be represented", "Because Lookup requires it"},
    "Answer"       -> {"To avoid processing the same node twice", "To guarantee the traversal terminates on a graph with a cycle"},
    "Explanation"  -> "Without a visited check, a cycle would send the traversal round the same loop forever, since each node in the cycle would keep leading back to a node already seen.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "gr-blank-beg-1",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"Lookup", "default"},
    "Question"     -> "Complete so that a node with no outgoing edges, or one not listed at all, causes no error.",
    "Template"     -> "Lookup[graph, node, ___]",
    "Hint"         -> "The neighbours of such a node should be treated as if there were none.",
    "Answer"       -> "{}",
    "Explanation"  -> "Supplying an empty list as the default means a node that was never given its own key is simply treated as having no neighbours, rather than producing a Missing object that would stop the traversal.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "gr-blank-beg-2",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Beginner",
    "Type"         -> "Blanks",
    "Tags"         -> {"undirected graph"},
    "Question"     -> "Complete the adjacency list so that the edge between \"a\" and \"b\" is undirected.",
    "Template"     -> "<|\"a\" -> {\"b\"}, \"b\" -> {___}|>",
    "Hint"         -> "An undirected edge is listed in both directions.",
    "Answer"       -> "\"a\"",
    "Explanation"  -> "In an undirected graph, every edge is listed from both ends, so \"b\" must list \"a\" as a neighbour just as \"a\" lists \"b\".",
    "Points"       -> 1
  |>,

  <|
    "ID"            -> "gr-code-beg-1",
    "Topic"         -> "Graph Algorithms",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"neighbours"},
    "Question"      -> "Write a function of two arguments that returns the neighbours of a node in a graph given as an Association, or the empty list if the node has none.",
    "Template"      -> "neighboursOf[graph_, node_] := ___",
    "Hint"         -> "Use Lookup with a default of the empty list.",
    "TestCases"     -> {{{<|1 -> {2, 3}, 2 -> {}|>, 1}, {2, 3}}, {{<|1 -> {2, 3}, 2 -> {}|>, 2}, {}}, {{<|1 -> {2, 3}, 2 -> {}|>, 99}, {}}},
    "SampleAnswer"  -> "neighboursOf[graph_, node_] := Lookup[graph, node, {}]",
    "Explanation"   -> "Lookup with a default handles both a node listed with no neighbours and a node not listed at all, returning the empty list in either case.",
    "Points"        -> 3
  |>,

  <|
    "ID"            -> "gr-code-beg-2",
    "Topic"         -> "Graph Algorithms",
    "Difficulty"    -> "Beginner",
    "Type"          -> "Code Writing",
    "Tags"          -> {"edge count"},
    "Question"      -> "Write a function that returns the total number of directed edges in a graph given as an Association.",
    "Template"      -> "edgeCount[graph_] := ___",
    "Hint"         -> "Add up the number of neighbours listed for each node.",
    "TestCases"     -> {{<|1 -> {2, 3}, 2 -> {}, 3 -> {1}|>, 3}, {<||>, 0}, {<|1 -> {}|>, 0}},
    "SampleAnswer"  -> "edgeCount[graph_] := Total[Map[Length, Values[graph]]]",
    "Explanation"   -> "Values gives the neighbour lists, Map[Length, ...] gives how many edges leave each node, and Total adds them up. An empty graph correctly gives 0.",
    "Points"        -> 3
  |>,

  (* ---------------- INTERMEDIATE ---------------- *)

  <|
    "ID"           -> "gr-mcq-single-int-1",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"BFS", "mechanism"},
    "Question"     -> "In the breadth-first search algorithm given in this section, when is a node marked visited?",
    "Options"      -> {"When it is added to the queue", "When it is removed from the queue", "Only after all its neighbours have been processed", "Never; only the queue is tracked"},
    "Answer"       -> "When it is added to the queue",
    "Explanation"  -> "Marking a node visited as soon as it is queued, rather than when it is processed, stops the same node from being queued more than once by different neighbours.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "gr-mcq-single-int-2",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"shortest path", "weighted"},
    "Question"     -> "Why does breadth-first search fail to give shortest paths on a graph with weighted edges?",
    "Options"      -> {"It finds the path with fewest edges, not the smallest total weight", "It does not terminate on weighted graphs", "It only works on undirected graphs", "It cannot be used with an Association-based representation"},
    "Answer"       -> "It finds the path with fewest edges, not the smallest total weight",
    "Explanation"  -> "Breadth-first search treats every edge as costing the same one step, so a path with more edges but lower total weight would not be found as the shortest.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "gr-mcq-multi-int-1",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"distances"},
    "Question"     -> "Which statements about computing shortest path lengths with breadth-first search are true?",
    "Options"      -> {"A node's distance is one more than the distance of the node it was reached from", "The start node has distance 0", "A node the traversal never reaches simply has no recorded distance", "Every node in the graph always ends up with a distance"},
    "Answer"       -> {"A node's distance is one more than the distance of the node it was reached from", "The start node has distance 0", "A node the traversal never reaches simply has no recorded distance"},
    "Explanation"  -> "An unreachable node is not an error case needing special handling; it simply never gets a key in the distances Association, which is easily tested with KeyExistsQ.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "gr-mcq-multi-int-2",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"DFS", "recursion"},
    "Question"     -> "Which statements about the recursive depth-first search given in this section are true?",
    "Options"      -> {"The helper function must be declared in the Module's variable list", "Without that declaration, two traversals on different graphs could interfere with each other", "The recursion naturally does the backtracking", "It requires an explicit stack data structure to be built by hand"},
    "Answer"       -> {"The helper function must be declared in the Module's variable list", "Without that declaration, two traversals on different graphs could interfere with each other", "The recursion naturally does the backtracking"},
    "Explanation"  -> "Recursive depth-first search needs no explicit stack, since the call stack already provides it. What it does need is correct scoping of its helper function, or repeated calls will clobber one another.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "gr-blank-int-1",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"reachability"},
    "Question"     -> "Complete so that reachability from one node to another is tested using breadth-first search.",
    "Template"     -> "reachableQ[graph_, from_, to_] := ___[bfs[graph, from], to]",
    "Hint"         -> "This function tests whether a value occurs anywhere in a list.",
    "Answer"       -> "MemberQ",
    "Explanation"  -> "bfs[graph, from] returns every node reachable from from, so testing membership of to in that list answers the reachability question directly.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "gr-blank-int-2",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Intermediate",
    "Type"         -> "Blanks",
    "Tags"         -> {"distances", "termination"},
    "Question"     -> "Complete so that a node already given a distance is not queued a second time.",
    "Template"     -> "Do[If[! ___[dist, nbr], dist[nbr] = d + 1; queue = Append[queue, nbr]], {nbr, Lookup[graph, node, {}]}]",
    "Hint"         -> "Having a distance already is exactly what it means to have been visited.",
    "Answer"       -> "KeyExistsQ",
    "Explanation"  -> "KeyExistsQ[dist, nbr] doubles as the visited check here, since a node is given a distance at the same moment it would otherwise have been marked visited.",
    "Points"       -> 2
  |>,

  <|
    "ID"            -> "gr-code-int-1",
    "Topic"         -> "Graph Algorithms",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"BFS"},
    "Question"      -> "Write bfs[graph, start], returning the list of all nodes reachable from start, in breadth-first order (start included).",
    "Template"      -> "bfs[graph_, start_] := ___",
    "Hint"         -> "Keep a queue and a visited list; take from the front of the queue, add unvisited neighbours to the back.",
    "TestCases"     -> {{{<|1 -> {2, 3}, 2 -> {4}, 3 -> {4}, 4 -> {}|>, 1}, {1, 2, 3, 4}}, {{<|1 -> {2, 3}, 2 -> {4}, 3 -> {4}, 4 -> {}|>, 4}, {4}}, {{<|1 -> {}|>, 1}, {1}}},
    "SampleAnswer"  -> "bfs[graph_, start_] := Module[{visited = {start}, queue = {start}, node}, While[queue =!= {}, node = First[queue]; queue = Rest[queue]; Do[If[! MemberQ[visited, nbr], visited = Append[visited, nbr]; queue = Append[queue, nbr]], {nbr, Lookup[graph, node, {}]}]]; visited]",
    "Explanation"   -> "The queue processed front-to-back, together with the visited check on enqueue, is what produces the breadth-first order and guarantees termination on graphs with cycles.",
    "Points"        -> 4
  |>,

  <|
    "ID"            -> "gr-code-int-2",
    "Topic"         -> "Graph Algorithms",
    "Difficulty"    -> "Intermediate",
    "Type"          -> "Code Writing",
    "Tags"          -> {"DFS", "recursive"},
    "Question"      -> "Write dfs[graph, start], returning the list of all nodes reachable from start in depth-first order (start included), using recursion.",
    "Template"      -> "dfs[graph_, start_] := ___",
    "Hint"         -> "A helper function, correctly localised inside the Module, should visit a node and then recurse into each of its unvisited neighbours.",
    "TestCases"     -> {{{<|1 -> {2, 3}, 2 -> {4}, 3 -> {4}, 4 -> {}|>, 1}, {1, 2, 4, 3}}, {{<|1 -> {}|>, 1}, {1}}},
    "SampleAnswer"  -> "dfs[graph_, start_] := Module[{visited = {}, visit}, visit[node_] := If[! MemberQ[visited, node], visited = Append[visited, node]; Do[visit[nbr], {nbr, Lookup[graph, node, {}]}]]; visit[start]; visited]",
    "Explanation"   -> "The helper visit is declared in the Module's variable list, so each call to dfs gets its own private copy rather than sharing one global definition across calls.",
    "Points"        -> 4
  |>,

  (* ---------------- ADVANCED ---------------- *)

  <|
    "ID"           -> "gr-mcq-single-adv-1",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"cycle detection"},
    "Question"     -> "A node lies on a cycle when which condition holds?",
    "Options"      -> {"It can reach itself by following at least one outgoing edge", "It has no outgoing edges", "It is the start node of the traversal", "Its distance from the start is 0"},
    "Answer"       -> "It can reach itself by following at least one outgoing edge",
    "Explanation"  -> "Searching from each of a node's direct neighbours and checking whether the node itself turns up in that search is exactly this condition, tested directly.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "gr-mcq-single-adv-2",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Single",
    "Tags"         -> {"memory", "deep graphs"},
    "Question"     -> "On a very deep, narrow graph, why might depth-first search be preferred over breadth-first search on memory grounds?",
    "Options"      -> {"Depth-first search holds roughly one path's worth of state, while breadth-first search can hold a whole layer", "Depth-first search never needs a visited set", "Breadth-first search cannot handle deep graphs at all", "They use exactly the same amount of memory in every case"},
    "Answer"       -> "Depth-first search holds roughly one path's worth of state, while breadth-first search can hold a whole layer",
    "Explanation"  -> "A wide layer in breadth-first search's queue can be far larger than the single path depth-first search is following at any moment, which matters on graphs that are deep rather than wide.",
    "Points"       -> 1
  |>,

  <|
    "ID"           -> "gr-mcq-multi-adv-1",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"SameQ ambiguity"},
    "Question"     -> "Why must Code Writing questions about shortest paths on this platform avoid asking for the path itself when several equally short paths exist?",
    "Options"      -> {"Grading compares the submitted output against a fixed expected value with SameQ", "Two different correct algorithms might return two different, equally valid paths", "Asking for the path length instead avoids the ambiguity", "SameQ automatically accepts any equally short path"},
    "Answer"       -> {"Grading compares the submitted output against a fixed expected value with SameQ", "Two different correct algorithms might return two different, equally valid paths", "Asking for the path length instead avoids the ambiguity"},
    "Explanation"  -> "Because grading is exact equality against one stored expected value, a question with more than one valid correct answer needs to be phrased so that the expected value is unique, for instance by asking for a distance rather than a specific path.",
    "Points"       -> 2
  |>,

  <|
    "ID"           -> "gr-mcq-multi-adv-2",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Advanced",
    "Type"         -> "MCQ-Multiple",
    "Tags"         -> {"efficient cycle detection"},
    "Question"     -> "Which statements about detecting a cycle by running a full traversal from every node are true?",
    "Options"      -> {"It correctly identifies whether any cycle exists", "It is not the most efficient approach, since it repeats work across nodes", "A single depth-first search tracking the current path can detect a cycle in one pass", "It is the only possible way to detect a cycle"},
    "Answer"       -> {"It correctly identifies whether any cycle exists", "It is not the most efficient approach, since it repeats work across nodes", "A single depth-first search tracking the current path can detect a cycle in one pass"},
    "Explanation"  -> "Running a traversal per node is correct but wasteful, because it repeats work; a single depth-first search that tracks which nodes are on the current path finds the same answer in one pass.",
    "Points"        -> 2
  |>,

  <|
    "ID"           -> "gr-blank-adv-1",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"cycle detection"},
    "Question"     -> "Complete so that a node is reported as being on a cycle if it can reach itself through any of its neighbours.",
    "Template"     -> "onCycleQ[graph_, node_] := AnyTrue[Lookup[graph, node, {}], MemberQ[bfs[graph, #], ___] &]",
    "Hint"         -> "The value being searched for is the node itself.",
    "Answer"       -> "node",
    "Explanation"  -> "Searching from each neighbour and checking whether node itself is reachable is exactly the condition for node lying on a cycle.",
    "Points"       -> 3
  |>,

  <|
    "ID"           -> "gr-blank-adv-2",
    "Topic"        -> "Graph Algorithms",
    "Difficulty"   -> "Advanced",
    "Type"         -> "Blanks",
    "Tags"         -> {"whole-graph check"},
    "Question"     -> "Complete so that the whole graph is reported as having a cycle if any node lies on one.",
    "Template"     -> "hasCycleQ[graph_] := ___[Keys[graph], onCycleQ[graph, #] &]",
    "Hint"         -> "The result should be True if the test succeeds for at least one key.",
    "Answer"       -> "AnyTrue",
    "Explanation"  -> "AnyTrue checks the condition across every node and returns True as soon as one node satisfies it, which is exactly whether the graph contains a cycle at all.",
    "Points"       -> 3
  |>,

  <|
    "ID"            -> "gr-code-adv-1",
    "Topic"         -> "Graph Algorithms",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"shortest distance", "BFS"},
    "Question"      -> "Write distances[graph, start], returning an Association mapping every node reachable from start to its distance in edges. distances[graph, start][start] should be 0.",
    "Template"      -> "distances[graph_, start_] := ___",
    "Hint"         -> "Reuse breadth-first search's queue, but record one more than the distance of the node each neighbour was reached from instead of a plain visited list.",
    "TestCases"     -> {{{<|1 -> {2, 3}, 2 -> {4}, 3 -> {4}, 4 -> {}|>, 1}, <|1 -> 0, 2 -> 1, 3 -> 1, 4 -> 2|>}, {{<|1 -> {}|>, 1}, <|1 -> 0|>}},
    "SampleAnswer"  -> "distances[graph_, start_] := Module[{dist = <|start -> 0|>, queue = {start}, node, d}, While[queue =!= {}, node = First[queue]; queue = Rest[queue]; d = dist[node]; Do[If[! KeyExistsQ[dist, nbr], dist[nbr] = d + 1; queue = Append[queue, nbr]], {nbr, Lookup[graph, node, {}]}]]; dist]",
    "Explanation"   -> "The Association dist doubles as both the distance record and the visited set: a node has been visited exactly when it has an entry, and that entry is one more than the distance of the node it was reached from.",
    "Points"        -> 5
  |>,

  <|
    "ID"            -> "gr-code-adv-2",
    "Topic"         -> "Graph Algorithms",
    "Difficulty"    -> "Advanced",
    "Type"          -> "Code Writing",
    "Tags"          -> {"connected components"},
    "Question"      -> "Write a function that returns the connected components of an undirected graph (given as an Association where every edge is listed in both directions), as a list of lists of nodes.",
    "Template"      -> "components[graph_] := ___",
    "Hint"         -> "Repeatedly run bfs from any node not yet placed in a component, and collect the results.",
    "TestCases"     -> {{<|1 -> {2}, 2 -> {1}, 3 -> {4}, 4 -> {3}, 5 -> {}|>, {{1, 2}, {3, 4}, {5}}}, {<|1 -> {2}, 2 -> {1}|>, {{1, 2}}}},
    "SampleAnswer"  -> "components[graph_] := Module[{remaining = Keys[graph], comps = {}, comp}, While[remaining =!= {}, comp = bfs[graph, First[remaining]]; comps = Append[comps, comp]; remaining = Complement[remaining, comp]]; comps]",
    "Explanation"   -> "Each pass finds the whole component containing an unclaimed node and removes that component from the remaining pool, so nodes already assigned to a component are never revisited from scratch.",
    "Points"        -> 5
  |>

};
