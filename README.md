# 3-Tier VPC with S3 Endpoint Architecture on AWS using Terraform 

## Project Overview
This project is a Terraform solution that creates a 3 tier AWS virtual private cloud (VPC) architecture that includes an S3 VPC endpoint. The VPC is divided into 3 categories
* Public Subnet Zone A
* Private Subnet Zone B
* Private Subnet Zone C
These across two availabiity zones in the US-EAST-1 region. 

![Architectural Diagram](https://i.postimg.cc/Bn6jLTz6/3-tier-vpc-drawio.png)

## Public Subnet
The Public Subnet consists of 2 subnets in the Availability Zones us-east-1a and us-east1b. They are connected to a public route which connects to the internet gateway, thereby having access to and from the igw into the subnet. The resources deployed in these subnets will be internet facing typically web applications that can accept user input. 

## Private Subnets
The private subnets has a total of 4 subnets, 2 each in the Availabiity Zones us-east-1a and us-east-1b. They are connected to a private route that uses a NAT gateway to get to the internet. The NAT gateway is assigned an elastic IP through which resources deployed in the subnet can reach the internet. Using the NAT gateway prevents direct access to these resources from the internet. Resources deployed usually deployed in these subnets are application and database resources.

## VPC S3 Endpoint
This allows you to access your S3 buckets without using the internet or NAT gateway. 

## Terraform Configuration
The Terraform configuration for this project is categorized by resources needed to create the VPC infrastructure. These resources are:
* Virtual Private Cloud
* Public and Private Subnets with AZs
* Public and Private Routes
* NAT and Internet gateways
* Security Groups
* S3 Endpoint

## Deployment
To deploy this architecture 
1. Clone this repository
    ```
   git clone https://github.com/Lakunzo/3-tier-vpc-s3-terraform.git
2. Make changes to the prodvar.tf file to include your AWS access key and secret key. If necessary, make changes to the public and private subnets CIDR
3. Initialize Terraform backend
   ```
   terraform init
4. Validate the Terraform configuration
   ```
   terraform validate
5. Run the terraform plan to view the resources that will be created
   ```
   terraform plan
6. Run terraform apply to create the needed resources
   ```
   terraform apply
7. Destroy all resources to clean up the environment
   ```
   terraform destroy
## Output
If this runs successfully your VPC should look similar to this
![Output Diagram](https://i.postimg.cc/9QDMVX9D/Screenshot-2025-02-07-131338.png)

## Future Enhancement
* Deploy EC2 instances in the public subnet and first private subnet
* Apply autoscaling groups to the deployment
* Deploy Database instances in the second private subnet
* Deploy a read-replica database in the us-east-1b private subnet
* Create an S3 bucket that can be accessed by the EC2 instances in the first private subnet
* Apply security features including ACLs to ensure the public subnet can't reach the second private subnet 
