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

The R file "Cleaning.R") hass 6 parts as below:

1. Uses read.table functions to read in the all training/test data, as well as the features and activity.

2. Combines training and test data to form one data set.

3. Extracts only the measurements on the mean and standard deviation for each measurement.

4. Assigns appropriate column names. 

5. Use descriptive activity names

6. Create tidy data set with the average of each selected variable from above steps by each activity and each subject.
