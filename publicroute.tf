#Create custom public route table
resource "aws_route_table" "prod-route-table" {
  vpc_id = aws_vpc.mainvpc.id

  route {
    cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.gw.id
    }

    tags = {
      Name = "Public-Route"
    }
}
#Associate subnet with public Route Table
resource "aws_route_table_association" "a" {
   subnet_id      = aws_subnet.publicsubnet1.id
   route_table_id = aws_route_table.prod-route-table.id
 }

resource "aws_route_table_association" "b" {
   subnet_id      = aws_subnet.publicsubnet2.id
   route_table_id = aws_route_table.prod-route-table.id
 }
