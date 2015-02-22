DATA DICTIONARY - TIDY DATA

An independent tidy data set from "Human Activity Recognition Using Smartphones Dataset".

- The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
- Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 

Time domain:
- prefix 't' denotes time domain
- These time domain signals were captured at a constant rate of 50 Hz. 
- Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Acceleration signal:
- 'BodyAcc' refers to body acceleration signal
- 'GravityAcc' refers to gravity acceleration signal

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 

Jerk signal:
- 'Jerk' refers to Jerk signal

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Euclidean norm:
- 'Mag' refers to Euclidean norm 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 

Frequency domain:
- prefix 'f' denotes frequency domain

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation

The data set is appropriately labeled with descriptive variable names:

- Renamed '-mean()-' or '-mean()' by 'Mean'
- Renamed '-std()-' or '-std()' by 'Std'

New variable names:

'activity':
- Factor w/ 6 levels 'WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING'

'subject':
- Integer 1:30. 
- 30 volunteers within an age bracket of 19-48 years.

The data was normalized (unit free). The complete list of 68 variables:

- "x"
- "1" "activity"
- "2" "subject"
- "3" "tBodyAccMeanX"
- "4" "tBodyAccMeanY"
- "5" "tBodyAccMeanZ"
- "6" "tBodyAccStdX"
- "7" "tBodyAccStdY"
- "8" "tBodyAccStdZ"
- "9" "tGravityAccMeanX"
- "10" "tGravityAccMeanY"
- "11" "tGravityAccMeanZ"
- "12" "tGravityAccStdX"
- "13" "tGravityAccStdY"
- "14" "tGravityAccStdZ"
- "15" "tBodyAccJerkMeanX"
- "16" "tBodyAccJerkMeanY"
- "17" "tBodyAccJerkMeanZ"
- "18" "tBodyAccJerkStdX"
- "19" "tBodyAccJerkStdY"
- "20" "tBodyAccJerkStdZ"
- "21" "tBodyGyroMeanX"
- "22" "tBodyGyroMeanY"
- "23" "tBodyGyroMeanZ"
- "24" "tBodyGyroStdX"
- "25" "tBodyGyroStdY"
- "26" "tBodyGyroStdZ"
- "27" "tBodyGyroJerkMeanX"
- "28" "tBodyGyroJerkMeanY"
- "29" "tBodyGyroJerkMeanZ"
- "30" "tBodyGyroJerkStdX"
- "31" "tBodyGyroJerkStdY"
- "32" "tBodyGyroJerkStdZ"
- "33" "tBodyAccMagMean"
- "34" "tBodyAccMagStd"
- "35" "tGravityAccMagMean"
- "36" "tGravityAccMagStd"
- "37" "tBodyAccJerkMagMean"
- "38" "tBodyAccJerkMagStd"
- "39" "tBodyGyroMagMean"
- "40" "tBodyGyroMagStd"
- "41" "tBodyGyroJerkMagMean"
- "42" "tBodyGyroJerkMagStd"
- "43" "fBodyAccMeanX"
- "44" "fBodyAccMeanY"
- "45" "fBodyAccMeanZ"
- "46" "fBodyAccStdX"
- "47" "fBodyAccStdY"
- "48" "fBodyAccStdZ"
- "49" "fBodyAccJerkMeanX"
- "50" "fBodyAccJerkMeanY"
- "51" "fBodyAccJerkMeanZ"
- "52" "fBodyAccJerkStdX"
- "53" "fBodyAccJerkStdY"
- "54" "fBodyAccJerkStdZ"
- "55" "fBodyGyroMeanX"
- "56" "fBodyGyroMeanY"
- "57" "fBodyGyroMeanZ"
- "58" "fBodyGyroStdX"
- "59" "fBodyGyroStdY"
- "60" "fBodyGyroStdZ"
- "61" "fBodyAccMagMean"
- "62" "fBodyAccMagStd"
- "63" "fBodyBodyAccJerkMagMean"
- "64" "fBodyBodyAccJerkMagStd"
- "65" "fBodyBodyGyroMagMean"
- "66" "fBodyBodyGyroMagStd"
- "67" "fBodyBodyGyroJerkMagMean"
- "68" "fBodyBodyGyroJerkMagStd"
