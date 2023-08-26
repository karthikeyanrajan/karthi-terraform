# Create an internet gateway
resource "aws_internet_gateway" "karthi-igw" {
  vpc_id = aws_vpc.karthi-vpc.id

  tags = {
    Name = "karthi-igw"
  }
}

# Create a route table
resource "aws_route_table" "karthi-public-rt" {
  vpc_id = aws_vpc.karthi-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.karthi-igw.id  # Reference the internet gateway
  }

  tags = {
    Name = "karthi-public-rt"
  }
}

# Associate subnet with route table
resource "aws_route_table_association" "karthi-rta-public-subent-1" {
  subnet_id      = aws_subnet.karthi-public_subent_01.id
  route_table_id = aws_route_table.karthi-public-rt.id
}

