# This "run_analysis.R" script will perform the following:
# 1. Merge the training and test data sets into a single data set.
#    - including replacing the column names of the dataset with descriptive variable names.
# 2. Extract only the mean and standard deviation data for each measurement type.
# 3. Replace the activity codes with descriptive activity name. 
# 4. Create a 2nd independent tidy data set with the average of each variable for each activity and each subject.

# Load libraries 
library(reshape2)

#1. Merge the training and test data sets into a single data set.
#Load the training data set
train_S <- read.table("train/subject_train.txt")
train_X <- read.table("train/X_train.txt")
train_Y <- read.table("train/y_train.txt")

#Load the test data set
test_S <- read.table("test/subject_test.txt")
test_X <- read.table("test/X_test.txt")
test_Y <- read.table("test/y_test.txt")

#Load the features data
features <- read.table("features.txt")

#Load the activity type data
activityType <- as.character(read.table("activity_labels.txt")[,2])

#Replaces the column names of the dataset with descriptive variable names
colnames(train_X) = features[,2]
colnames(test_X) = features[,2]

colnames(train_S) = "Subject"
colnames(test_S) = "Subject"

colnames(train_Y) = "Activity"
colnames(test_Y) = "Activity"

#Combine the datasets
combined_train <- cbind(train_S, train_Y, train_X)
combined_test <- cbind(test_S, test_Y, test_X)
combined <- rbind(combined_train, combined_test)

#2. Extract only the mean and standard deviation for each measurement
final_data <- combined[,c(1,      #Subject
                          2,      #Activity
                          3:8,    #tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z, tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z 
                          43:48,  #tGravityAcc-mean()-X, tGravityAcc-mean()-Y, tGravityAcc-mean()-Z, tGravityAcc-std()-X, tGravityAcc-std()-Y, tGravityAcc-std()-Z 
                          83:88,  #tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y,, tBodyAccJerk-mean()-Z, tBodyAccJerk-std()-X, tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z
                          123:128, #tBodyGyro-mean()-X, tBodyGyro-mean()-Y, tBodyGyro-mean()-Z, tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z
                          163:168, #tBodyGyroJerk-mean()-X, tBodyGyroJerk-mean()-Y, tBodyGyroJerk-mean()-Z, tBodyGyroJerk-std()-X, tBodyGyroJerk-std()-Y, tBodyGyroJerk-std()-Z
                          203:204, #tBodyAccMag-mean(), tBodyAccMag-std()
                          216:217, #tGravityAccMag-mean(), tGravityAccMag-std()
                          242:243, #tBodyGyroMag-mean(), tBodyGyroMag-std()
                          268:273, #fBodyAcc-mean()-X, fBodyAcc-mean()-Y, fBodyAcc-mean()-Z, fBodyAcc-std()-X, fBodyAcc-std()-Y, fBodyAcc-std()-Z
                          347:352, #fBodyAccJerk-mean()-X, fBodyAccJerk-mean()-Y, fBodyAccJerk-mean()-Z, fBodyAccJerk-std()-X, fBodyAccJerk-std()-Y, fBodyAccJerk-std()-Z
                          426:431, #fBodyGyro-mean()-X, fBodyGyro-mean()-Y, fBodyGyro-mean()-Z, fBodyGyro-std()-X, fBodyGyro-std()-Y, fBodyGyro-std()-Z
                          505:506, #fBodyAccMag-mean(), fBodyAccMag-std()
                          518:519, #fBodyBodyAccJerkMag-mean(), fBodyBodyAccJerkMag-std()
                          544:545, #fBodyBodyGyroJerkMag-mean(), fBodyBodyGyroJerkMag-std()
                          558:563)] #angle(tBodyAccJerkMean),gravityMean), angle(tBodyGyroMean,gravityMean), angle(tBodyGyroJerkMean,gravityMean), angle(X,gravityMean), angle(Y,gravityMean), angle(Z,gravityMean)

#3. Replace the activity codes with descriptive activity name. 
final_data[,2] <- factor(final_data[,2], levels=c(1:6), labels=activityType)

#4. Create a 2nd independent tidy data set with the average of each variable for each activity and each subject.
temp <- melt(final_data, id=c("Subject", "Activity"), measure.vars=names(final_data[3:length(final_data)]))

tidyData <- dcast(temp, Subject + Activity ~ variable, mean)

#Save the new tidy dataset as a text file output
write.table(tidyData, file="tidyData_average.txt", row.names=FALSE)






