# TODO: Designate a cloud provider, region, and credentials
# i do not like the idea of uploading the aws credentials anywhere
provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity1" {
  ami           = "ami-01720b5f421cf0179"
  instance_type = "t2.micro"
  subnet_id  = "subnet-0d431f01b6fe10d4e"
  count = "4"
    tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "udacity2" {
#  ami           = "ami-01720b5f421cf0179"
#  instance_type = "m4.large"
#  subnet_id  = "subnet-0d431f01b6fe10d4e"
#  count = "2"
#  
#      tags = {
#    Name = "Udacity M4"
#  }
#}