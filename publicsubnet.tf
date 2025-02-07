


resource "aws_subnet" "publicsubnet1" {
  vpc_id = aws_vpc.mainvpc.id
  availability_zone = data.aws_availability_zones.available.names[0]
  cidr_block = "10.0.10.0/24"
  tags = {
    Name = "Public-Subnet-Zone-A"
  }

}

resource "aws_subnet" "publicsubnet2" {
  vpc_id = aws_vpc.mainvpc.id
  availability_zone = data.aws_availability_zones.available.names[1]
  cidr_block = "10.0.11.0/24"
  tags = {
    Name = "Public-Subnet-Zone-A"
  }
}