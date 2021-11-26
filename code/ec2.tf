resource "aws_instance" "jenkins" {
  depends_on = [
    aws_security_group.jenkins_security_grp
  ]
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.my_instance_type
  key_name      = var.mykey
  vpc_security_group_ids = [ aws_security_group.jenkins_security_grp.id ]
  user_data = file("./scripts/docker_install.yml")

  tags = {
    Name = "jenkins"
  }
}

resource "aws_security_group" "jenkins_security_grp" {
  name        = "terraform jenkins"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "Allow SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
    ingress {
    description      = "Allow 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}