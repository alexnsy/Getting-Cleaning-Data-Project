# Getting-Cleaning-Data-Project
This readme describes the steps that the run_analysis.R script will perform.

# What does the run_analysis.r script do?
The script works on the data sets sourced from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

Run the file in the unzipped folder \\UCI HAR Dataset. 
The script will run the following steps.

1. Merge the training and test data sets. 

  - \\UCI HAR Dataset\\train\\X_train.txt
  - \\UCI HAR Dataset\\train\\y_train.txt
  - \\UCI HAR Dataset\\train\\subject_train.txt
  - \\UCI HAR Dataset\\test\\X_test.txt
  - \\UCI HAR Dataset\\test\\y_test.txt
  - \\UCI HAR Dataset\\test\\subject_test.txt

2. Replaces the column names of the data set with descriptive variable names from \\UCI HAR Dataset\\features.txt.

3. Extracts only the measurements on the mean and standard deviation for each measurement type.

4. Replaces the activity codes within the data set with descriptive activity names from \\UCI HAR Dataset\\activity_labels.txt.

5. From the dataset in step 4, creates a second independent tidy data set with the average of each variable for each activity and each subject.
  - The final tidy data set is named: "tidyData"
  - An output file "tidyData_average.txt" will be generated. 

# Dependencies
  - "reshape2" library

