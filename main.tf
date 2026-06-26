provider "aws" {
	region = "us-east-2"
}

resource "aws_instance" "ytcdl-VM"{
	count = 1
	ami = "ami-060988b0dff2faa7c"
	instance_type = "t3.micro"
	key_name = "ProxyRustyServer_KeyPair_2"
	security_groups = ["sg-068ce2334ae207a39"]
	tags = {
		Name = "proxy_ytcdl_vm"
	}
}

resource "aws_instance" "rusty-VM"{
	count = 0
	ami = "ami-060988b0dff2faa7c"
	instance_type = "t3.micro"
	tags = {
		Name = "proxy_rusty_vm"
	}
}