# Getting-Cleaning-Data-Project
This readme describes the steps that the run_analysis.R script will perform.

# What does the run_analysis.r script do?
The script works on the data sets sourced from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Run the file in the unzipped folder \UCI HAR Dataset. 

This script performs the following:
1. Merges the training and test data sets. The following files are merged:
	- \UCI HAR Dataset\train\X_train.txt
	- \UCI HAR Dataset\train\y_train.txt
	- \UCI HAR Dataset\train\subject_train.txt
	- \UCI HAR Dataset\test\X_test.txt
    - \UCI HAR Dataset\test\y_test.txt
    - \UCI HAR Dataset\test\subject_test.txt
	
   Replaces the column names of the dataset with descriptive variable names.
   - Source the descriptive variable names from \UCI HAR Dataset\features.txt
	
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
- All other columns are dropped.

3. Replaces the activity codes with descriptive activity names.
- Source the descriptive activity names from \UCI HAR Dataset\activity_labels.txt
- Replace within the dataset.

4. From the dataset in step 4, creates a second independent tidy data set with the average of each variable for each activity and each subject.
- The final tidy data set is named: "tidyData"
- An output file "tidyData_average.txt" will be generated. 

# Dependencies
- 'reshape2' library