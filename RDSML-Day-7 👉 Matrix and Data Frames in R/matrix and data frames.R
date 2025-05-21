# Matrix in R
study_hours = c(89, 69, 45, 75, 63, 54, 23, 25, 57, 46)
subject_marks = c(79, 53, 71, 57, 63, 54, 74, 77, 61, 69)

# Creating a matrix just using study_hours

study_hours
subject_marks
stu_hous_mat = matrix(study_hours)
stud_hours_mat
study_hours

# Joining two columns in a matrix
student_data = c(study_hours, subject_marks)
student_matrix = matrix(student_data, byrow = FALSE, nrow = 10)
student_matrix

# Naming rows and columns
colnames(student_matrix) = c('Hours', 'Marks')
student_matrix
rownames(student_matrix) = c(1:10)
student_matrix  

#Selecting an element from matrix
student_matrix[6, 2]

summary(student_matrix)  

# Data frames in R
student_names = c("Mr1", "Ms2", "Ms3", "Mr4", "Ms5")
study_hours = c(20, 24, 46, 62, 22)
marks = c(40, 55, 69, 54, 45)
Gender = c("Male", "Female", "Female", "Male", "Female")

male = c(TRUE, FALSE, FALSE, TRUE, FALSE)

stu_data =data.frame(student_names, study_hours, marks, Gender)
summary(stu_data)

mean(stu_data$study_hours)


study_hours = c(89, 69, 45, 75, 63, 54, 23, 25, 57, 46)
subject_marks = c(79, 53, 71, 57, 63, 54, 74, 77, 61, 69)
cbind(study_hours, subject_marks)
rbind(study_hours, subject_marks)

study_hours = c(89, 69, 45, 75, 63, 54, 23, 25, 57, 46)
subject_marks = c(79, 53, 71, 57, 63, 54, 74, 77, 61, 69)
GPA = c(3.4, 3.5, 4.0, 2.5, 3.5, 2.8, 2.9, 2.95, 3.15, 3.75)
student_mat= cbind(study_hours, subject_marks,GPA)
row.names(student_mat)=  c(1:10)
student_mat
student_mat = c(study_hours,subject_marks, GPA)
student_matt =matrix(student_mat)
student_matt
student_data=matrix(student_matt, byrow=FALSE, nrow = 10)
student_data
colnames(student_data)= c("Hours", "marks", "GPA")
student_data
rownames(student_data)=c(1:10)
student_data
