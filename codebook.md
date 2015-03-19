## Data Dictionary - Coursera Data Science Track, Getting And Cleaning Data, Class Project

March 18th, 2015

This is the *Code Book*, or *Data Dictionary*, for the analysis performed on the
Human Activity Recognition Using Smartphones Dataset.

### Terminology

In this Code Book, *average* and *mean* (arithmetic mean) are considered synonyms.

### Raw Data

Refer to the following downloaded files for the full description of the measured
signals (See the Readme.md file for the download instructions):

* README.txt
* features_info.txt
* features.txt

The analysis processes the measured variables that correspond to the mean and
standard deviation of the following signal categories:

Raw Data Signal Category | Raw Data Signal Description
---------------------- | -----------------------------
tBodyAcc-XYZ | Time-domain body acceleration across X, Y, and Z dimensions (Filtered)
tGravityAcc-XYZ | Time-domain gravity acceleration across X, Y, and Z dimensions (Filtered)
tBodyAccJerk-XYZ | Time-domain body acceleration jerk across X, Y, and Z dimensions
tBodyGyro-XYZ | Time-domain body angular velocity across X, Y, and Z dimensions (Filtered)
tBodyGyroJerk-XYZ | Time-domain body angular velocity jerk across X, Y, and Z dimensions (Filtered)
tBodyAccMag | Time-domain body acceleration magnitude
tGravityAccMag | Time-domain gravity acceleration magnitude
tBodyAccJerkMag | Time-domain body acceleration magnitude jerk
tBodyGyroMag | Time-domain body angular velocity magnitude
tBodyGyroJerkMag | Time-domain body angular velocity magnitude jerk
fBodyAcc-XYZ | Frequency-domain body acceleration across X, Y, and Z dimensions
fBodyAccJerk-XYZ | Frequency-domain body acceleration jerk across X, Y, and Z dimensions
fBodyGyro-XYZ | Frequency-domain body angular velocity across X, Y, and Z dimensions
fBodyAccMag | Frequency-domain body acceleration magnitude
fBodyAccJerkMag | Frequency-domain body acceleration magnitude jerk
fBodyGyroMag | Frequency-domain body angular velocity magnitude
fBodyGyroJerkMag | Frequency-domain body angular velocity magnitude jerk

Taking the tBodyAcc-XYZ signals category as an example, the analysis processes the following
measured variables in the raw data:

* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z

The analysis groups the mean and standard deviation measurements by activity type (walking, sitting, etc.) and
subject, and calculate the measurement average for each group.

The next section provides a complete list of the resulting variables.

### This Analysis Code Book

#### Activity Labels

Activity Code | Activity label
------------- | --------------
1 | WALKING
2 | WALKING_UPSTAIRS
3 | WALKING_DOWNSTAIRS
4 | SITTING
5 | STANDING
6 | LAYING

#### Subject Number

As in the raw data, the 30 measured subjects are identified by a number, from 1 to 30.

#### Analysis Variables

