rm(list=ls())

library(plyr)

setwd("/Users/mimihoang/coursera/getdata-008/")

# read in all the data sets to do preprocessing
activityLabel <- read.table("./data/activity_labels.txt")
features <- read.table("./data/features.txt")
testSubj <- read.table("./data/test/subject_test.txt")
testX <- read.table("./data/test/X_test.txt")
testY <- read.table("./data/test/y_test.txt")
trainSubj <- read.table("./data/train/subject_train.txt")
trainX <- read.table("./data/train/X_train.txt")
trainY <- read.table("./data/train/y_train.txt")

# normalize the text, change activity lable to all lowercase
activityLabel <- tolower(activityLabel$V2)

# remove () and , from the feature field names 
features <- gsub("\\()", "", features$V2)
features <- gsub(",", "-", features)

# add column names for activity and participant data set
names(testY) <- names(trainY) <- "activity"
names(testSubj) <- names(trainSubj) <- "participant"
names(testX) <- names(trainX) <- features

# combine columns for activity and participant for both test and training dataset and then combine all of them 
# together into a dataframe
testDF <- data.frame(testY, testSubj)
trainDF <- data.frame(trainY, trainSubj)
combineYSubjDF <- rbind(testDF, trainDF)

# combine both test and train data sets
combineDF <- rbind(testX, trainX)

# get only the columns that have mean or std data from teh dataframe
meanStdCol <- grep("mean|std", names(combineDF))

# combine the activity & participant dataframe with the mean & std dataframe
final <- cbind(combineYSubjDF, combineDF[,meanStdCol])


# get an average for different fields by participant and activity
tidyDF <- aggregate(final, list(final$participant, final$activity), mean)

#replace activity number with value
tidyDF$activity <- mapvalues(tidyDF$activity, from = levels(factor(tidyDF$activity)), to = activityLabel)

# clean up the column names
tidyDF$Group.1 <- NULL
tidyDF$Group.2 <- NULL

collapse (colnames(tidyDF)
# write the data out to activitydata.txt file
write.table(file = "activitydata.txt", x = tidyDF, row.names = FALSE)

