# GettingandCleaningData_Project

  Ruizhe Lu has created this Assignment of Getting and Cleaning Data Course Project.

  Tagged with a Codebook to describing the variables.

  Open with the run_analysis.R in your working directory to get and clean the dataframes from
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

  run_analysis.R is an R file to deploy these 5 steps to get a clean and tidy dataframe:

  1.Merges the training and the test sets to create one data set.
  2.Extracts only the measurements on the mean and standard deviation for each measurement.
  3.Uses descriptive activity names to name the activities in the data set
  4.Appropriately labels the data set with descriptive variable names.
  5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

  To start with, this code will help you to download your dataframe by a zipped file named "w4project.zip" and unzip it.

  After that, it would upload the dataframes and assign their columns' names in case for consorting the data. All the descriptions are written in the code.

  Remember there are some tips and different methods introduced. ## Mention! You should always load the package "plyr" ahead of "dplyr" in case to
  avoid error warnings.
