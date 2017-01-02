CodeBook
============

Add dplyr library

# Combined Y date sets (y_train and y_test) - activity numbers
# Combined subjec date sets (subject_train and subject_test) - subjects (1 to 30)
# Combined Activity and Subjects columns
# Got collumn names for x_train and x_test data sets from feature.txt
# Assigned columnn names to x_train and x_test data while reading the data
# combined x_train and x_test data
# Extracted only the measurements with  mean and standard deviation  
# Read the lookup table for activities labels
# Replaced the the activity serial number with descriptive activity_labels
# 
# created Independent tidy data set with the average of each variable for each activity and each subject.
# wrote the out file "tidy_summarized.csv"

Activities:
--------------
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

Subjects:
------------
1 - 30

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
