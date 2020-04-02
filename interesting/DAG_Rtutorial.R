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
