README for getdata-012 course Project 
===============================================

1. The script run_anaysis.R creates an output text file with name "tidyData.txt" in the working directory. Please refer  CodeBook.md for information regarding the variables used in the script.
<br>
2. "tidyData.txt" contains tidy dataset with the average of each variable for each activity and each subject.
These variables are selected by extracting only the measurements on the mean and standard deviation for each measurement in input data. For more info regarding the feature variables and transformations regarding output Dataset please refer CodeBook.md
<br>

Running the Project
===================
To run the project, run run_analysis.R in your R environment.

Pre-requisites
=============
1. R version 3.0.2 or above should be installed and available in the host system. To get latest version of R please visit http://www.r-project.org/ 
<br>
2. For script run_analysis.R to run properly input data should be present in the working directory. Input data can be obtained by extracting the below zip file in your R working directory.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

3. run_analysis.R script requires "dplyr" packages.If you don't have dplyr package already installed in your R environment, please install it using the below command in your R console before running the script:<br>
install.packages("dplyr")


Notes: 
======
- Features in input data are normalized and bounded within [-1,1].

For more information regading the project please contact: er.pallav.gupta@gmail.com
