#Code Book#

Variables Used in run_analysis.R
================================

1. features:<br>Contains List of all features.This data is extracted from features.txt
2. activity: <br>
  Links the class labels with their activity name.This data is extracted from activity_labels.txt 
3. test_raw:<br>
  Contains raw test data. This data is extracted from training set (test/X_test.txt)
4. test_lbl:<br>
  Contains activity labels for test data.Each row identifies the activity for each row in test set.
  This data is extracted from test set (test/Y_test.txt)
5. test_subject:<br>
  Each row identifies the subject who performed the activity for each row in test set. Its range is from 1 to 30. 
  This data is extracted from test/subject_test.txt.
6. train_raw:<br>
  Contains raw training data. This data is extracted from training set (train/X_train.txt)
7. train_lbl:<br>
  Contains activity labels for training data.Each row identifies the activity for each row in training set.
  This data is extracted from training set (train/Y_train.txt)
8. train_subject:<br>
  Each row identifies the subject who performed the activity for each row in training set. Its range is from 1 to 30. 
  This data is extracted from train/subject_train.txt.
9. ds:<br>
  Dataset that contains mearged data from training and test set. 
  Later this dataset is transformed to keep only the measurements on the mean and standard deviation for each measurement
  New columns for related activity and subject are also added to this data set. For detail description of the fields 
  please refer "DATA DICTIONARY" section of the document.
9. ds_lbl:<br>
  Contains activity labels for meraged dataset.Each row identifies the activity for each row in ds dataset.
10. ds_subject:<br>
  each row identifies the subject who performed the activity for each row in ds dataset. Its range is from 1 to 30. 
11. colnames:<br>
  This is a temparory variable that is used to transform the column labels in the data set with descriptive variable names.
12. mean_ds:<br>
  Data set with the average of each variable for each activity and each subject

# DATA DICTIONARY - tidyData.txt#
The file tidyData.txt is created as an output of run_analysis.R
The file contains total of 81 columns. 
First column "activity" denotes the descriptive activity names.
Second column "subject" identifies the subject who performed the activity.Its range is from 1 to 30.
Remaining columns are derived in two steps:
1. selected only the measurements on the mean and standard deviation for each measurement from input data.
2. Calculate average of each variable from the previous step, for each activity and each subject. 

prefix "time" denote time based measurements whereas prefix of "fft" denotes Fast Fourier Transform (FFT) based measurements.
"Acc" and "Gyro" in the name denotes accelerometer and gyroscope 3-axial raw signals respectively. Whereas -XYZ denotes the three axis.
"Mean" in the name denotes the columns derived from the columns that represents mean values from the input data.
"Std" in the name denotes the columns derived from the columns that represents Standard deviation values from the input data

A full description of input data is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Please refer below zip file for the input data used in this project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Below is a full list of all features in the output file tidyData.txt:<br>
"activity"   
"subject"                       
"timeBodyAccMean()-X"               
"timeBodyAccMean()-Z"               
"timeBodyAccStd()-Y"                
"timeGravityAccMean()-X"               
"timeGravityAccMean()-Z"               
"timeGravityAccStd()-Y"                
"timeBodyAccJerkMean()-X"           
"timeBodyAccJerkMean()-Z"           
"timeBodyAccJerkStd()-Y"            
"timeBodyGyroMean()-X"              
"timeBodyGyroMean()-Z"              
"timeBodyGyroStd()-Y"               
"timeBodyGyroJerkMean()-X"          
"timeBodyGyroJerkMean()-Z"          
"timeBodyGyroJerkStd()-Y"           
"timeBodyAccMagMean()"              
"tGravityAccMagMean()"              
"timeBodyAccJerkMagMean()"          
"timeBodyGyroMagMean()"             
"timeBodyGyroJerkMagMean()"         
"fftBodyAccMean()-X"                
"fftBodyAccMean()-Z"                
"fftBodyAccStd()-Y"                 
"fftBodyAccMeanFreq()-X"            
"fftBodyAccMeanFreq()-Z"            
"fftBodyAccJerkMean()-Y"            
"fftBodyAccJerkStd()-X"             
"fftBodyAccJerkStd()-Z"             
"fftBodyAccJerkMeanFreq()-Y"        
"fftBodyGyroMean()-X"               
"fftBodyGyroMean()-Z"               
"fftBodyGyroStd()-Y"                
"fftBodyGyroMeanFreq()-X"           
"fftBodyGyroMeanFreq()-Z"           
"fftBodyAccMagStd()"                
"fftBodyBodyAccJerkMagMean()"       
"fftBodyBodyAccJerkMagMeanFreq()"   
"fftBodyBodyGyroMagStd()"           
"fftBodyBodyGyroJerkMagMean()"      
"fftBodyBodyGyroJerkMagMeanFreq()"
"timeBodyAccMean()-Y"            
"timeBodyAccStd()-X"             
"timeBodyAccStd()-Z"             
"timeGravityAccMean()-Y"            
"timeGravityAccStd()-X"             
"timeGravityAccStd()-Z"             
"timeBodyAccJerkMean()-Y"        
"timeBodyAccJerkStd()-X"         
"timeBodyAccJerkStd()-Z"         
"timeBodyGyroMean()-Y"           
"timeBodyGyroStd()-X"            
"timeBodyGyroStd()-Z"            
"timeBodyGyroJerkMean()-Y"       
"timeBodyGyroJerkStd()-X"        
"timeBodyGyroJerkStd()-Z"        
"timeBodyAccMagStd()"            
"timeGravityAccMagStd()"            
"timeBodyAccJerkMagStd()"        
"timeBodyGyroMagStd()"           
"timeBodyGyroJerkMagStd()"       
"fftBodyAccMean()-Y"             
"fftBodyAccStd()-X"              
"fftBodyAccStd()-Z"              
"fftBodyAccMeanFreq()-Y"         
"fftBodyAccJerkMean()-X"         
"fftBodyAccJerkMean()-Z"         
"fftBodyAccJerkStd()-Y"          
"fftBodyAccJerkMeanFreq()-X"     
"fftBodyAccJerkMeanFreq()-Z"     
"fftBodyGyroMean()-Y"            
"fftBodyGyroStd()-X"             
"fftBodyGyroStd()-Z"             
"fftBodyGyroMeanFreq()-Y"        
"fftBodyAccMagMean()"            
"fftBodyAccMagMeanFreq()"        
"fftBodyBodyAccJerkMagStd()"     
"fftBodyBodyGyroMagMean()"       
"fftBodyBodyGyroMagMeanFreq()"   
"fftBodyBodyGyroJerkMagStd()"    




  
