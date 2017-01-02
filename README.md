# GettingAndCleaningDataProject

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

tgravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


Tidy and summarized data
==========================
The data was tidied and summarized and written in in file tidy_summarized.csv.

The mean of mean and standard deviation, respectively, was obtained for each activity and each subject.  In total there are 180 rows and 81 columns.


Column names for summarized data
dim 180 X 81

1. activityLabel
2. subject
3. mean_tBodyAcc_mean_X
4. mean_tBodyAcc_mean_Y
5. mean_tBodyAcc_mean_Z
6. mean_tBodyAcc_std_X
7. mean_tBodyAcc_std_Y
8. mean_tBodyAcc_std_Z
9. mean_tGravityAcc_mean_X
10. mean_tGravityAcc_mean_Y
11. mean_tGravityAcc_mean_Z
12. mean_tGravityAcc_std_X
13. mean_tGravityAcc_std_Y
14. mean_tGravityAcc_std_Z
15. mean_tBodyAccJerk_mean_X
16. mean_tBodyAccJerk_mean_Y
17. mean_tBodyAccJerk_mean_Z
18. mean_tBodyAccJerk_std_X
19. mean_tBodyAccJerk_std_Y
20. mean_tBodyAccJerk_std_Z
21. mean_tBodyGyro_mean_X
22. mean_tBodyGyro_mean_Y
23. mean_tBodyGyro_mean_Z
24. mean_tBodyGyro_std_X
25. mean_tBodyGyro_std_Y
26. mean_tBodyGyro_std_Z
27. mean_tBodyGyroJerk_mean_X
28. mean_tBodyGyroJerk_mean_Y
29. mean_tBodyGyroJerk_mean_Z
30. mean_tBodyGyroJerk_std_X
31. mean_tBodyGyroJerk_std_Y
32. mean_tBodyGyroJerk_std_Z
33. mean_tBodyAccMag_mean
34. mean_tBodyAccMag_std
35. mean_tGravityAccMag_mean
36. mean_tGravityAccMag_std
37. mean_tBodyAccJerkMag_mean
38. mean_tBodyAccJerkMag_std
39. mean_tBodyGyroMag_mean
40. mean_tBodyGyroMag_std
41. mean_tBodyGyroJerkMag_mean
42. mean_tBodyGyroJerkMag_std
43. mean_fBodyAcc_mean_X
44. mean_fBodyAcc_mean_Y
45. mean_fBodyAcc_mean_Z
46. mean_fBodyAcc_std_X
47. mean_fBodyAcc_std_Y
48. mean_fBodyAcc_std_Z
49. mean_fBodyAcc_meanFreq_X
50. mean_fBodyAcc_meanFreq_Y
51. mean_fBodyAcc_meanFreq_Z
52. mean_fBodyAccJerk_mean_X
53. mean_fBodyAccJerk_mean_Y
54. mean_fBodyAccJerk_mean_Z
55. mean_fBodyAccJerk_std_X
56. mean_fBodyAccJerk_std_Y
57. mean_fBodyAccJerk_std_Z
58. mean_fBodyAccJerk_meanFreq_X
59. mean_fBodyAccJerk_meanFreq_Y
60. mean_fBodyAccJerk_meanFreq_Z
61. mean_fBodyGyro_mean_X
62. mean_fBodyGyro_mean_Y
63. mean_fBodyGyro_mean_Z
64. mean_fBodyGyro_std_X
65. mean_fBodyGyro_std_Y
66. mean_fBodyGyro_std_Z
67. mean_fBodyGyro_meanFreq_X
68. mean_fBodyGyro_meanFreq_Y
69. mean_fBodyGyro_meanFreq_Z
70. mean_fBodyAccMag_mean
71. mean_fBodyAccMag_std
72. mean_fBodyAccMag_meanFreq
73. mean_fBodyBodyAccJerkMag_mean
74. mean_fBodyBodyAccJerkMag_std
75. mean_fBodyBodyAccJerkMag_meanFreq
76. mean_fBodyBodyGyroMag_mean
77. mean_fBodyBodyGyroMag_std
78. mean_fBodyBodyGyroMag_meanFreq
79. mean_fBodyBodyGyroJerkMag_mean
80. mean_fBodyBodyGyroJerkMag_std
81. mean_fBodyBodyGyroJerkMag_meanFreq


Information about files used in code:
=====================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws


dataset links:
===============
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

