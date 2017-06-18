# Needed packages
library(dplyr)
library(data.table)

# 1. Download and read the data
# ******************************************************

# Url
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Name of the file
fileName <- "getdata_projectfiles_UCI HAR Dataset.zip"

# Download the zip file
download.file(fileUrl, destfile=fileName, method="curl")

# Extract files
unzip(fileName)

# Read files

# Features & labels
features_DT <- read.table("UCI HAR Dataset/features.txt")
labels_DT <- read.table("UCI HAR Dataset/activity_labels.txt")

# Training data
subject_train_DT <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_train_DT <- read.table("UCI HAR Dataset/train/x_train.txt")
y_train_DT <- read.table("UCI HAR Dataset/train/y_train.txt")

# Test data
subject_test_DT <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_test_DT <- read.table("UCI HAR Dataset/test/x_test.txt")
y_test_DT <- read.table("UCI HAR Dataset/test/y_test.txt")


# 2. Merge the training and the test sets to create one data set.
# ******************************************************

# Merge x data sets
x_DT <- rbind(x_train_DT, x_test_DT)

# Merge y data sets
y_DT <- rbind(y_train_DT, y_test_DT)

# Merge subject data sets
subject_DT <- rbind(subject_train_DT, subject_test_DT)

# Descriptive name for activities
names(y_DT) <- "activity"

# Descriptive name for subjects
names(subject_DT) <- "subject"


# 3. Extracts only the measurements on the mean and standard deviation for each measurement.
# ******************************************************

# Get only columns with mean or std in their names
colNames <- grep("mean\\(\\)|std\\(\\)", features_DT[, 2])

# Subset the data by column names
x_DT <- x_DT[, colNames]

# 4. Use descriptive activity names to name the activities in the data set
# ******************************************************

# Correct names for all columns
names(x_DT) <- features_DT[colNames, 2]

# Create one data set, which merges all data together
full_DT <- cbind(subject_DT, y_DT, x_DT)

# 5. Appropriately labels the data set with descriptive variable names.
# ******************************************************

full_DT[, 2] <- labels_DT[full_DT[,2], 2]

# From the data set in step 5, creates a second, 
# independent tidy data set with the average of each variable for each activity and each subject. 
# ******************************************************

# Group the data by subject and activity and calculate the average of each activity and each subject
tidy_DT <- full_DT %>%
        group_by(subject, activity) %>%
        summarise_all(funs(mean))

# Write the result to a file		
write.table(tidy_DT, "./tidy_data.txt", row.name=FALSE)


