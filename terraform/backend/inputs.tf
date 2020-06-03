variable "project" {
    type = string
}

variable "ami" {
    type = string
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "key_name" {
    type = string
    default = "linux"
}

variable "user_data" {
    type = string
}

variable "security_groups" {
    type = list(string)
}

variable "subnets" {
    type = list(string)
}

variable "min_instances" {
    type = number
}

variable "max_instances" {
    type = number
}

variable "desired_instances" {
    type = number
}
