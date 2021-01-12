resource "aws_instance" "ec2" {
       ami = "ami-08f271a75defdf110"
       instance_type = "t2.micro"
       key_name = "k23a"
       count = 1
       user_data = file("ec2/docker.sh")
       security_groups = ["my_SG"]
       tags = {
           name = "Docker-Host"
           Environment = "Dev"
       }
}
