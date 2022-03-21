# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
      region = "us-east-1"
      access_key = "AKIAURCHU6IR4U5UX7IG"
      secret_key = "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"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity_t2" {
      ami = "ami-04505e74c0741db8d"
      instance_type = "t2.micro"
      subnet_id = "subnet-098f0c881ba58bf3e"
      count = 4
      tags = {
            Name = "Udacity T2"
      }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity_m4" {
  ami = "ami-04505e74c0741db8d"
  instance_type = "m4.large"
  subnet_id = "subnet-098f0c881ba58bf3e"
  count = 2
  tags = {
    Name = "Udacity M4"
  }
}