# variable "instances" {
#     type = map
#     default = {
#         frontend = "t3.small"
#         backend = "t3.micro"
#         database = "t2.micro"
#     }
  
# }

variable "instances" {
    type = list
    default = ["mangodb", "cart"]
  
}