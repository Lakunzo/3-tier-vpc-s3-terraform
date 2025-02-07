#Associate subnet with private route table
resource "aws_route_table_association" "c" {
   subnet_id      = aws_subnet.privatesubnet1.id
   route_table_id = aws_route_table.natroutetable.id
   
 }

 #Associate subnet with private route table
resource "aws_route_table_association" "d" {
   subnet_id      = aws_subnet.privatesubnet2.id
   route_table_id = aws_route_table.natroutetable.id
   
 }

  #Associate subnet with private route table
resource "aws_route_table_association" "e" {
   subnet_id      = aws_subnet.privatesubnet3.id
   route_table_id = aws_route_table.natroutetable.id
   
 }

  #Associate subnet with private route table
resource "aws_route_table_association" "f" {
   subnet_id      = aws_subnet.privatesubnet4.id
   route_table_id = aws_route_table.natroutetable.id
   
 }