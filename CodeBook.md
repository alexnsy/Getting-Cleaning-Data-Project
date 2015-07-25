# Getting-Cleaning-Data-Project CodeBook
This codebook describes the data within the final output tidy dataset: 'tidyData' or 'tidyData-average.txt'. 

# Overview
The final tidy dataset "tidyData" is comprised of 68 variables / columns.
1st variable "Subject" is the id of the volunteers for the tests.
2nd variable "Activity" is the descriptive activity name. 

Variables 3 to 68 are average values of the measurements for each combination of Subject and Activity.
Only mean and standard deviation related variables were extracted from the original dataset.  

There are a total of 180 observations: 30 subjects x 6 different activity types.

# Variables List
1. Subject
2. Activity
3. tBodyAcc-mean()-X
4. tBodyAcc-mean()-Y
5. tBodyAcc-mean()-Z
6. tBodyAcc-std()-X
7. tBodyAcc-std()-Y
8. tBodyAcc-std()-Z
9. tGravityAcc-mean()-X
10. tGravityAcc-mean()-Y
11. tGravityAcc-mean()-Z
12. tGravityAcc-std()-X
13. tGravityAcc-std()-Y
14. tGravityAcc-std()-Z
15. tBodyAccJerk-mean()-X
16. tBodyAccJerk-mean()-Y
17. tBodyAccJerk-mean()-Z
18. tBodyAccJerk-std()-X
19. tBodyAccJerk-std()-Y
20. tBodyAccJerk-std()-Z
21. tBodyGyro-mean()-X
22. tBodyGyro-mean()-Y
23. tBodyGyro-mean()-Z
24. tBodyGyro-std()-X
25. tBodyGyro-std()-Y
26. tBodyGyro-std()-Z
27. tBodyGyroJerk-mean()-X
28. tBodyGyroJerk-mean()-Y
29. tBodyGyroJerk-mean()-Z
30. tBodyGyroJerk-std()-X
31. tBodyGyroJerk-std()-Y
32. tBodyGyroJerk-std()-Z
33. tBodyAccMag-mean()
34. tBodyAccMag-std()
35. tGravityAccMag-mean()
36. tGravityAccMag-std()
37. tBodyGyroMag-mean()
38. tBodyGyroMag-std()
39. fBodyAcc-mean()-X
40. fBodyAcc-mean()-Y
41. fBodyAcc-mean()-Z
42. fBodyAcc-std()-X
43. fBodyAcc-std()-Y
44. fBodyAcc-std()-Z
45. fBodyAccJerk-mean()-X
46. fBodyAccJerk-mean()-Y
47. fBodyAccJerk-mean()-Z
48. fBodyAccJerk-std()-X
49. fBodyAccJerk-std()-Y
50. fBodyAccJerk-std()-Z
51. fBodyGyro-mean()-X
52. fBodyGyro-mean()-Y
53. fBodyGyro-mean()-Z
54. fBodyGyro-std()-X
55. fBodyGyro-std()-Y
56. fBodyGyro-std()-Z
57. fBodyAccMag-mean()
58. fBodyAccMag-std()
59. fBodyBodyAccJerkMag-mean()
60. fBodyBodyAccJerkMag-std()
61. BodyBodyGyroJerkMag-mean()
62. fBodyBodyGyroJerkMag-std()
63. angle(tBodyAccJerkMean),gravityMean)
64. angle(tBodyGyroMean,gravityMean)
65. angle(tBodyGyroJerkMean,gravityMean)
66. angle(X,gravityMean)
67. angle(Y,gravityMean)
68. angle(Z,gravityMean)

# Further description of the variables (adapted from 'features_info.txt')
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are:
mean(): Mean value
std(): Standard deviation
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