Variable | Description
-------- | -----------
activity_label | The label of the activity (Walking, sitting, etc.) See the possible activity codes and labels in the previous section.
subject_number | Subject number
tBodyAccmeanX | By activity and subject-grouped **mean** of the time-domain X-axis body acceleration mean
tBodyAccmeanY | By activity and subject-grouped **mean** of the time-domain Y-axis body acceleration mean
tBodyAccmeanZ | By activity and subject-grouped **mean** of the time-domain Z-axis body acceleration mean
tBodyAccstdX | By activity and subject-grouped **mean** of the time-domain X-axis body acceleration standard deviation
tBodyAccstdY | By activity and subject-grouped **mean** of the time-domain Y-axis body acceleration standard deviation
tBodyAccstdZ | By activity and subject-grouped **mean** of the time-domain Z-axis body acceleration standard deviation
tGravityAccmeanX | By activity and subject-grouped **mean** of the time-domain X-axis gravity acceleration mean
tGravityAccmeanY | By activity and subject-grouped **mean** of the time-domain Y-axis gravity acceleration mean
tGravityAccmeanZ | By activity and subject-grouped **mean** of the time-domain Z-axis gravity acceleration mean
tGravityAccstdX | By activity and subject-grouped **mean** of the time-domain X-axis gravity acceleration standard deviation
tGravityAccstdY | By activity and subject-grouped **mean** of the time-domain Y-axis gravity acceleration standard deviation
tGravityAccstdZ | By activity and subject-grouped **mean** of the time-domain Z-axis gravity acceleration standard deviation
tBodyAccJerkmeanX | By activity and subject-grouped **mean** of the time-domain X-axis body acceleration jerk mean
tBodyAccJerkmeanY | By activity and subject-grouped **mean** of the time-domain Y-axis body acceleration jerk mean
tBodyAccJerkmeanZ | By activity and subject-grouped **mean** of the time-domain Z-axis body acceleration jerk mean
tBodyAccJerkstdX | By activity and subject-grouped **mean** of the time-domain X-axis body acceleration jerk standard deviation
tBodyAccJerkstdY | By activity and subject-grouped **mean** of the time-domain Y-axis body acceleration jerk standard deviation
tBodyAccJerkstdZ | By activity and subject-grouped **mean** of the time-domain Z-axis body acceleration jerk standard deviation
tBodyGyromeanX | By activity and subject-grouped **mean** of the time-domain X-axis body angular velocity mean
tBodyGyromeanY | By activity and subject-grouped **mean** of the time-domain Y-axis body angular velocity mean
tBodyGyromeanZ | By activity and subject-grouped **mean** of the time-domain Z-axis body angular velocity mean
tBodyGyrostdX | By activity and subject-grouped **mean** of the time-domain X-axis body angular velocity standard deviation
tBodyGyrostdY | By activity and subject-grouped **mean** of the time-domain Y-axis body angular velocity standard deviation
tBodyGyrostdZ | By activity and subject-grouped **mean** of the time-domain Z-axis body angular velocity standard deviation
tBodyGyroJerkmeanX | By activity and subject-grouped **mean** of the time-domain X-axis body angular velocity jerk mean
tBodyGyroJerkmeanY | By activity and subject-grouped **mean** of the time-domain Y-axis body angular velocity jerk mean
tBodyGyroJerkmeanZ | By activity and subject-grouped **mean** of the time-domain Z-axis body angular velocity jerk mean
tBodyGyroJerkstdX | By activity and subject-grouped **mean** of the time-domain X-axis body angular velocity jerk standard deviation
tBodyGyroJerkstdY | By activity and subject-grouped **mean** of the time-domain Y-axis body angular velocity jerk standard deviation
tBodyGyroJerkstdZ | By activity and subject-grouped **mean** of the time-domain Z-axis body angular velocity jerk standard deviation
tBodyAccMagmean | By activity and subject-grouped **mean** of the time-domain body acceleration magnitude mean
tBodyAccMagstd | By activity and subject-grouped **mean** of the time-domain body acceleration magnitude standard deviation
tGravityAccMagmean | By activity and subject-grouped **mean** of the time-domain gravity acceleration magnitude mean
tGravityAccMagstd | By activity and subject-grouped **mean** of the time-domain gravity acceleration magnitude standard deviation
tBodyAccJerkMagmean | By activity and subject-grouped **mean** of the time-domain body acceleration jerk magnitude mean
tBodyAccJerkMagstd | By activity and subject-grouped **mean** of the time-domain body acceleration jerk magnitude standard deviation
tBodyGyroMagmean | By activity and subject-grouped **mean** of the time-domain body angular velocity magnitude mean
tBodyGyroMagstd | By activity and subject-grouped **mean** of the time-domain body angular velocity magnitude standard deviation
tBodyGyroJerkMagmean | By activity and subject-grouped **mean** of the time-domain body angular velocity magnitude jerk mean
tBodyGyroJerkMagstd | By activity and subject-grouped **mean** of the time-domain body angular velocity magnitude jerk standard deviation
fBodyAccmeanX | By activity and subject-grouped **mean** of the frequency-domain X-axis body acceleration mean
fBodyAccmeanY | By activity and subject-grouped **mean** of the frequency-domain Y-axis body acceleration mean
fBodyAccmeanZ | By activity and subject-grouped **mean** of the frequency-domain Z-axis body acceleration mean
fBodyAccstdX | By activity and subject-grouped **mean** of the frequency-domain X-axis body acceleration standard deviation
fBodyAccstdY | By activity and subject-grouped **mean** of the frequency-domain Y-axis body acceleration standard deviation
fBodyAccstdZ | By activity and subject-grouped **mean** of the frequency-domain Z-axis body acceleration standard deviation
fBodyAccJerkmeanX | By activity and subject-grouped **mean** of the frequency-domain X-axis body acceleration jerk mean
fBodyAccJerkmeanY | By activity and subject-grouped **mean** of the frequency-domain Y-axis body acceleration jerk mean
fBodyAccJerkmeanZ | By activity and subject-grouped **mean** of the frequency-domain Z-axis body acceleration jerk mean
fBodyAccJerkstdX | By activity and subject-grouped **mean** of the frequency-domain X-axis body acceleration jerk standard deviation
fBodyAccJerkstdY | By activity and subject-grouped **mean** of the frequency-domain Y-axis body acceleration jerk standard deviation
fBodyAccJerkstdZ | By activity and subject-grouped **mean** of the frequency-domain Z-axis body acceleration jerk standard deviation
fBodyGyromeanX | By activity and subject-grouped **mean** of the frequency-domain X-axis body angular velocity mean
fBodyGyromeanY | By activity and subject-grouped **mean** of the frequency-domain Y-axis body angular velocity mean
fBodyGyromeanZ | By activity and subject-grouped **mean** of the frequency-domain Z-axis body angular velocity mean
fBodyGyrostdX | By activity and subject-grouped **mean** of the frequency-domain X-axis body angular velocity standard deviation
fBodyGyrostdY | By activity and subject-grouped **mean** of the frequency-domain Y-axis body angular velocity standard deviation
fBodyGyrostdZ | By activity and subject-grouped **mean** of the frequency-domain Z-axis body angular velocity standard deviation
fBodyAccMagmean | By activity and subject-grouped **mean** of the frequency-domain body acceleration magnitude mean
fBodyAccMagstd | By activity and subject-grouped **mean** of the frequency-domain body acceleration magnitude standard deviation
fBodyBodyAccJerkMagmean | By activity and subject-grouped **mean** of the frequency-domain body acceleration magnitude jerk mean
fBodyBodyAccJerkMagstd | By activity and subject-grouped **mean** of the frequency-domain body acceleration magnitude jerk standard deviation
fBodyBodyGyroMagmean | By activity and subject-grouped **mean** of the frequency-domain body angular velocity magnitude mean
fBodyBodyGyroMagstd | By activity and subject-grouped **mean** of the frequency-domain body angular velocity magnitude standard deviation
fBodyBodyGyroJerkMagmean | By activity and subject-grouped **mean** of the frequency-domain body angular velocity magnitude jerk mean
fBodyBodyGyroJerkMagstd | By activity and subject-grouped **mean** of the frequency-domain body angular velocity magnitude jerk standard deviation

