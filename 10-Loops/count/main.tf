resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  count         = 3
  instance_type = "t3.micro"

  tags = {
    Name = "loops"
  }
}

data "aws_ami" "example" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}
variable "instances" {
  default = [ "frontend", "catalogue", "cart"]
}
