trainx<-read.table("train/X_train.txt")
trainact<-read.table("train/y_train.txt")
trainsub<-read.table("train/subject_train.txt")
trainx$Activity = trainact$V1
trainx$Subject = trainsub$V1
testx<-read.table("test/X_test.txt")
testact<-read.table("test/y_test.txt")
testsub<-read.table("test/subject_test.txt")
testx$Activity = testact$V1
testx$Subject = testsub$V1
com<-merge(trainx,testx,all=TRUE)
features<-read.table("features.txt")
fbool<-grepl("mean()|std()",features$V2)
relfeatures<-features$V1[fbool]
relfnames<-features$V2[fbool]
coma<-data.frame(com[relfeatures[1:79]])
coma$Activity = com$Activity
coma$Subject = com$Subject
names(coma)<-c(as.vector(relfnames),"Activity", "Subject")
for (i in seq_along(coma$Activity)) {
  if(coma$Activity[i]==6)
    coma$Activity[i]<-"LAYING"
  if(coma$Activity[i]==5)
    coma$Activity[i]<-"STANDING"
  if(coma$Activity[i]==4)
    coma$Activity[i]<-"SITTING"
  if(coma$Activity[i]==3)
    coma$Activity[i]<-"WALKING_DOWNSTAIRS"
  if(coma$Activity[i]==2)
    coma$Activity[i]<-"WALKING_UPSTAIRS"
  if(coma$Activity[i]==1)
    coma$Activity[i]<-"WALKING"
}



