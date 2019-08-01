# Configure the AWS Provider
provider "aws" {
  region = "us-west-1"
  access_key = "XXX"
  secret_key = "XXX"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  # AMI ID for Amazon Linux AMI 2016.03.0 (HVM)
#  host_name = "example101"
  ami           = "ami-65e0e305"
  instance_type = "t2.micro"
  subnet_id     = "subnet-3006fb55"

provisioner "local-exec" {

command = "echo ${aws_instance.example.public_ip} >> /tmp/ip.txt"
}

}



#resource "aws_subnet" "main" {
#  vpc_id     = "vpc-f4fb1791 "
#  }

