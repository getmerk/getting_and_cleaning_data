==================================================================
Human activity data collected using Smartphones
==================================================================


==================================================================
Data background 
==================================================================

This human activity data is orginally collected by Smartlab - Non Linear Complex Systems Laboratory, Genoa I-16145, Italy. 
A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

A group of 30 people with an age range of 19 to 48 volunteered to perfom this experiment. Each of the volunteers performed six 
different activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while Samsung Galaxy S II mounted
on their waist. With the built-in accelerometer and gyroscope, 3-axial linear acceleration and 3-axiaal angular velocity at a constant 
rate of 50Hz were obtained. The sensor signals were pre-processed by applying noise filters and then sampled in fixed-width sliding windows 
of 2.56 sec and 50% overlap (128 readings/window).From each window, a vector of features was obtained by calculating variables from the 
time and frequency domain. The volunteers were randomly separated into two groups to generate the training (70%) and the test (30%) data. 


Besides the "subject" and "Activity" variables, the other variables come from the the accelerometer and gyroscope 3-axial raw signals 

 - tAcc-XYZ and 
 - tGyro-XYZ
 
(Where, the prefix 't' to denote time) 

On the other hand, the acceleration signal was separated into body and gravity acceleration signals using another low 
pass Butterworth filter with a corner frequency of 0.3 Hz.

 - tBodyAcc-XYZ and 
 - tGravityAcc-XYZ 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 

- tBodyAccJerk-XYZ and 
- tBodyGyroJerk-XYZ

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm:

- tBodyAccMag, 
- tGravityAccMag, 
- tBodyAccJerkMag,
- tBodyGyroMag, 
- tBodyGyroJerkMag. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
(Note the 'f' to indicate frequency domain signals).
- fBodyAcc-XYZ, 
- fBodyAccJerk-XYZ, 
- fBodyGyro-XYZ,
- fBodyAccJerkMag, 
- fBodyGyroMag, 
- fBodyGyroJerkMag.  

Note: 

1. the above signals were used to estimate variables of the feature vector for each pattern:  

2. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


3. The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


The following are the componenets of the final Tidy data

==================================================================
  Tidy data: "finaldata"
==================================================================

- The resulting tidy data (finaldata) contains one row for each subject/activity pair and columns for the "subject","activity",  
  and other variables which was related to mean or standard deviation that extracted from the original dataset.
 
==================================================================
 Activity variables: "activity"
==================================================================

The six activity variables performed by the volunteers. 

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

==================================================================
 Subject variables: "subject"
==================================================================

The subject variable identifies the subject who performed the activity. Its range is from 1 to 30.


==================================================================
 Variables associated to the mean measure
==================================================================

"tBodyAcc-mean()-X"                   
"tBodyAcc-mean()-Y"                   
"tBodyAcc-mean()-Z"                   
"tGravityAcc-mean()-X"                
"tGravityAcc-mean()-Y"                
"tGravityAcc-mean()-Z"                
"tBodyAccJerk-mean()-X"               
"tBodyAccJerk-mean()-Y"               
"tBodyAccJerk-mean()-Z"               
"tBodyGyro-mean()-X"                  
"tBodyGyro-mean()-Y"                  
"tBodyGyro-mean()-Z"                  
"tBodyGyroJerk-mean()-X"              
"tBodyGyroJerk-mean()-Y"              
"tBodyGyroJerk-mean()-Z"              
"tBodyAccMag-mean()"                  
"tGravityAccMag-mean()"               
"tBodyAccJerkMag-mean()"              
"tBodyGyroMag-mean()"                 
"tBodyGyroJerkMag-mean()"             
"fBodyAcc-mean()-X"                   
"fBodyAcc-mean()-Y"                   
"fBodyAcc-mean()-Z"                   
"fBodyAcc-meanFreq()-X"               
"fBodyAcc-meanFreq()-Y"               
"fBodyAcc-meanFreq()-Z"               
"fBodyAccJerk-mean()-X"               
"fBodyAccJerk-mean()-Y"               
"fBodyAccJerk-mean()-Z"               
"fBodyAccJerk-meanFreq()-X"           
"fBodyAccJerk-meanFreq()-Y"           
"fBodyAccJerk-meanFreq()-Z"           
"fBodyGyro-mean()-X"                  
"fBodyGyro-mean()-Y"                  
"fBodyGyro-mean()-Z"                  
"fBodyGyro-meanFreq()-X"              
"fBodyGyro-meanFreq()-Y"              
"fBodyGyro-meanFreq()-Z"              
"fBodyAccMag-mean()"                  
"fBodyAccMag-meanFreq()"              
"fBodyBodyAccJerkMag-mean()"          
"fBodyBodyAccJerkMag-meanFreq()"      
"fBodyBodyGyroMag-mean()"             
"fBodyBodyGyroMag-meanFreq()"         
"fBodyBodyGyroJerkMag-mean()"         
"fBodyBodyGyroJerkMag-meanFreq()"     
"angle(tBodyAccMean,gravity)"         
"angle(tBodyAccJerkMean),gravityMean)"
"angle(tBodyGyroMean,gravityMean)"    
"angle(tBodyGyroJerkMean,gravityMean)"
"angle(X,gravityMean)"                
"angle(Y,gravityMean)"                
"angle(Z,gravityMean)"  


==================================================================
 Variables associated to the standard deviation measure
==================================================================

"tBodyAcc-std()-X"          
"tBodyAcc-std()-Y"           
"tBodyAcc-std()-Z"          
"tGravityAcc-std()-X"        
"tGravityAcc-std()-Y"       
"tGravityAcc-std()-Z"        
"tBodyAccJerk-std()-X"      
"tBodyAccJerk-std()-Y"       
"tBodyAccJerk-std()-Z"      
"tBodyGyro-std()-X"          
"tBodyGyro-std()-Y"         
"tBodyGyro-std()-Z"          
"tBodyGyroJerk-std()-X"     
"tBodyGyroJerk-std()-Y"      
"tBodyGyroJerk-std()-Z"     
"tBodyAccMag-std()"          
"tGravityAccMag-std()"      
"tBodyAccJerkMag-std()"      
"tBodyGyroMag-std()"        
"tBodyGyroJerkMag-std()"     
"fBodyAcc-std()-X"          
"fBodyAcc-std()-Y"           
"fBodyAcc-std()-Z"          
"fBodyAccJerk-std()-X"       
"fBodyAccJerk-std()-Y"      
"fBodyAccJerk-std()-Z"       
"fBodyGyro-std()-X"         
"fBodyGyro-std()-Y"          
"fBodyGyro-std()-Z"         
"fBodyAccMag-std()"          
"fBodyBodyAccJerkMag-std()" 
"fBodyBodyGyroMag-std()"     
"fBodyBodyGyroJerkMag-std()"




















