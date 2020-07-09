
##I get all the data of the test
X_test<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/test/X_test.txt",
                   header = FALSE)
View(X_test)

Y_test<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/test/Y_test.txt",
                   header = FALSE)
View(Y_test)

subject_test<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/test/subject_test.txt",
                         header = FALSE)
View(subject_test)

body_acc_x_test<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt",
                            header = FALSE)

body_acc_y_test<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt",
                            header = FALSE)

body_acc_z_test<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt",
                            header = FALSE)

body_gyro_x_test<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt",
                             header = FALSE)

body_gyro_y_test<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt",
                             header = FALSE)

body_gyro_z_test<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt",
                             header = FALSE)

total_acc_x_test<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt",
                             header = FALSE)

total_acc_y_test<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt",
                             header = FALSE)

total_acc_z_test<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt",
                             header = FALSE)






X_train<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/train/X_train.txt",
                    header = FALSE)
View(X_train)

Y_train<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/train/Y_train.txt",
                    header = FALSE)

subject_train<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/train/subject_train.txt",
                          header = FALSE)
View(subject_test)

body_acc_x_train<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt",
                             header = FALSE)

body_acc_y_train<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt.",
                             header = FALSE)

body_acc_z_train<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt",
                             header = FALSE)

body_gyro_x_train<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt",
                              header = FALSE)

body_gyro_y_train<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt",
                              header = FALSE)

body_gyro_z_train<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt",
                              header = FALSE)

total_acc_x_train<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt",
                              header = FALSE)

total_acc_y_train<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt",
                              header = FALSE)

total_acc_z_train<-read.table("C:/Users/57314/OneDrive - Universidad de los Andes/coursera/datasciencecoursera/Getting data/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt",
                              header = FALSE)

#Playing with the test data 
View(X_test)
View(body_acc_x_test)


#Here we put the activities on a columna of the data, but first we name the activities
#Create a function to assign the names
assi<-function(number){
  for(i in 1:length(number)){  
    if(number[i]==1){
      lista[i]<-"WALKING"
    }
    if(number[i]==2){
      lista[i]<-"WALKING_UPSTAIRS"
    }
    if(number[i]==3){
      lista[i]<-"WALKING_DOWNSTAIRS"
    }
    if(number[i]==4){
      lista[i]<-"SITTING"
    }
    if(number[i]==5){
      lista[i]<-"STANDING"
    }
    if(number[i]==6){
      lista[i]<-"LAYING"
    }
  }
  print(lista)
}


lista<-NULL
activities_test<-sapply(as.list(Y_test),assi)
colnames(activities_test)<-"Activity"
View(activities_test)

#Here I joint the activities with the X data
Test<-cbind(activities_test,X_test)

#Here we create a function that allow us to create the col names
colnames(body_acc_x_test)


column_names<-function(Col_Names,prefix){
  for(i in 1:length(Col_Names)){
    Col_Names[i]<-paste(prefix,substr(Col_Names[i],start = 2,stop = 4))
  }
  Col_Names
}
#we put the correct names for all the columns in all the data table  
colnames(body_acc_x_test)<-column_names(colnames(body_acc_x_test),"Body_x")  
colnames(body_acc_y_test)<-column_names(colnames(body_acc_y_test),"Body_y")
colnames(body_acc_z_test)<-column_names(colnames(body_acc_z_test),"Body_z")  
colnames(body_gyro_x_test)<-column_names(colnames(body_gyro_x_test),"gyro_x")  
colnames(body_gyro_y_test)<-column_names(colnames(body_gyro_y_test),"gyro_y") 
colnames(body_gyro_z_test)<-column_names(colnames(body_gyro_z_test),"gyro_z")  
colnames(total_acc_x_test)<-column_names(colnames(total_acc_x_test),"gyro_x") 
colnames(total_acc_y_test)<-column_names(colnames(total_acc_y_test),"gyro_x") 
colnames(total_acc_z_test)<-column_names(colnames(total_acc_z_test),"gyro_x") 


