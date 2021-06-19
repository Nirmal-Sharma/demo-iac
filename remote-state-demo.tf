resource "aws_db_instance" "default" {
  identifier           = "demo-rds"
  storage_type         = "gp2"
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = file("${path.module}/confidential.txt")
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}