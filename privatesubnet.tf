#Create first private subnet and attaches it to the first AZ
resource "aws_subnet" "privatesubnet1" {
  vpc_id = aws_vpc.mainvpc.id
  availability_zone = data.aws_availability_zones.available.names[0]
  cidr_block = "10.0.100.0/24"
  tags = {
    Name = "Private-Subnet-Zone-B"
  }
}

#Create second private subnet and attaches it to the second AZ
resource "aws_subnet" "privatesubnet2" {
  vpc_id = aws_vpc.mainvpc.id
  availability_zone = data.aws_availability_zones.available.names[1]
  cidr_block = "10.0.110.0/24"
  tags = {
    Name = "Private-Subnet-Zone-B"
  }
}

#Create third private subnet and attaches it to the first AZ
resource "aws_subnet" "privatesubnet3" {
  vpc_id = aws_vpc.mainvpc.id
  availability_zone = data.aws_availability_zones.available.names[0]
  cidr_block = "10.0.120.0/24"
  tags = {
    Name = "Private-Subnet-Zone-C"
  }
}

#Create fourth private subnet and attaches it to the second AZ
resource "aws_subnet" "privatesubnet4" {
  vpc_id = aws_vpc.mainvpc.id
  availability_zone = data.aws_availability_zones.available.names[1]
  cidr_block = "10.0.130.0/24"
  tags = {
    Name = "Private-Subnet-Zone-C"
  }
}
