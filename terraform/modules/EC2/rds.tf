#create a RDS Database Instance
resource "aws_db_instance" "myrds" {
  engine               = "mysql"
  identifier           = "myrdsinstance"
  allocated_storage    =  20
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  username             = "admin"
  password             = "myrds123"
  availability_zone           = var.AZ
  vpc_security_group_ids = ["${aws_security_group.rds_sg.id}"]
  port                 = 3306
  publicly_accessible = false
}
