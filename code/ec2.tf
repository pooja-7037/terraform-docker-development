resource "aws_instance" "test1" {
    ami           = "ami-0567e0d2b4b2169ae"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform ec2"
  }
}