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
    // ["sg-0ed3c675"]
}

variable "subnets" {
    type = list(string)
    // ["subnet-663cdf2f"]
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