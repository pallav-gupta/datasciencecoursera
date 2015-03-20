README for getdata-012 course project 
===============================================

1. The script run_anaysis.R creates an output text file with name "tidyData.txt" in the working directory. Please refer  CodeBook.md for information regarding the variables used in the script.
<br>
2. "tidyData.txt" contains tidy dataset with the average of each variable for each activity and each subject.
These variables are selected by extracting only the measurements on the mean and standard deviation for each measurement in input data. For more info regarding the feature variables and transformations regarding output Dataset please refer CodeBook.md
<br>
3. For script to run properly input data should be present in the working directory. Input data can be obtained by extracting the below zip file in your R working directory.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

4. This script requires "dplyr" packages.If you don't have dplyr package install in your R environment, please install it using the below command in your R console before running run_analysis.R:<br>
install.packages("dplyr")


Notes: 
======
- Features in input data are normalized and bounded within [-1,1].

For more information regading the project please contact: er.pallav.gupta@gmail.com
