#Create S3 VPC endpoint and connects it to the private subnet
resource "aws_vpc_endpoint" "s3" {
  vpc_id = aws_vpc.mainvpc.id
  service_name = "com.amazonaws.us-east-1.s3"
  route_table_ids = [aws_route_table.natroutetable.id]
  tags = {
    Name = "ProdS3endpoint"
  }
}