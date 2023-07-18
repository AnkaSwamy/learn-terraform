variable "sample" {
default = 100
}
variable "sample1" {
default = "HelloWorld"
}
variable "sample-ext" {
default = "HelloUniverse"
}
output "sample" {
value= var.sample
}
output "sample1" {
value= var.sample1
}
output "sample-ext" {
value= "value of sample-ext - ${var.sample-ext}"
}


# plain
variable "course" {
default = "Devops training"
}
#List
variable "courses" {
default= [
"Devopsmain"
"Aws"
"python"
]
}
#Map
variable "Course_details" {
default= {
DevOps= {
name= "Devops"
timings= "7AM"
duration= "90days"
}
AWS= {
name = "aws"
time= "8pm"
duration= 99
}
}
}
output "course" {
value= var.course
}
output "course" {
value= var.courses
}
output "Course_details" {
value= var.Courses_details
}