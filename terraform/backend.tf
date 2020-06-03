// Initialize the backend module by filling out all the input params. 
module "backend" {
    source = "./backend"
    project = "friyay-timdb"
    user_data = file("./init.sh")
    subnets = ["subnet-663cdf2f"]
    ami = "ami-0c9e7070ba2856f49"
    security_groups = ["sg-0ed3c675"]
    min_instances = 1
    max_instances = 1
    desired_instances = 1
}