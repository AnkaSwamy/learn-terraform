resource  "aws_instance" "web" {
  ami                    = "ami-03265a0778a880afb"
  name                   = "single-instance"
  instance_type          = "t3.micro"
  tags = {
    name   = "Hello-world"

  }
}