# 🚀 Proxy_Terraform_Test


> A fast way to setup aws infrastucture using terraform containers, running on docker, installed on an AWS EC2.

[![License](https://shields.io)](LICENSE)
[![Build Status](https://shields.io)]()

---

## 📋 Table of Contents
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)

## ✨ Features
- Defines terraform infrastructure for my orchestra.
- Includes "TF_Create_ec2.json" to define policy to attach to role assigned to the EC2.

## Installation
1. Create role.
2. Assign policy.
3. Create EC2.
4. Assign role to EC2.
5. Log into EC2.
6. Install Docker.
7. Modify "main.tf"
8. =D !!!

## Usage

1. docker run --rm -v $(pwd):/workspace -w /workspace hashicorp/terraform:latest init

2. docker run --rm -v $(pwd):/workspace -w /workspace hashicorp/terraform:latest plan -out=tfplan1

3. docker run --rm \
			-v $(pwd):/workspace \
			-w /workspace \
			hashicorp/terraform:latest apply "tfplan1"