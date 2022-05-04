provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "web" {
  ami = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-082db47b199e5f302"]
  key_name = "jenkins"
  tags = {
    Name = "jenkins"
  }

}