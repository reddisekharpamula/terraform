resource "aws_instance" "example" {
    #ami = "ami-0220d79f3f480ecf5"
    ami = data.aws_ami.example.id
    instance_type = "t3.micro"
    vpc_security_group_ids  = [aws_security_group.allow-tls.id]
    tags = {
      Name = "example-instance"
      project = "Roboshop"
    }
  
}

data "aws_ami" "example" {

   most_recent      = true
   owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
resource "aws_security_group" "allow-tls" {
 name = "allow-all-terraform"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
    tags = {
      Name = "allow-all-terraform"
    }
}

