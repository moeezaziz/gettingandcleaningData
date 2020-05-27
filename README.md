# gettingandcleaningData
Coursera Assignment

The train and test data sets are separately read into tables:
trainx<-- Training data
trainact <-- Activity numbers
trainsub <-- Training Subjects

testx<-- Training data
testact <-- Activity numbers
testsub <-- Training Subjects

The Activity and Subject collumns are appended to trainx an testx

trainx an testx are merged into data frame "com"

features.txt is read into the table "features"
grepl() is used to search features that contain "mean()" or "std()"

"com"" is modiied to contain only the variables corresponding to those resulted in the grepl() function and the result is assigned to "coma"

The variables in coma are assigned names of the variables that resulted in grepl()

The Activity column is labeled using a for loop Each number replaced by activity name

coma is converted to a data table and assigned to "Tidy" using the data.table library to summarize the means of each variable for each activity an each subject

"Tidy" is the output data set

