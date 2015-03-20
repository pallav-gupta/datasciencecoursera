#Code Book#

Variables Used in run_analysis.R
================================

1. features  
  Contains List of all features.This data is extracted from features.txt
2. activity
  Links the class labels with their activity name.This data is extracted from activity_labels.txt 
3. test_raw
  Contains raw test data. This data is extracted from training set (test/X_test.txt)
4. test_lbl
  Contains activity labels for test data.Each row identifies the activity for each row in test set.
  This data is extracted from test set (test/Y_test.txt)
5. test_subject
  Each row identifies the subject who performed the activity for each row in test set. Its range is from 1 to 30. 
  This data is extracted from test/subject_test.txt.
6. train_raw
  Contains raw training data. This data is extracted from training set (train/X_train.txt)
7. train_lbl
  Contains activity labels for training data.Each row identifies the activity for each row in training set.
  This data is extracted from training set (train/Y_train.txt)
8. train_subject
  Each row identifies the subject who performed the activity for each row in training set. Its range is from 1 to 30. 
  This data is extracted from train/subject_train.txt.
9. ds
  Dataset that contains mearged data from training and test set. 
  Later this dataset is transformed to keep only the measurements on the mean and standard deviation for each measurement
  New columns for related activity and subject are also added to this data set. For detail description of the fields 
  please refer "DATA DICTIONARY" section of the document.
9. ds_lbl
  Contains activity labels for meraged dataset.Each row identifies the activity for each row in ds dataset.
10. ds_subject
  each row identifies the subject who performed the activity for each row in ds dataset. Its range is from 1 to 30. 
11. colnames
  This is a temparory variable that is used to transform the column labels in the data set with descriptive variable names.
12. mean_ds
  Data set with the average of each variable for each activity and each subject

  
