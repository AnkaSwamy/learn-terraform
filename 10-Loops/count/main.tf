resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  count     = length(var.instances)
  instance_type = "t3.micro"

  tags = {
    Name =element(var.instances,count.index)
  }
}

data "aws_ami" "example" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}
