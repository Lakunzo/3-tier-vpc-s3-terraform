#Create an Elastic IP for NAT gateway
resource "aws_eip" "Nat-gw-eip" {
  depends_on = [ aws_route_table.prod-route-table ]
  
}

#Creating NAT Gateway
resource "aws_nat_gateway" "NAT_GATEWAY" {
  subnet_id = aws_subnet.publicsub1.id
  depends_on = [ aws_eip.Nat-gw-eip ]

  allocation_id = aws_eip.Nat-gw-eip.id
  tags = {
    Name = "ProdNatgw"
  }
}

#Create a route table for NAT gateway
resource "aws_route_table" "natroutetable" {
  depends_on = [ aws_nat_gateway.NAT_GATEWAY ]
  vpc_id = aws_vpc.mainvpc.id

    route {
    cidr_block = "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.NAT_GATEWAY.id
    }

  tags = {
      Name = "Private-Route"
    }
}
