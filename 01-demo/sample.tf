resource "ec2_instance" "web" {
  ami  = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  tags = {
    Terraform   = "Helloworld"

  }
}