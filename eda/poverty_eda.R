
# set up working directory
# Set path
myHome<-path.expand("~")
# Set root folder 
myRoot <- c("Google Drive","poverty")
# set folder names
dataFolder <- c('data')
edaFolder <- c('eda')

# point to data folder
setwd(do.call("file.path",as.list(c(myHome,myRoot,dataFolder))))

# read in household training data 
houseA <- read.csv("A_hhold_train.csv", stringsAsFactors = F)
houseB <- read.csv("B_hhold_train.csv", stringsAsFactors = F)
houseC <- read.csv("C_hhold_train.csv", stringsAsFactors = F)

# read individual training data
indA <- read.csv("A_indiv_train.csv", stringsAsFactors = F)
indB <- read.csv("B_indiv_train.csv", stringsAsFactors = F)
indC <- read.csv("C_indiv_train.csv", stringsAsFactors = F)

# save training data
save(houseA, houseB, houseC, file = "poverty_hhold_train.Rdata")
save(indA, indB, indC, file = "poverty_ind_train.Rdata")

# read in household test data 
houseA.test <- read.csv("A_hhold_test.csv", stringsAsFactors = F)
houseB.test <- read.csv("B_hhold_test.csv", stringsAsFactors = F)
houseC.test <- read.csv("C_hhold_test.csv", stringsAsFactors = F)

# read individual test data
indA.test <- read.csv("A_indiv_test.csv", stringsAsFactors = F)
indB.test <- read.csv("B_indiv_test.csv", stringsAsFactors = F)
indC.test <- read.csv("C_indiv_test.csv", stringsAsFactors = F)

# save testing data
save(houseA.test, houseB.test, houseC.test, file = "poverty_hhold_test.Rdata")
save(indA.test, indB.test, indC.test, file = "poverty_ind_test.Rdata")

