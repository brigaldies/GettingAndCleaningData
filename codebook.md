## Code Book - Coursera Data Science Track, Getting And Cleaning Data, Class Project

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
activitylabel | The label of the activity (Walking, sitting, etc.) See the possible activity codes and labels in the previous section.
activitynumber | The activity number, which can be used for sorting by the "natural order" provided in activity_labels.txt (see note #1)
subjectnumber | Subject number
tbodyaccmeanx | By activity and subject-grouped **mean** of the time-domain X-axis body acceleration mean
tbodyaccmeany | By activity and subject-grouped **mean** of the time-domain Y-axis body acceleration mean
tbodyaccmeanz | By activity and subject-grouped **mean** of the time-domain Z-axis body acceleration mean
tbodyaccstdx | By activity and subject-grouped **mean** of the time-domain X-axis body acceleration standard deviation
tbodyaccstdy | By activity and subject-grouped **mean** of the time-domain Y-axis body acceleration standard deviation
tbodyaccstdz | By activity and subject-grouped **mean** of the time-domain Z-axis body acceleration standard deviation
tgravityaccmeanx | By activity and subject-grouped **mean** of the time-domain X-axis gravity acceleration mean
tgravityaccmeany | By activity and subject-grouped **mean** of the time-domain Y-axis gravity acceleration mean
tgravityaccmeanz | By activity and subject-grouped **mean** of the time-domain Z-axis gravity acceleration mean
tgravityaccstdx | By activity and subject-grouped **mean** of the time-domain X-axis gravity acceleration standard deviation
tgravityaccstdy | By activity and subject-grouped **mean** of the time-domain Y-axis gravity acceleration standard deviation
tgravityaccstdz | By activity and subject-grouped **mean** of the time-domain Z-axis gravity acceleration standard deviation
tbodyaccjerkmeanx | By activity and subject-grouped **mean** of the time-domain X-axis body acceleration jerk mean
tbodyaccjerkmeany | By activity and subject-grouped **mean** of the time-domain Y-axis body acceleration jerk mean
tbodyaccjerkmeanz | By activity and subject-grouped **mean** of the time-domain Z-axis body acceleration jerk mean
tbodyaccjerkstdx | By activity and subject-grouped **mean** of the time-domain X-axis body acceleration jerk standard deviation
tbodyaccjerkstdy | By activity and subject-grouped **mean** of the time-domain Y-axis body acceleration jerk standard deviation
tbodyaccjerkstdz | By activity and subject-grouped **mean** of the time-domain Z-axis body acceleration jerk standard deviation
tbodygyromeanx | By activity and subject-grouped **mean** of the time-domain X-axis body angular velocity mean
tbodygyromeany | By activity and subject-grouped **mean** of the time-domain Y-axis body angular velocity mean
tbodygyromeanz | By activity and subject-grouped **mean** of the time-domain Z-axis body angular velocity mean
tbodygyrostdx | By activity and subject-grouped **mean** of the time-domain X-axis body angular velocity standard deviation
tbodygyrostdy | By activity and subject-grouped **mean** of the time-domain Y-axis body angular velocity standard deviation
tbodygyrostdz | By activity and subject-grouped **mean** of the time-domain Z-axis body angular velocity standard deviation
tbodygyrojerkmeanx | By activity and subject-grouped **mean** of the time-domain X-axis body angular velocity jerk mean
tbodygyrojerkmeany | By activity and subject-grouped **mean** of the time-domain Y-axis body angular velocity jerk mean
tbodygyrojerkmeanz | By activity and subject-grouped **mean** of the time-domain Z-axis body angular velocity jerk mean
tbodygyrojerkstdx | By activity and subject-grouped **mean** of the time-domain X-axis body angular velocity jerk standard deviation
tbodygyrojerkstdy | By activity and subject-grouped **mean** of the time-domain Y-axis body angular velocity jerk standard deviation
tbodygyrojerkstdz | By activity and subject-grouped **mean** of the time-domain Z-axis body angular velocity jerk standard deviation
tbodyaccmagmean | By activity and subject-grouped **mean** of the time-domain body acceleration magnitude mean
tbodyaccmagstd | By activity and subject-grouped **mean** of the time-domain body acceleration magnitude standard deviation
tgravityaccmagmean | By activity and subject-grouped **mean** of the time-domain gravity acceleration magnitude mean
tgravityaccmagstd | By activity and subject-grouped **mean** of the time-domain gravity acceleration magnitude standard deviation
tbodyaccjerkmagmean | By activity and subject-grouped **mean** of the time-domain body acceleration jerk magnitude mean
tbodyaccjerkmagstd | By activity and subject-grouped **mean** of the time-domain body acceleration jerk magnitude standard deviation
tbodygyromagmean | By activity and subject-grouped **mean** of the time-domain body angular velocity magnitude mean
tbodygyromagstd | By activity and subject-grouped **mean** of the time-domain body angular velocity magnitude standard deviation
tbodygyrojerkmagmean | By activity and subject-grouped **mean** of the time-domain body angular velocity magnitude jerk mean
tbodygyrojerkmagstd | By activity and subject-grouped **mean** of the time-domain body angular velocity magnitude jerk standard deviation
fbodyaccmeanx | By activity and subject-grouped **mean** of the frequency-domain X-axis body acceleration mean
fbodyaccmeany | By activity and subject-grouped **mean** of the frequency-domain Y-axis body acceleration mean
fbodyaccmeanz | By activity and subject-grouped **mean** of the frequency-domain Z-axis body acceleration mean
fbodyaccstdx | By activity and subject-grouped **mean** of the frequency-domain X-axis body acceleration standard deviation
fbodyaccstdy | By activity and subject-grouped **mean** of the frequency-domain Y-axis body acceleration standard deviation
fbodyaccstdz | By activity and subject-grouped **mean** of the frequency-domain Z-axis body acceleration standard deviation
fbodyaccjerkmeanx | By activity and subject-grouped **mean** of the frequency-domain X-axis body acceleration jerk mean
fbodyaccjerkmeany | By activity and subject-grouped **mean** of the frequency-domain Y-axis body acceleration jerk mean
fbodyaccjerkmeanz | By activity and subject-grouped **mean** of the frequency-domain Z-axis body acceleration jerk mean
fbodyaccjerkstdx | By activity and subject-grouped **mean** of the frequency-domain X-axis body acceleration jerk standard deviation
fbodyaccjerkstdy | By activity and subject-grouped **mean** of the frequency-domain Y-axis body acceleration jerk standard deviation
fbodyaccjerkstdz | By activity and subject-grouped **mean** of the frequency-domain Z-axis body acceleration jerk standard deviation
fbodygyromeanx | By activity and subject-grouped **mean** of the frequency-domain X-axis body angular velocity mean
fbodygyromeany | By activity and subject-grouped **mean** of the frequency-domain Y-axis body angular velocity mean
fbodygyromeanz | By activity and subject-grouped **mean** of the frequency-domain Z-axis body angular velocity mean
fbodygyrostdx | By activity and subject-grouped **mean** of the frequency-domain X-axis body angular velocity standard deviation
fbodygyrostdy | By activity and subject-grouped **mean** of the frequency-domain Y-axis body angular velocity standard deviation
fbodygyrostdz | By activity and subject-grouped **mean** of the frequency-domain Z-axis body angular velocity standard deviation
fbodyaccmagmean | By activity and subject-grouped **mean** of the frequency-domain body acceleration magnitude mean
fbodyaccmagstd | By activity and subject-grouped **mean** of the frequency-domain body acceleration magnitude standard deviation
fbodybodyaccjerkmagmean | By activity and subject-grouped **mean** of the frequency-domain body acceleration magnitude jerk mean
fbodybodyaccjerkmagstd | By activity and subject-grouped **mean** of the frequency-domain body acceleration magnitude jerk standard deviation
fbodybodygyromagmean | By activity and subject-grouped **mean** of the frequency-domain body angular velocity magnitude mean
fbodybodygyromagstd | By activity and subject-grouped **mean** of the frequency-domain body angular velocity magnitude standard deviation
fbodybodygyrojerkmagmean | By activity and subject-grouped **mean** of the frequency-domain body angular velocity magnitude jerk mean
fbodybodygyrojerkmagstd | By activity and subject-grouped **mean** of the frequency-domain body angular velocity magnitude jerk standard deviation

Notes:
1. Although the variables "activitylabel" and "activitynumber" measure the same variable, i.e., the activity, we are still
considering the data as "tidy" since the activity number can be used to sort based on the "natural order" provided in the
activity_labels.txt file. For example, see step F in the data processing algorithm described in the next section.

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

E. Ungroup the resulting data in order to be able to arrange (See [article on interaction between dplyr group_by and arrange](http://stackoverflow.com/questions/26555297/dplyr-arrange-a-grouped-df-by-group-variable-not-working))

F. Arrange based on ascending activity and subject numbers.

G. Writes the calculated means to a file, whose name was provided as an argument to the function run_analysis.
