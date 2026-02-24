variable "ingress_rules" {
    # type = list
    default = [

      {
        port = 22
        cidr_blocks = ["0.0.0.0/0"]
        description = "allow port 22 for ssh"
      },
      {
        port = 443
        cidr_blocks = ["0.0.0.0/0"]
        description = "allow port 443 for https"
      },
      {
        port = 3306
        cidr_blocks = ["0.0.0.0/0"]
        description = "allow port 3306 for mysql"
      }

    ]
  
}