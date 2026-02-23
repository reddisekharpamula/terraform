resource "aws_instance" "example" {
    for_each = toset(var.instances)
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    # instance_type = each.value
    vpc_security_group_ids  = [aws_security_group.allow-tls.id]
    tags = {
      Name = each.value
      project = "Roboshop"
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

