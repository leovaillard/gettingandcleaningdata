# Getting and Cleaning Data Course Project
# The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
# The goal is to prepare tidy data that can be used for later analysis.
# You will be graded by your peers on a series of yes/no questions related to the project.
# You will be required to submit:
#   1) a tidy data set as described below,
#   2) a link to a Github repository with your script for performing the analysis, and
#   3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
# You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

# One of the most exciting areas in all of data science right now is wearable computing - see for example this article.
# Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.
# The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.
# A full description is available at the site where the data was obtained:
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
# Here are the data for the project:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

# You should create one R script called run_analysis.R that does the following. 

# 1) Merges the training and the test sets to create one data set.
# 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3) Uses descriptive activity names to name the activities in the data set
# 4) Appropriately labels the data set with descriptive variable names. 
# 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Clear all variables
rm(list=ls())

# Set working directory
# In order ot run it, please modify the working directory as the one below corresponds to my personal computer
setwd("C:/Users/LCVaillard/Documents/Maestria/00 - Material Adicional/Coursera/Data Science Specialization/Getting and Cleaning Data/Week 4")


# Load libraries
library(data.table)
library(reshape2)

# Download File
if(!file.exists("./data")) {dir.create("./data")}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "./data/dataset.zip", method = "curl")

# Unzip File
unzip(zipfile = "./data/dataset.zip")

# Load activity labels and features

activity <- fread("./UCI HAR Dataset/activity_labels.txt", col.names = c("classlabels", "activityname"))
features <- fread("./UCI HAR Dataset/features.txt", col.names = c("index", "featurenames"))
featureswanted <- grep("(mean|std)\\(\\)", features[, featurenames])
measurements <- features[featureswanted, featurenames]
measurements <- gsub('[()]', '', measurements)

# Load train datasets
xtrain <- fread("./UCI HAR Dataset/train/X_train.txt")[, featureswanted, with = FALSE]
data.table::setnames(xtrain, colnames(xtrain), measurements)
trainactivities <- fread("./UCI HAR Dataset/train/Y_train.txt", col.names = c("Activity"))
trainsubjects <- fread("./UCI HAR Dataset/train/subject_train.txt", col.names = c("Subjectnum"))
train <- cbind(trainsubjects, trainactivities, xtrain)

# Load test datasets
xtest <- fread("./UCI HAR Dataset/test/X_test.txt")[, featureswanted, with = FALSE]
data.table::setnames(xtest, colnames(xtest), measurements)
testactivities <- fread("./UCI HAR Dataset/test/Y_test.txt", col.names = c("Activity"))
testsubjects <- fread("./UCI HAR Dataset/test/subject_test.txt", col.names = c("Subjectnum"))
test <- cbind(testsubjects, testactivities, xtest)

# Merge datasets
combo <- rbind(train, test)

# Convert classLabels to activityName.
combo[["Activity"]] <- factor(combo[, "Activity"], levels = activity[["classlabels"]], labels = activity[["activityname"]])

combo[["Subjectnum"]] <- as.factor(combo[, Subjectnum])
combo <- reshape2::melt(data = combo, id = c("Subjectnum", "Activity"))
combo <- reshape2::dcast(data = combo, Subjectnum + Activity ~ variable, fun.aggregate = mean)

data.table::fwrite(x = combo, file = "tidydata.txt", quote = FALSE)