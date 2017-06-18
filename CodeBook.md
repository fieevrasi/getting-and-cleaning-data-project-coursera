# The code book for tidy_data.txt

### The original data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Source files:
* features.txt 
* activity_labels.txt
* subject_train.txt
* x_train.txt 
* y_train.txt
* subject_test.txt
* x_test.txt
* y_test.txt

# Steps to create the result file
Run run_analysis.R file 

Script performs following actions:
1. Downloads and reads the source files. 
2. Merges the training and the test sets and creates one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names.
6. From the data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# Result file columns
subject 
activity 
tBodyAcc-mean()-X 
tBodyAcc-mean()-Y 
tBodyAcc-mean()-Z 
tBodyAcc-std()-X 
tBodyAcc-std()-Y 
tBodyAcc-std()-Z 
tGravityAcc-mean()-X 
tGravityAcc-mean()-Y 
tGravityAcc-mean()-Z 
tGravityAcc-std()-X 
tGravityAcc-std()-Y 
tGravityAcc-std()-Z 
tBodyAccJerk-mean()-X 
tBodyAccJerk-mean()-Y 
tBodyAccJerk-mean()-Z 
tBodyAccJerk-std()-X 
tBodyAccJerk-std()-Y 
tBodyAccJerk-std()-Z 
tBodyGyro-mean()-X 
tBodyGyro-mean()-Y 
tBodyGyro-mean()-Z 
tBodyGyro-std()-X 
tBodyGyro-std()-Y 
tBodyGyro-std()-Z 
tBodyGyroJerk-mean()-X 
tBodyGyroJerk-mean()-Y 
tBodyGyroJerk-mean()-Z 
tBodyGyroJerk-std()-X 
tBodyGyroJerk-std()-Y 
tBodyGyroJerk-std()-Z 
tBodyAccMag-mean() 
tBodyAccMag-std() 
tGravityAccMag-mean() 
tGravityAccMag-std() 
tBodyAccJerkMag-mean() 
tBodyAccJerkMag-std() 
tBodyGyroMag-mean() 
tBodyGyroMag-std() 
tBodyGyroJerkMag-mean() 
tBodyGyroJerkMag-std() 
fBodyAcc-mean()-X 
fBodyAcc-mean()-Y 
fBodyAcc-mean()-Z 
fBodyAcc-std()-X 
fBodyAcc-std()-Y 
fBodyAcc-std()-Z 
fBodyAccJerk-mean()-X 
fBodyAccJerk-mean()-Y 
fBodyAccJerk-mean()-Z 
fBodyAccJerk-std()-X 
fBodyAccJerk-std()-Y 
fBodyAccJerk-std()-Z 
fBodyGyro-mean()-X 
fBodyGyro-mean()-Y 
fBodyGyro-mean()-Z 
fBodyGyro-std()-X 
fBodyGyro-std()-Y 
fBodyGyro-std()-Z 
fBodyAccMag-mean() 
fBodyAccMag-std() 
fBodyBodyAccJerkMag-mean() 
fBodyBodyAccJerkMag-std() 
fBodyBodyGyroMag-mean() 
fBodyBodyGyroMag-std() 
fBodyBodyGyroJerkMag-mean() 
fBodyBodyGyroJerkMag-std()