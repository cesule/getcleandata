# getcleandata

==================================================================
Course Project
==================================================================
Performing analysis with Human Activity Recognition Using Smartphones Dataset.
==================================================================

This repo includes the following files:
=========================================

- 'README.md'

- 'CodeBook.md': Describes the variables, the data and any transformations.

- 'run_analysis.R': R script with the code for performing analysis.

Notes: 
======
This script 'run_analysis.R' starts with the assumption that 
the Samsung data is available in the working directory in an unzipped 
UCI HAR Dataset folder.

Step 1:
=======
Merges the training and the test sets to create one data set.

- Read the following files in R:
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- Each file has the same number of observation. Combine trainig files by column, name the data set 'training'.

- Read the following files in R:
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- Each file has the same number of observation. Combine test files by column, name the data set 'test'.

- Merge training and test sets by row to create one data set named 'Data'.

Step 2:
=======
Extracts only the measurements on the mean and standard deviation for each measurement.

- Read the following file in R:
- 'features.txt': List of all features.

- Create a character variable with column names.
- Give names to columns of data set 'Data' starting with 'subject', 'activity' and followed by names of the character variable.
- Check the first 10 column names for accuracy.

- Use "mean\\(\\)|std\\(\\)" to tell grepl to search for mean() or std(). grepl returns a logical vector (match or not for each element).
- Extract data and name it 'subData' using cbind and grepl. 

- Extracted data named 'subData' has 10299 observations and 68 variables.

Step 3:
=======
Uses descriptive activity names to name the activities in the data set

- Read the following file in R and name the data 'activity_labels':
- 'activity_labels.txt': Links the class labels with their activity name.

- Merge by common column, 'V1' in activity_labels and 'activity' in subData.
- Drop column 'V1' and keep 'V2' instead. Both columns provide the same information, keep 'V2' which uses descriptive activity names.
- Rename the first column name in final data called 'myData' with 'activity'.

Step 4:
=======
Appropriately labels the data set with descriptive variable names.

- Rename portion of any column name with "-mean()-" or "-mean()" by "Mean".
- Rename portion of any column name with "-std()-" or "-std()" by "Std".


Step 5:
=======
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

- Group the data set in step 4 by activity and subject.
- Use summarise_each() in R using dplyr package to create a data set named 'tidy' with the average of each variable for each group.

- Create a txt file with write.table() using row.name=FALSE.

Notes: 
======
- The command for reading 'tidy.txt' in R and looking at it in R:
tidyData <- read.table("tidy.txt", header=TRUE) ; View(tidyData)
- For reference, see thread https://class.coursera.org/getdata-011/forum/thread?thread_id=69

