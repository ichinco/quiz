require(tree)
require(rpart)
require(party)

flatfile <- read.csv("pets.csv")

t <- tree(animal ~ affectionate + weeklyTimeMax + monthlyCost + trainable + minEquipment + lifespan + noiseLevel + outdoorSpace + liveFood + nocturnal + smell + minInitialCost + isContained + litterTrained + allergic, data=flatfile,control=tree.control(mincut=1,minsize=2,nobs=nrow(flatfile)))

r <- rpart(animal ~ affectionate + weeklyTimeMax + monthlyCost + trainable + minEquipment + lifespan + noiseLevel + outdoorSpace + liveFood + nocturnal + smell + minInitialCost + isContained + litterTrained + allergic, data=flatfile, control=rpart.control(cp=.001, minsplit=1, minbucket=1),parms=list(split='information'))

c <- ctree(animal ~ affectionate + weeklyTimeMax + monthlyCost + trainable + minEquipment + lifespan + noiseLevel + outdoorSpace + liveFood + nocturnal + smell + minInitialCost + isContained + litterTrained + allergic, data=flatfile,controls=ctree_control(minsplit=1,minbucket=1,stump=TRUE))

## used <- c("animal")

## for (column in names(flatfile)) {
##     isUsed = FALSE
##     for (usedColumn in used) {
##         if (column == usedColumn) {
##             isUsed = TRUE
##         }
##     }

##     if (!isUsed) {

##     }
## }
