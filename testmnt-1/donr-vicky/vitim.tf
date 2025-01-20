provider "aws" {
    region = "us-east-1"

}
resource "aws_instance" "ec2" {
    ami = "ami-0df8c184d5f6ae949"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.subnet_id
    key_name = "jenkins-Server"
    associate_public_ip_address = true 
     
     tags = {
        name = "ec2_by_Asif"
     }
    root_block_device {
        volume_size = 15
        volume_type = "gp2"
        delete_on_termination = "true"
      
    }
   
}