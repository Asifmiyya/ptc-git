provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "admin" {
    ami = "ami-0df8c184d5f6ae949"
    instance_type = "t2.micro"
    security_groups = ["default"]
    key_name = "jenkins-Server"
    root_block_device {
        volume_size = 20
        volume_type = "gp2"
        delete_on_rermination =true
    }
    user_data = file{"script.sh"}
    
}