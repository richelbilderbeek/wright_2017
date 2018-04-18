library(treeio)
library(ggtree)
library(ggplot2)
filename <- "41598_2017_13979_MOESM2_ESM_no_delete.txt.con.tre"
testit::assert(file.exists(filename))
beast <- treeio::read.beast(filename)
ggtree(beast) + ggtree::geom_tiplab() + theme_tree2()
