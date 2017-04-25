# read in table of labels for features
featureLabels <-read.table("features.txt",sep =" ",stringsAsFactors=FALSE)
# create character vector of column names for data table
dataColumnNames <-featureLabels[,2]
# read in table of training data X, which has 561 fixed width fields of 16
trainX<-read.fwf("train/X_train.txt", rep(16,561))
# read in table of test data X, which hs 561 fixed width fields of 16
testX<-read.fwf("test/X_test.txt", rep(16,561))
# read in table of activity codes for training data Y, which has 1 column of length 1
trainY <-read.fwf("train/Y_train.txt",1)
# read in table of activity codes for test data Y, which has 1 column of length 1
testY <-read.fwf("test/Y_test.txt",1)
#read in table of test subjects for training data, which has 1 colunn of length 2
trainSubject <-read.fwf("train/subject_train.txt",2)
#read in table of test subjects for test data, which has 1 colunn of length 2
testSubject <-read.fwf("test/subject_test.txt",2)
#read in table of activity labels
activityLabels <-read.table("activity_labels.txt",sep=  " ")
#append testX to end of trainX
Xdata <- rbind(trainX, testX)
#append testY to end of testY
Ydata <- rbind(trainY, testY)
#append Subject Data
subjects <-rbind(trainSubject, testSubject)
#determine which columns have mean or std in the title, assuming assignment wants straight mean() or std()
column_selection <-sort(append(grep("mean\\(\\)",dataColumnNames),grep("std\\(\\)",dataColumnNames)))
#limit Xdata to selected columns
Xdata<-Xdata[,column_selection]
#limit column names to selected columns
newDataColumnNames <-dataColumnNames[column_selection]
#assign names to XData
colnames(Xdata)<-newDataColumnNames
#assign names to Ydata
colnames(Ydata)<-c("activitycode")
#assign names to activityLabels
colnames(activityLabels)<-c("activitycode","activityname")
#assign names to subjects
colnames(subjects)<-"subjectnumber"
#combine subjects, activities, and Xdata into one table
Xdata<-cbind(subjects,Ydata,Xdata)
#assign activity names by ID
mergedXdata<-merge(Xdata,activityLabels,by.x="activitycode",by.y="activitycode",all=TRUE)
#load dplyr library
library(dplyr)
#convert to dplyr format
xPlrData<- tbl_df(mergedXdata)
#establish dplyr grouping
xPlrData<-group_by(xPlrData,subjectnumber,activityname)
#remove redundant information
xPlrData<-select(xPlrData,-activitycode)
#summarize to arrive at mean of each item by subject number and activity name
summaryData<-summarise_each(xPlrData,funs(mean))
#write tabel to file
write.table(summaryData,"tidydata.txt")





