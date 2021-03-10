---
title: "Getting and Cleaning Data Project Codebook"
author: "Leandro Vaillard"
date: "3/8/2021"
output: html_document
---



Data: Human Activity Recognition Using Smartphones Data Set
Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Dataset Information:
======================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The dataset included the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


Attribute Information:
======================================

For each record in the dataset it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.

- Triaxial Angular velocity from the gyroscope.

- A 561-feature vector with time and frequency domain variables.

- Its activity label.

- An identifier of the subject who carried out the experiment.


Variable Descriptions:
======================================

|	Index	|	Variables	|	Class	|	Range	|	Description	|
|	--	|	----------------------	|	-------	|	-------	|	----------------------------------------------------------------------------------------------------------	|
|	1	|	subject	|	integer	|	1 -30	|	Identifies the human subject.	|
|	2	|	activity	|	factor	|	1 - 6	|	Identifies the activity. Labels: WALKING, WALKING UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING	|
|	3	|	Avrg-tBodyAcc-mean()-X	|	numeric	|	[-1, 1]	|	Time domain, Average of means for body acceleration on X axis.	|
|	4	|	Avrg-tBodyAcc-mean()-Y	|	numeric	|	[-1, 1]	|	Time domain, Average of means for body acceleration on Y axis.	|
|	5	|	Avrg-tBodyAcc-mean()-Z	|	numeric	|	[-1, 1]	|	Time domain, Average of means for body acceleration on Z axis.	|
|	6	|	Avrg-tBodyAcc-std()-X	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for body acceleration on X axis.	|
|	7	|	Avrg-tBodyAcc-std()-Y	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for body acceleration on Y axis.	|
|	8	|	Avrg-tBodyAcc-std()-Z	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for body acceleration on Z axis.	|
|	9	|	Avrg-tGravityAcc-mean()-X	|	numeric	|	[-1, 1]	|	Time domain, Average of means for gravity acceleration on X axis.	|
|	10	|	Avrg-tGravityAcc-mean()-Y	|	numeric	|	[-1, 1]	|	Time domain, Average of means for gravity acceleration on Y axis.	|
|	11	|	Avrg-tGravityAcc-mean()-Z	|	numeric	|	[-1, 1]	|	Time domain, Average of means for gravity acceleration on Z axis.	|
|	12	|	Avrg-tGravityAcc-std()-X	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for gravity acceleration on X axis.	|
|	13	|	Avrg-tGravityAcc-std()-Y	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for gravity acceleration on Y axis.	|
|	14	|	Avrg-tGravityAcc-std()-Z	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for gravity acceleration on Z axis.	|
|	15	|	Avrg-tBodyAccJerk-mean()-X	|	numeric	|	[-1, 1]	|	Time domain, Average of means for the jerk of body acceleration on X axis.	|
|	16	|	Avrg-tBodyAccJerk-mean()-Y	|	numeric	|	[-1, 1]	|	Time domain, Average of means for the jerk of body acceleration on Y axis.	|
|	17	|	Avrg-tBodyAccJerk-mean()-Z	|	numeric	|	[-1, 1]	|	Time domain, Average of means for the jerk of body acceleration on Z axis.	|
|	18	|	Avrg-tBodyAccJerk-std()-X	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for the jerk of body acceleration on X axis.	|
|	19	|	Avrg-tBodyAccJerk-std()-Y	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for the jerk of body acceleration on Y axis.	|
|	20	|	Avrg-tBodyAccJerk-std()-Z	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for the jerk of body acceleration on Z axis.	|
|	21	|	Avrg-tBodyGyro-mean()-X	|	numeric	|	[-1, 1]	|	Time domain, Average of means for angular velocity on X axis.	|
|	22	|	Avrg-tBodyGyro-mean()-Y	|	numeric	|	[-1, 1]	|	Time domain, Average of means for angular velocity on Y axis.	|
|	23	|	Avrg-tBodyGyro-mean()-Z	|	numeric	|	[-1, 1]	|	Time domain, Average of means for angular velocity on Z axis.	|
|	24	|	Avrg-tBodyGyro-std()-X	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for angular velocity on X axis.	|
|	25	|	Avrg-tBodyGyro-std()-Y	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for angular velocity on Y axis.	|
|	26	|	Avrg-tBodyGyro-std()-Z	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for angular velocity on Z axis.	|
|	27	|	Avrg-tBodyGyroJerk-mean()-X	|	numeric	|	[-1, 1]	|	Time domain, Average of means for the jerk of angular velocity on X axis.	|
|	28	|	Avrg-tBodyGyroJerk-mean()-Y	|	numeric	|	[-1, 1]	|	Time domain, Average of means for the jerk of angular velocity on Y axis.	|
|	29	|	Avrg-tBodyGyroJerk-mean()-Z	|	numeric	|	[-1, 1]	|	Time domain, Average of means for the jerk of angular velocity on Z axis.	|
|	30	|	Avrg-tBodyGyroJerk-std()-X	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for the jerk of angular velocity on X axis.	|
|	31	|	Avrg-tBodyGyroJerk-std()-Y	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for the jerk of angular velocity on Y axis.	|
|	32	|	Avrg-tBodyGyroJerk-std()-Z	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for the jerk of angular velocity on Z axis.	|
|	33	|	Avrg-tBodyAccMag-mean()	|	numeric	|	[-1, 1]	|	Time domain, Average of means for the magnitude of body acceleration.	|
|	34	|	Avrg-tBodyAccMag-std()	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for the magnitude of body acceleration.	|
|	35	|	Avrg-tGravityAccMag-mean()	|	numeric	|	[-1, 1]	|	Time domain, Average of means for the magnitude of gravity acceleration.	|
|	36	|	Avrg-tGravityAccMag-std()	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for the magnitude of gravity acceleration.	|
|	38	|	Avrg-tBodyAccJerkMag-mean()	|	numeric	|	[-1, 1]	|	Time domain, Average of means for the magnitude of jerk, of body accelaration.	|
|	38	|	Avrg-tBodyAccJerkMag-std()	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for the magnitude of jerk, of body accelaration.	|
|	39	|	Avrg-tBodyGyroMag-mean()	|	numeric	|	[-1, 1]	|	Time domain, Average of means for the magnitude of angular velocity.	|
|	40	|	Avrg-tBodyGyroMag-std()	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for the magnitude of angular velocity.	|
|	41	|	Avrg-tBodyGyroJerkMag-mean()	|	numeric	|	[-1, 1]	|	Time domain, Average of means for the magnitude of jerk, of the angular velocity.	|
|	42	|	Avrg-tBodyGyroJerkMag-std()	|	numeric	|	[-1, 1]	|	Time domain, Average of standard deviations for the magnitude of jerk, of the angular velocity.	|
|	43	|	Avrg-fBodyAcc-mean()-X	|	numeric	|	[-1, 1]	|	Frequency domain, Average of means for body acceleration on X axis.	|
|	44	|	Avrg-fBodyAcc-mean()-Y	|	numeric	|	[-1, 1]	|	Frequency domain, Average of means for body acceleration on Y axis.	|
|	45	|	Avrg-fBodyAcc-mean()-Z	|	numeric	|	[-1, 1]	|	Frequency domain, Average of means for body acceleration on Z axis.	|
|	46	|	Avrg-fBodyAcc-std()-X	|	numeric	|	[-1, 1]	|	Frequency domain, Average of standard deviations for body acceleration on X axis.	|
|	47	|	Avrg-fBodyAcc-std()-Y	|	numeric	|	[-1, 1]	|	Frequency domain, Average of standard deviations for body acceleration on Y axis.	|
|	48	|	Avrg-fBodyAcc-std()-Z	|	numeric	|	[-1, 1]	|	Frequency domain, Average of standard deviations for body acceleration on Z axis.	|
|	49	|	Avrg-fBodyAccJerk-mean()-X	|	numeric	|	[-1, 1]	|	Frequency domain, Average of means for the jerk of the body acceleration on X axis.	|
|	50	|	Avrg-fBodyAccJerk-mean()-Y	|	numeric	|	[-1, 1]	|	Frequency domain, Average of means for the jerk of the body acceleration on Y axis.	|
|	51	|	Avrg-fBodyAccJerk-mean()-Z	|	numeric	|	[-1, 1]	|	Frequency domain, Average of means for the jerk of the body acceleration on Z axis.	|
|	52	|	Avrg-fBodyAccJerk-std()-X	|	numeric	|	[-1, 1]	|	Frequency domain, Average of standard deviations for the jerk of the body acceleration on X axis.	|
|	53	|	Avrg-fBodyAccJerk-std()-Y	|	numeric	|	[-1, 1]	|	Frequency domain, Average of standard deviations for the jerk of the body acceleration on Y axis.	|
|	54	|	Avrg-fBodyAccJerk-std()-Z	|	numeric	|	[-1, 1]	|	Frequency domain, Average of standard deviations for the jerk of the body acceleration on Z axis.	|
|	55	|	Avrg-fBodyGyro-mean()-X	|	numeric	|	[-1, 1]	|	Frequency domain, Average of means for the jerk of angular velocity on X axis.	|
|	56	|	Avrg-fBodyGyro-mean()-Y	|	numeric	|	[-1, 1]	|	Frequency domain, Average of means for the jerk of angular velocity on Y axis.	|
|	57	|	Avrg-fBodyGyro-mean()-Z	|	numeric	|	[-1, 1]	|	Frequency domain, Average of means for the jerk of angular velocity on Z axis.	|
|	58	|	Avrg-fBodyGyro-std()-X	|	numeric	|	[-1, 1]	|	Frequency domain, Average of standard deviations for the jerk of angular velocity on X axis.	|
|	59	|	Avrg-fBodyGyro-std()-Y	|	numeric	|	[-1, 1]	|	Frequency domain, Average of standard deviations for the jerk of angular velocity on Y axis.	|
|	60	|	Avrg-fBodyGyro-std()-Z	|	numeric	|	[-1, 1]	|	Frequency domain, Average of standard deviations for the jerk of angular velocity on Z axis.	|
|	61	|	Avrg-fBodyAccMag-mean()	|	numeric	|	[-1, 1]	|	Frequency domain, Average of means for the magnitude of body acceleration.	|
|	62	|	Avrg-fBodyAccMag-std()	|	numeric	|	[-1, 1]	|	Frequency domain, Average of standard deviations for the magnitude of body acceleration.	|
|	63	|	Avrg-fBodyAccJerkMag-mean()	|	numeric	|	[-1, 1]	|	Frequency domain, Average of means for the magnitude of jerk, of body acceleration.	|
|	64	|	Avrg-fBodyAccJerkMag-std()	|	numeric	|	[-1, 1]	|	Frequency domain, Average of standard deviations for the magnitude of jerk, of body acceleration.	|
|	65	|	Avrg-fBodyGyroMag-mean()	|	numeric	|	[-1, 1]	|	Frequency domain, Average of means for the magnitude of angular velocity.	|
|	66	|	Avrg-fBodyGyroMag-std()	|	numeric	|	[-1, 1]	|	Frequency domain, Average of standard deviations for the magnitude of angular velocity.	|
|	67	|	Avrg-fBodyGyroJerkMag-mean()	|	numeric	|	[-1, 1]	|	Frequency domain, Average of means for the magnitude of jerk, of angular velocity.	|
|	68	|	Avrg-fBodyGyroJerkMag-std()	|	numeric	|	[-1, 1]	|	Frequency domain, Average of standard deviation for the magnitude of jerk, of angular velocity.	|



Transformations:
======================================

- Column names have been changed so that they are easily read.

- Column mean and standard deviation have been used.

- Features are normalized and bounded within [-1,1].

- Each feature vector is a row on the text file.