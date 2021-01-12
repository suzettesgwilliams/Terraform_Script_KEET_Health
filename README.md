This terraform exercise was assigned to Suzette Williams by Keet Health to fulfill the requirements of the "Site Reliability Engineer" interview process

Keet Health | Terraform Exercise
Please reproduce the following:

Write a module in terraform, that will

use the AWS provider
provision an EC2 instance
install Docker
run the nginx Docker image
output the internal IP
Then use that module in another terraform script

Create a readme file

In the readme file, comment on if you were to iterate on this, what would you add? Why?

Save to a github repo and send the link to the code for review

Response

I have used terraform as an Infrastructure as code (IaC) tool to provision my infrasctructure on AWS. Provisioned infrastructure inlude:

An Ubuntu server with Docker installed
A Docker container with nginx container hosted by the ubuntu server

A re-usable module was used to create lightweight abstractions,to describe the infrastructure in terms of its architecture. Please see guide for additional information https://www.terraform.io/docs/modules/index.html

After initializing terraform, terraform plan and terraform apply created the EC working directories. These directories contain our main configuration file: main.tf to form the root module. The root module integrated the variable.tf and output.tf by passing output values from one to input values of another.
The EC1 directory shows configuration for provisioning an ubunbtu EC2 instance with docker runtime and an nginx container while The EC2 directory showed how the module was used in a separate script.

If I were to iterate, I would add an autoscaling group, just to ensure that my application scales with increased traffic.
