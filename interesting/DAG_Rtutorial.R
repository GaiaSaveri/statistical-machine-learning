library(bnlearn)
dag<-empty.graph(nodes=c("A", "B", "C", "D", "E", "F", "G","H"))
arc.set<-matrix(c("A", "B",
                  "B", "D",
                  "A", "F",
                  "D", "G",
                  "F", "G",
                  "E", "H",
                  "B", "H"),
                byrow = TRUE, ncol = 2,
                dimnames = list(NULL, c("from", "to")))
arcs(dag)<-arc.set
plot(dag)
graphviz.plot(dag, layout = "circo")
dsep(dag, x="A", y="B")
dsep(dag, x="A", y="C")
dsep(dag, x="A", y="D", z=c("B", "H"))
dsep(dag, x="A", y="E", z="F")
dsep(dag, x="G", y="E", z="B")
dsep(dag, x="F", y="C", z="D")
dsep(dag, x="E", y="D", z="B")
dsep(dag, x="C", y="H", z="G")
