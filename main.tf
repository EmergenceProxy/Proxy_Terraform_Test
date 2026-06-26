provider "aws" {
	region = "us-east-2"
}

resources "aws_instance" "ytcdl-VM"{
	count = 1
	ami = "i-0506008b7824b0527"
	instance_type = "t3.micro"
	key_name = "ProxyRustyServer_KeyPair_2"
	security_groups = ["sg-068ce2334ae207a39"]
	tags = {
		Name = "proxy_ytcdl_vm"
	}
}

resources "aws_instance" "rusty-VM"{
	count = 0
	ami = "i-0506008b7824b0527"
	instance_type = "t3.micro"
	tags = {
		Name = "proxy_rusty_vm"
	}
}