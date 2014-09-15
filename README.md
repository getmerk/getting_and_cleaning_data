
==================================================================
Introduction
==================================================================

The objective of this assignment is to demonstrate the ability to collect, work with and clean a data set, and eventually 
to provide a tidy dataset that can be employed for later data analysis.This assignment uses data from the Smartlab - Non Linear 
Complex Systems Laboratory, Genoa I-16145, Italy about Human activity collected using Smartphones. 

==================================================================
Initial process 
==================================================================

- The training and test datasets along with the activity, subject and feature data were uploded using "read.table" function.  

- The column names (which is the feature data on the original set) were added to the training and test datasets using 
  "colnames" function. 
  
- Afterwards,"Chaining" is used to string together multiple functions to perform different activities. 

- The "select" function is used in order to extracts mean and standard deviation related measurements from both the training and test datasets. 

- The "subject" and "activity" variables are then added to both the training and test datsets using the "cbind" function. 

- The "mutate" function is used in order to make the same "subject" and "activity" variables with their new column names. Then, the old 
  "activity" and "subject" variables, both with the variable name "V1", is removed. 
  
- The final step of the initial process was merging the training and the test sets to create one data set named "alldata". The "rbind_list"
  function is used to merge the training and test sets. 

==================================================================
post-merge process 
==================================================================

- The training and the test sets are merged and form a data called "alldata"

- From this file the the "activity" variable which was composed of numeric values of 1 to 6 is changed with a more discriptive activities names. 
  To do this the activity variables, which was initially class of "int" was changed to factors. 
  
- The merged data is then transformed to an independent tidy data set (named "finaldata") with the average of each variable for each activity 
  and each subject is computed. 

- "group-by" and "summarise-each" functions are used in order to compute the average of each variables with respect to the subject and activity pair.  


==================================================================
tidy data
==================================================================

- The resulting tidy data (finaldata) contains one row for each subject/activity pair and columns for the "subject","activity",  
  and other variables which was related to mean or standard deviation that extracted from the original dataset.
 
- The final outcome of the process is a tidy data that was saved using write.table and named as "finaltidydata". 


The dataset includes the following files:
=========================================

- "README.md": 

- "CodeBook.md": Shows information about the variables within the tidy data (finaltidydata)

- "run_analysis.R": An R script that does all the data cleaning steps
