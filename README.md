# 3-Tier VPC with S3 Endpoint Architecture on AWS using Terraform 

## Project Overview
This project is a Terraform solution that creates a 3 tier AWS virtual private cloud (VPC) architecture that includes an S3 VPC endpoint. The VPC is divided into 3 categories
* Public Subnet Zone A
* Private Subnet Zone B
* Private Subnet Zone C
These across two availabiity zones in the US-EAST-1 region. 

![Architectural Diagram](https://i.postimg.cc/Bn6jLTz6/3-tier-vpc-drawio.png)

## Public Subnet
The Public Subnet consists of 2 subnets in the Availability Zones us-east-1a and us-east1b. They are connected to a public route which connects to the internet gateway, thereby having access to and from igw into the subnet. The resources deployed in these subnets will be internet facing typically web applications that can accept user input. 
