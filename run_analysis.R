# Incude required Packages 
library(dplyr)

#Read all required files
features <- read.table("features.txt")
activity <- read.table("activity_labels.txt")

test_raw <- read.table("./test/X_test.txt")
test_lbl <- read.table("./test/Y_test.txt")
test_subject <- read.table("./test/subject_test.txt")

train_raw <- read.table("./train/X_train.txt")
train_lbl <- read.table("./train/Y_train.txt")
train_subject <- read.table("./train/subject_train.txt")

# Merge the training and the test sets (Step 1)
ds <- rbind(train_raw,test_raw)
ds_lbl <- rbind(train_lbl,test_lbl)
ds_subject <- rbind(train_subject,test_subject)

# Appropriately labels the data set with descriptive variable names (Step 4)
names(ds) <- features[[2]]

# Extract only the measurements on the mean and standard deviation for each measurement (Step 2)
mean_std <- grep("mean|std", colnames(ds), value=T)
ds <- ds[,mean_std]



# add new columns for related activity and subject
ds["activity"]<- ds_lbl
ds["subject"]<- ds_subject



# Add descriptive activity names (Step 3)
for (i in 1:nrow(activity)) {
        ds$activity[ds$activity == as.numeric(activity[i,1])] <- as.character(activity[i,2])
}

# Appropriately labels the data set with descriptive variable names (Step 4)
colnames <- names(ds)
colnames<- sub("^fB","fftB",colnames)
colnames<- sub("^tB","timeB",colnames)
colnames<- sub("^tG","timeG",colnames)
colnames<- sub("-M","m",colnames)
colnames<- sub("-S","S",colnames)
colnames<- sub("-m","M",colnames)
colnames<- sub("-s","S",colnames)
names(ds) <- colnames


# Creating data set with the average of each variable for each activity and each subject( Step 5)
mean_ds <- aggregate(.~ activity + subject ,ds , mean)
write.table(mean_ds,"tidyData.txt",row.names=FALSE)
