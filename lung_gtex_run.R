
suppressMessages(library(igraph))
library(fna)

node_data_file <- c("example_data/lung_tissue_expression_gtex_abridged.csv")
normalization <- "none"
topology_file <- c(NA)

results <- generate_reduction(node_data_file, topology_file=topology_file, correlation_cutoff=0.65)
write_graph(results$graph, "example_data/lung_gtex_weighted_1000.graphml", format = "graphml")
write_graph(results$hierarchy, "example_data/lung_gtex_hierarchy_1000.graphml", format = "graphml")

gaf_annotate_graphml("example_data/lung_gtex_hierarchy_1000.graphml")






