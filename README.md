# Getting and Cleaning Data Course Project (Coursera)
This is a repository for Coursera Getting and Cleaning Data project

# Content of this repository
* README.md
* CodeBook.md
* run_analysis.R
* tidy_data.txt

# The original data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Source files
* features.txt 
* activity_labels.txt
* subject_train.txt
* x_train.txt 
* y_train.txt
* subject_test.txt
* x_test.txt
* y_test.txt

# run_analysis.R does the following actions:
1. Downloads and reads the source files. 
2. Merges the training and the test sets and creates one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names.
6. From the data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# Result
tidy_data.txt
