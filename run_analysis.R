# Direections
# =============
# # You should create one R script called run_analysis.R that does the following.
# 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


library("tidyr")
library("dplyr")

# Get Activity numbers for Train Data
yTrain<-read.table("./train/y_train.txt", sep=" ", col.names="activityNo", fill=FALSE, strip.white=TRUE)
yTrainData<- tbl_df(yTrain)

# Get Activity numbers for Test Data
yTest<-read.table("./test/y_test.txt", sep=" ", col.names="activityNo", fill=FALSE, strip.white=TRUE)
yTestData<- tbl_df(yTest)

# Combine activity numbers for Train and Test Data

yCombo <- bind_rows(yTrainData, yTestData)

# Get Sujects for Train Data
subTrain<-read.table("./train/subject_train.txt", sep=" ", col.names="subject", fill=FALSE, strip.white=TRUE)
subTrainData<- tbl_df(subTrain)

# Get Sujects for Test Data
subTest<-read.table("./test/subject_test.txt", sep=" ", col.names="subject", fill=FALSE, strip.white=TRUE)
subTestData<- tbl_df(subTest)

# Combine subjects for Train and Test data
subData<-bind_rows(subTrainData, subTestData)

# Combine Activity and Subjects columns

activity_subject <- bind_cols(yCombo, subData)

# Get column Names for summarized (x) data
ColNamesTable <- read.table("./features.txt", col.names =c("SlNo", "feature"))

# Extract the name of columns (features)
xColNames<-select(ColNamesTable, feature)

# Make the column names more readable
xCols <- gsub("__", "", (gsub("[()-]", "_", xColNames$feature)))

# Get X Train Data
xTrain<-read.table("./train/x_train.txt", col.names = xCols, fill=FALSE, strip.white=TRUE)
xTrainData<- tbl_df(xTrain)

# Get X Test Data
xTest<-read.table("./test/x_test.txt", col.names = xCols, fill=FALSE, strip.white=TRUE)
xTestData<- tbl_df(xTest)

# Combine the X data (row bind)
xCombo <- bind_rows(xTrainData, xTestData)

# Add the activity and subject columns to X data (column bind)
AllData <- bind_cols(activity_subject,xCombo)

# Extracts only the measurements with  mean and standard deviation
strippedData2<- select(AllData, activityNo, subject, matches("^[tf]+[^ ]+(mean[_]|mean|std[_]|std)"))

# Read the lookup table for activities labels 
activity_labels<-read.table("./activity_labels.txt", col.names = c("activityNo", "activity_label"))

# replaced the the activity serial number with descriptive activity_labels
strippedData3<- strippedData2 %>% 
     mutate(activityLabel=activity_labels[match(strippedData2$activityNo, activity_labels$activityNo), 2])%>% 
     select(activityLabel, everything())
 
strippedData3 <- select(strippedData3, -activityNo)

# Output file for the final summarization
View(strippedData3)
write.csv(SummarizedData, "strippedData.csv")

# Independent tidy data set with the average of each variable for each activity and each subject.
SummarizedData<- strippedData3 %>% 
    group_by(activityLabel, subject)%>%
    summarise_each(funs(mean)) %>%
    setNames(c(names(.)[1], names(.)[2], paste0("mean_",names(.)[3:81]))) 
    
View(SummarizedData)
write.csv(SummarizedData, "tidy_summarized.csv")

rm(list = ls())
