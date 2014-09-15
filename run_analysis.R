# Project work for the course Getting and Cleaning Data
# The goal is to prepare tidy data that can be used for 
# later analysis

# Uploading the training set

trainingSet1 <- read.table("x_train.txt") # training data
trainingSubject <- read.table("subject_train.txt")# the subject who performed the activities  
trainingActivity <- read.table("y_train.txt")# activity data 

# Uploading the "feature" data - column name

feature <- read.table("features.txt")
feature1 <- feature[,2]

# Introducing the column names to the training data set
 
colnames(trainingSet1) <- feature1

# Using "Chaining" to string together multiple functions to add the 
# subject and activity variables into the training set and also 
# to extract mean and std related measures 

trainingSet2 <- trainingSet1 %>% 
tbl_df()%>% # creating a new data frame tbl 
select(contains("mean"), contains("std"))%>% # extract the the mean and std measurements 
cbind(trainingSubject)%>% # combining the training set with the subject who performed the activities (V1)
mutate (subject = (V1)) %>% # adding a variable "subject" made out of the subject variable "V1" 
select (-matches("V1"))%>% # select all but "V1"
cbind(trainingActivity)%>% # combining the training set with the activity variable (V1)
mutate (activity = (V1))%>% # adding a variable "activity" made out of the activity variable "V1" 
select(-matches("V1"))# select all but "V1"

# Uploading the test data set 

testSet1 <- read.table("x_test.txt")# test data 
testSubject <- read.table("subject_test.txt")# # the subject who performed the activities in the test set
testActivity <- read.table("y_test.txt")# activity data 

# Introducing the column names to the test data set
 
colnames(testSet1) <- feature1

# Using "Chaining" to string together multiple functions to add the 
# subject and activity variables into the test set and also 
# to extract mean and std related measures 

testSet2 <- testSet1 %>% 
tbl_df()%>% # creating a new data frame tbl 
select(contains("mean"), contains("std"))%>% # extract the mean and std measurements  
cbind(testSubject)%>% # combining the test set with the subject who performed the activity (V1)
mutate (subject = (V1)) %>% # adding a variable "subject" made of the subject variable "V1" 
select (-matches("V1"))%>% # select all but "V1"
cbind(testActivity)%>% # combining the test set with the activity variable (V1)
mutate (activity = (V1))%>% # adding a variable "activity" made of the activity variable "V1" 
select(-matches("V1"))# select all but "V1"

# Merging the training and the test sets to create 
# one data set named "alldata". 

alldata <- rbind_list (trainingSet2,testSet2)

# Naming the activities in the data set with descriptive 
# activity names

alldata$activity <- factor(alldata$activity, levels = c(1,2,3,4,5,6), 
labels= c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

# Making an independent tidy data set (named "finaldata") with the 
# average of each variable for each activity and each subject.

finaldata <- alldata %>% 
group_by(subject, activity) %>% # grouped by the subject and activity variables
summarise_each(funs(mean))

# using write.table to create the final tidy data

write.table(finaldata, file = "finaltidydata.txt",sep = ",", row.name=FALSE) 

