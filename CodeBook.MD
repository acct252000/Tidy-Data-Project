# Code Book
## Study Design
Data for this project was obtained from [this website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) through the Coursera program.

## Code Book

The original data started with 561 factors which are described at [the above website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), in addition to subject and activity name and code.  A description of the experiment and main variables as obtained from the referenced website and codebook is as follows:

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

>tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

>Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

>gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


Per the assignment's instructions this was limited to the following final variables, where mean() represents the mean value and std() the standard deviation.   The mean of the individual measurements from the original data sete for mean() and std() values were taken, grouped by subject and activity:

1.  "subjectnumber" :  Integer - represents one of 30 subjects who participated in the experiment
2.  "activityname" : String - represents one of six activities the subjects in the experiment participated in
3.  "tBodyAcc-mean()-X" : double, mean of mean of tBodyAcc as described above, X axis
4.  "tBodyAcc-mean()-Y"  : double, mean of mean of tBodyAcc as described above, Y axis
5.  "tBodyAcc-mean()-Z"  : double, mean of mean of tBodyAcc as described above, Zaxis
6.  "tBodyAcc-std()-X" : double, mean of standard deviation of tBodyAcc as described above, X axis         
7.  "tBodyAcc-std()-Y" : double, mean of standard deviation of tBodyAcc as described above, Y axis    
8.  "tBodyAcc-std()-Z" : double, mean of standard deviation of tBodyAcc as described above, Z axis    
9.  "tGravityAcc-mean()-X" : double, mean of mean of tGravityAcc as described above, X axis
10.  "tGravityAcc-mean()-Y"  : double, mean of mean of tGravityAcc as described above, Y axis
11.  "tGravityAcc-mean()-Z" : double, mean of mean of tGravityAcc as described above, Z axis 
12.  "tGravityAcc-std()-X"  : double, mean of standard deviation of tGravityAcc as described above, X axis       
13.  "tGravityAcc-std()-Y"  : double, mean of standard deviation of tGravityAcc as described above, Y axis 
14.  "tGravityAcc-std()-Z" : double, mean of standard deviation of tGravityAcc as described above, Z axis 
15.  "tBodyAccJerk-mean()-X"  : double, mean of mean of tBodyAccJerk as described above, X axis    
16.  "tBodyAccJerk-mean()-Y"  : double, mean of mean of tBodyAccJerk as described above, Y axis 
17.  "tBodyAccJerk-mean()-Z"  : double, mean of mean of tBodyAccJerk as described above, Z axis 
18.  "tBodyAccJerk-std()-X" : double, mean of standard deviation of tBodyAccJerk as described above, X axis      
19.  "tBodyAccJerk-std()-Y"   : double, mean of standard deviation of tBodyAccJerk as described above, Y axis      
20.  "tBodyAccJerk-std()-Z" : double, mean of standard deviation of tBodyAccJerk as described above, Z axis      
21.  "tBodyGyro-mean()-X"  : double, mean of mean of tBodyGyro as described above, X axis          
22.  "tBodyGyro-mean()-Y"  : double, mean of mean of tBodyGyro as described above, Y axis   
23.  "tBodyGyro-mean()-Z"  : double, mean of mean of tBodyGyro as described above, Z axis   
24.  "tBodyGyro-std()-X"    : double, mean of standard deviation of tBodyGyro as described above, X axis         
25.  "tBodyGyro-std()-Y"   : double, mean of standard deviation of tBodyGyro as described above, Y axis  
26.  "tBodyGyro-std()-Z" : double, mean of standard deviation of tBodyGyro as described above, Z axis  
27.  "tBodyGyroJerk-mean()-X" : double, mean of mean of tBodyGyroJerk as described above, X axis      
28.  "tBodyGyroJerk-mean()-Y" : double, mean of mean of tBodyGyroJerk as described above, Y axis      
29.  "tBodyGyroJerk-mean()-Z": double, mean of mean of tBodyGyroJerk as described above, Z axis      
30.  "tBodyGyroJerk-std()-X"  : double, mean of standard deviation of tBodyGyroJerk as described above, X axis      
31.  "tBodyGyroJerk-std()-Y"  : double, mean of standard deviation of tBodyGyroJerk as described above, Y axis      
32.  "tBodyGyroJerk-std()-Z"  : double, mean of standard deviation of tBodyGyroJerk as described above, Z axis      
33.  "tBodyAccMag-mean()"   : double, mean of mean of tBodyAccMag as described above       
34.  "tBodyAccMag-std()"    : double, mean of standard deviation of tBodyAccMag as described above   
35.  "tGravityAccMag-mean()" : double, mean of mean of tGravityAccMag as described above       
36.  "tGravityAccMag-std()"  : double, mean of standard deviation of tGravityAccMag as described above  
37.  "tBodyAccJerkMag-mean()"   : double, mean of mean of tBodyAccJerkMag as described above 
38.  "tBodyAccJerkMag-std()"  : double, mean of standard deviation of tBodyAccJerkMag as described above 
39.  "tBodyGyroMag-mean()"      : double, mean of mean of tBodyGyroMag as described above   
40.  "tBodyGyroMag-std()"   : double, mean of standard deviation of tBodyGyroMag as described above  
41.  "tBodyGyroJerkMag-mean()"    : double, mean of mean of tBodyGyroJerkMag as described above 
42.  "tBodyGyroJerkMag-std()"     : double, mean of standard deviation of tBodyGyroJerkMag as described above 
43.  "fBodyAcc-mean()-X"  : double, mean of mean of fBodyAcc as described above, X axis        
44.  "fBodyAcc-mean()-Y"  : double, mean of mean of fBodyAcc as described above, Y axis      
45.  "fBodyAcc-mean()-Z" : double, mean of mean of fBodyAcc as described above, Z axis              
46.  "fBodyAcc-std()-X"  : double, mean of standard deviation of fBodyAcc as described above, X axis    
47.  "fBodyAcc-std()-Y"  : double, mean of standard deviation of fBodyAcc as described above, Y axis    
48.  "fBodyAcc-std()-Z"   : double, mean of standard deviation of fBodyAcc as described above, Z axis            
49.  "fBodyAccJerk-mean()-X"  : double, mean of mean of fBodyAccJerk as described above, X axis    
50.  "fBodyAccJerk-mean()-Y"   : double, mean of mean of fBodyAccJerk as described above, Y axis 
51.  "fBodyAccJerk-mean()-Z" : double, mean of mean of fBodyAccJerk as described above, Z axis  
52.  "fBodyAccJerk-std()-X" : double, mean of standard deviation of fBodyAccJerk as described above, X axis    
53.  "fBodyAccJerk-std()-Y"   : double, mean of standard deviation of fBodyAccJerk as described above, Y axis 
54.  "fBodyAccJerk-std()-Z"  : double, mean of standard deviation of fBodyAccJerk as described above, Z axis      
55.  "fBodyGyro-mean()-X"  : double, mean of mean of fBodyGyro as described above, X axis  
56.  "fBodyGyro-mean()-Y"  : double, mean of mean of fBodyGyro as described above, Y axis  
57.  "fBodyGyro-mean()-Z"   : double, mean of mean of fBodyGyro as described above, Z axis        
58.  "fBodyGyro-std()-X": double, mean of standard deviation of fBodyGyro as described above, X axis  
59.  "fBodyGyro-std()-Y"  : double, mean of standard deviation of fBodyGyro as described above, Y axis  
60.  "fBodyGyro-std()-Z"   : double, mean of standard deviation of fBodyGyro as described above, Z axis         
61.  "fBodyAccMag-mean()"  : double, mean of mean of fBodyAccMag as described above
62.  "fBodyAccMag-std()"  : double, mean of standard deviation of fBodyAccMag as described above  
63.  "fBodyBodyAccJerkMag-mean()" : double, mean of mean of fBodyBodyAccJerkMag as described above  
64.  "fBodyBodyAccJerkMag-std()" : double, mean of standard deviation of fBodyBodyAccJerkMag as described above  
65.  "fBodyBodyGyroMag-mean()" : double, mean of mean of fBodyBodyGyroMag as described above 
66.  "fBodyBodyGyroMag-std()" : double, mean of standard deviation of fBodyBodyGyroMag as described above     
67.  "fBodyBodyGyroJerkMag-mean()" : double, mean of mean of fBodyBodyGyroJerkMag as described above 
68.  "fBodyBodyGyroJerkMag-std()" : double, mean of standard deviation of fBodyBodyGyroJerkMag as described above 

```