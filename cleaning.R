## Load Data
# read train sample
xTrain = read.table("X_train.txt")
yTrain = read.table("y_train.txt")
subjectTrain = read.table("subject_train.txt")
# read test sample
xTest = read.table("X_test.txt")
yTest = read.table("y_test.txt")
subjectTest = read.table("subject_test.txt")
# read feature list and activity list
features = read.table("features.txt")
activity = read.table("activity_labels.txt")


## 1. Merge the training and testing dataset to create one data set.

X = rbind(xTrain, xTest)
y = rbind(yTrain, yTest)
subject = rbind(subjectTrain, subjectTest)


## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
meanIndex = grep("mean", as.character(features[,2]))
stdIndex = grep("std",as.character(features[,2]))
index = c(meanIndex, stdIndex)
XFinal = X[,index]
data = data.frame(subject, y, XFinal)

## 3. Uses descriptive activity names to name the activities in the data set
names(activity) = c("actLabel","activityName")
dataTemp = merge(activity, data, by.x="actLabel", by.y="activity", y.all=TRUE)
dataFinal = dataTemp[,-1]
colnames(dataFinal)[1]="activity"
dataFinal = dataFinal[order(dataFinal$subject),]

## 4. Appropriately labels the data set with descriptive variable names
colName = tolower(make.names(as.character(features[,2])[c(index)]))
colNameFinal = c("subject", "activity", colName)
names(data) = colNameFinal

## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
avg = aggregate(dataFinal[,3:ncol(dataFinal)],by=list(dataFinal$activity,dataFinal$subject),mean,na.rm=TRUE)
colnames(avg)[1:2]=c("activity","subject")
write.table(avg,"avg.txt")