Test_Data<-cbind(Test,body_acc_x_test)
colnames(Test_Data)
Test_Data1<-cbind(Test_Data,body_acc_y_test)
Test_Data2<-cbind(Test_Data1,body_acc_z_test)
Test_Data3<-cbind(Test_Data2,body_gyro_x_test)
Test_Data4<-cbind(Test_Data3,body_gyro_y_test)
Test_Data5<-cbind(Test_Data4,body_gyro_z_test)
Test_Data6<-cbind(Test_Data5,total_acc_x_test)
Test_Data7<-cbind(Test_Data6,total_acc_y_test)
Test_Data_final<-cbind(Test_Data7,total_acc_z_test)

View(Test_Data_final)
colnames(Test_Data_final)


for(i in 2:ncol(Test_Data_final)){
  med<-mean(Test_Data_final[,i])
  des<-sd(Test_Data_final[,i])
  for (j in i:nrow(Test_Data_final)) {
    
    if(Test_Data_final[j,i]<= (med-des) | Test_Data_final[j,i]>=(med+des)){
      Test_Data_final[j,i]=NA
    }
    
    
  }
}

##Final:
Test_Data_final


## Now we do the same with the train data. 


lista<-NULL
activities_train<-sapply(as.list(Y_train),assi)
colnames(activities_train)<-"Activity"
View(activities_train)

#Here I joint the activities with the X data
Train<-cbind(activities_train,X_train)

#Here we create a function that allow us to create the col names
colnames(body_acc_x_train)


column_names<-function(Col_Names,prefix){
  for(i in 1:length(Col_Names)){
    Col_Names[i]<-paste(prefix,substr(Col_Names[i],start = 2,stop = 4))
  }
  Col_Names
}
#we put the correct names for all the columns in all the data table  
colnames(body_acc_x_train)<-column_names(colnames(body_acc_x_train),"Body_x")  
colnames(body_acc_y_train)<-column_names(colnames(body_acc_y_train),"Body_y")
colnames(body_acc_z_train)<-column_names(colnames(body_acc_z_train),"Body_z")  
colnames(body_gyro_x_train)<-column_names(colnames(body_gyro_x_train),"gyro_x")  
colnames(body_gyro_y_train)<-column_names(colnames(body_gyro_y_train),"gyro_y") 
colnames(body_gyro_z_train)<-column_names(colnames(body_gyro_z_train),"gyro_z")  
colnames(total_acc_x_train)<-column_names(colnames(total_acc_x_train),"gyro_x") 
colnames(total_acc_y_train)<-column_names(colnames(total_acc_y_train),"gyro_x") 
colnames(total_acc_z_train)<-column_names(colnames(total_acc_z_train),"gyro_x") 


Train_Data<-cbind(Test,body_acc_x_train)
colnames(Train_Data)
Train_Data1<-cbind(Train_Data,body_acc_y_train)
Train_Data2<-cbind(Train_Data1,body_acc_z_train)
Train_Data3<-cbind(Train_Data2,body_gyro_x_train)
Train_Data4<-cbind(Train_Data3,body_gyro_y_train)
Train_Data5<-cbind(Train_Data4,body_gyro_z_train)
Train_Data6<-cbind(Train_Data5,total_acc_x_train)
Train_Data7<-cbind(Train_Data6,total_acc_y_train)
Train_Data_final<-cbind(Train_Data7,total_acc_z_train)

View(Train_Data_final)
colnames(Train_Data_final)


for(i in 2:ncol(Train_Data_final)){
  med<-mean(Train_Data_final[,i])
  des<-sd(Train_Data_final[,i])
  for (j in i:nrow(Train_Data_final)) {
    
    if(Train_Data_final[j,i]<= (med-des) | Train_Data_final[j,i]>=(med+des)){
      Train_Data_final[j,i]=NA
    }
    
    
  }
}

##Final:
Train_Data_final