### Data Processing Algorithm

This section describes the steps, or algorithm, to process the data from "raw" to "analysis results".

A. For each raw data set, *train*, and *test*, the processing executes the following steps (See function createTidyData in run_analysis.R)

1. Reads the feature labels file ('features.txt') into a features table.
1. Filters the features table to keep the mean and standard deviation measurements only (The feature labels
containing *mean()* or *std()* only are processed).
1. The features table is mutated to create the analysis' variable names (The characters '-', '(', and ')' are removed from the 
original kept features), and create a "V<number>" label for each kept feature that will be used when selecting the measurements
of interest in the raw data.
1. Reads the measured variables from the *X* (e.g., X_train.txt) file into a data table (Referenced to as the 'X' data table).
1. Selects the measurements of interests (mean and standard deviation) from the X data table using the vector of "V<number>" labels that was created in an earlier step.
1. Reads the measurement-to-activity associations from the *Y* (e.g., y_train.txt) file into a data table (Referenced to as the 
'Y' data table), and set the column name to 'activity_number'.
1. Reads the activity labels file (activity_labels.txt) into a data table (Referenced to as the 'Activity Labels' table), and set the column names to 'activity_number' and 'activity_label.
1. Inner-join the Y and Activity Labels tables by 'activity_number'.
1. Reads the measurement-to-subject associations from the *subject* (e.g., subject_train.txt) file into a data table (Referenced as the 'Subject' data table), and set the column name to 'subject_number'.
1. Column-binds the Subject, Y, and X tables, in that order.

B. Row-binds the Train and Test tidy tables obtained in step A above.

C. Groups the train-and-test-merged tidy data by activity label and subject number.

D. Calculates the mean of all measurements, grouped by activity label and subject number.

E. Writes the calculated means to a file, whose name was provided as an argument to the function run_analysis.
