resource "aws_db_subnet_group" "DB_subnet_group" {
  name       = "db_subnet_group"
  subnet_ids = [data.aws_subnet.data_a.id, data.aws_subnet.data_b.id]

  tags = {
    Name = "Wordpress DB subnet group"
  }
}