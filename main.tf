provider "aws" {
    region = "us-east-2"
}

module "ec2module" {
    source = "./ec2"
    ec2name = "docker-server"   
}

module "ec2module1" {
    source = "./ec2"
    ec2name = "Docker-Host"   
}

module "ngin-project" {
    source = "./ec1"
    ec2name = "Docker-Host"   
}

output "PrivateIP" {
  value = "module.ec2module.private_ip"
}
