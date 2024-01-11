###
##
# Ecosystem service bundles manuscript
# Cluster ensemble across all systems
# Martin Oliver Reader, 11.04.2024
##
###

library(diceR)

##
# Load data

MID = read.csv("ES_Dataset.csv", header = TRUE, sep = ",")
MIDs = scale(MID[,c(9:33)])


##
# Cluster data

Output = consensus_cluster(t(MIDs), nk = c(4:6), reps = 500, algorithms = c("km", "hc", "gmm", "ap", "cmeans"), p.item = 1,
							   distance = c("euclidean"), progress = TRUE)



