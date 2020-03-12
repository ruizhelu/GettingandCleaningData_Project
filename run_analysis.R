
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, destfile = "w4project.zip", method="curl")
unzip("w4project.zip")
#download and unzip the file used for this project

actlables <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("lable", "activity"))
features <- read.table("UCI HAR Dataset/features.txt", header = FALSE)
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
xtest <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
colnames(xtest) <- features[,2]
ytest <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "lable")
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
colnames(xtrain) <- features[,2]
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "lable")
#upload the dataframes and assign their columns' names in case for consorting the data

#1. Merges the training and the test sets to create one data set.
x <- rbind(xtrain, xtest)
y <- rbind(ytrain, ytest)
subject <- rbind(subjecttest, subjecttrain)
merged <- cbind(subject, y, x)

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
colNames <- colnames(merged)
measurements <- merged[,grepl("lable|subject|mean|std", colnames(merged))]

#3. Uses descriptive activity names to name the activities in the data set.
measurements$lable <- actlables[measurements$lable, 2]

#4. Appropriately labels the data set with descriptive variable names.
names(measurements) #or even View(measurements)
#in case to understand the col-variable-names we are going to label with
library(dplyr)
#have to use the package of dplyr,(eg.gsub function)
names(measurements)[1] = "Subject"
names(measurements)[2] = "Activity"
names(measurements)<-gsub("^t", "Time", names(measurements))
names(measurements)<-gsub("^f", "Frequency", names(measurements))
names(measurements)<-gsub("BodyBody", "Body", names(measurements))
names(measurements)<-gsub("Acc", "Accelerate", names(measurements))
names(measurements)<-gsub("Gyro", "Gyroscope", names(measurements))
names(measurements)<-gsub("Mag", "Magnitude", names(measurements))
names(measurements)<-gsub("mean", "Mean", names(measurements))
names(measurements)<-gsub("std", "Std", names(measurements))
names(measurements)<-gsub("Freq", "Frequency", names(measurements))

#5. From the data set in step 4, creates a second, independent tidy data set with the average
#   of each variable for each activity and each subject.
library(plyr) #You better load plyr before dplyr! However, in this case it wont effect
#have to use the function of ddply to apply mean function to each variables
tidydata <- ddply(measurements, c("Subject","Activity"), numcolwise(mean))

#tidydata <-aggregate(. ~Subject + Activity, measurements, mean) #you can also use this line to check

write.table(tidydata, "tidydata.txt", row.name=FALSE)
