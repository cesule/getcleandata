# Getting and Cleaning Data
# Course Project

# Set working directory with setwd() same as the directory of the Samsung data

# Step 1: Merges the training and the test sets to create one data set

trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainLabel <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")

dim(trainData)
dim(trainLabel)
dim(trainSubject)

# Combine trainig files by column, name the data set training
training <- cbind(trainSubject, trainLabel, trainData)

testData <- read.table("./UCI HAR Dataset/test/X_test.txt")
testLabel <- read.table("./UCI HAR Dataset/test/y_test.txt")
testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

dim(testData)
dim(testLabel)
dim(testSubject)

# Combine test files by column, name the data set test
test <- cbind(testSubject, testLabel, testData)

# Merge training and test sets by row to create one data set named Data
Data <- rbind(training, test)
dim(Data)

# Step 2: Extracts only the measurements on the mean and standard deviation 
# for each measurement

features <- read.table("./UCI HAR Dataset/features.txt")
dim(features)
head(features, 3)

# Create a character variable with column names
cnames <- c("subject", "activity", as.character(features$V2))

colnames(Data) <- cnames
# Check first 10 column names
colnames(Data)[1:10]

# grepl returns a logical vector (match or not for each element)
# Use following escape sequence to tell grepl to search for mean() or std()
subData <- cbind(Data[, 1:2], Data[, grepl("mean\\(\\)|std\\(\\)", colnames(Data))])
dim(subData)
# subData has 10299 observations and 68 variables

# Step 3: Uses descriptive activity names to name the activities in the data set

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
dim(activity_labels)
head(activity_labels)

library(dplyr)

# Merge by common column, "V1" in activity_labels and "activity" in subData
mData <- merge(activity_labels, subData, by.x="V1", by.y="activity")
# Drop column "V1" and keep "V2" instead which uses descriptive activity names
myData <- select(mData, -(V1))
colnames(myData)[1] <- "activity"

head(select(myData, 1:5))
tail(select(myData, 1:5))

# Step 4: Appropriately labels the data set with descriptive variable names

colnames(myData)
colnames(myData) <- gsub("-mean\\(\\)-|-mean\\(\\)", "Mean", colnames(myData))
colnames(myData) <- gsub("-std\\(\\)-|-std\\(\\)", "Std", colnames(myData))
colnames(myData)

# Step 5: From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject

# Using dplyr package
groups <- group_by(myData, activity, subject)
tidy <- summarise_each(groups, funs(mean))
dim(tidy)
# tidy has 180 observations and 68 variables

write.table(tidy, "tidy.txt", row.name=FALSE)
View(tidy)
