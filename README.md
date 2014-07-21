GettingandCleaningDataProj
==========================

Course project for getting and cleaning data on Coursera

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 

Things that got submitted: 1) a tidy data set as described below, 2) a link to a Github repository with the script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data called CodeBook.md. A README.md is also included in the repo with scripts. This repo explains how all of the scripts work and how they are connected.  

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The R script ("run_analysis.R") contains six parts in the main body.

Read in data files.
In this part of the code, we first set the working directory to the directory that includes the data. Then read.table functions are executed to read in the training/test data, as well as the features and activity.

Merge training and test data.
This part combines the training and test data to form one data set.

Extract the measurements on the mean and standard deviation for each measurement.
This part of the code extracts the measurement on the mean and standard deviation. The details could be found in the CodeBook.md

Assign appropriate column names
This part of the code assigns appropriate column names for each of the column. The reason is that the original wording of the features are not legal names for R.

Use descriptive activity names
The data set so far has the activity label (y_train(test)) for each of the record. This sometimes is not clear for future data users if there is not a look up table for activity label and activity. So we here use descriptive activity names in the data set instead of the activity label.

Create tidy data set with the average of each selected variable from above steps by each activity and each subject.
A new data set is created to summarize the data set we obtained above. The average of each selected variable is calculated for each activity and each subject.
