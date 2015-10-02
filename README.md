Synposis
========

This PROLOG library provides a definite clause grammar (DCG) for
generating and parsing expressions in the DOT graph language. The DCG
allows you to generate DOT expressions from a PROLOG DSL, and it
allows you to parse DOT expressions into a the DSL.

Installation
============

doc_dcg is developed for SWI Prolog and available as a pack for installation:

```prolog
?- pack_install(dot_dcg).
```

Examples
========

* Load library into SWI Prolog session:

```prolog
?- use_module(library(dot_dcg).
```

* Parse DOT graph into DSL:

```prolog

?- dot(Dot, `digraph mygraph { node1;node2 [label=\"My node\"];node1->node2; }`, []).
Dot = digraph("mygraph", [node_stmt("node1"), node_stmt("node2", [attr("label", ""My node"")]), edge_stmt(["node1", "node2"])])

```

* Generate DOT graph from DSL expression:
```prolog

?- dot(digraph("mygraph", [edge_stmt(["node1", "node3"]), node*stmt("node2", [attr("label", "\"My node\"")]), edge*stmt(["node1", "node2"])]), X, []),
       format(X).
digraph mygraph {node1->node3;node2 [label="My node"];node1->node2}

```




