variable "ami_id" {
    type = string
    description = "AMI id of the instance"
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    description = "Instance type"
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "variables-demo"
        Project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}

variable "sg_from_port" {
    type = number
    default = 0
  
}

variable "sg_to_port" {
    type = number
    default = 0
  
}

variable "sg_tags" {
  type = map
  default = {
    Name = "allow-all-terraform"
    Project = "roboshop"
    Terraform = "true"
    Environment = "dev"
  }
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}


