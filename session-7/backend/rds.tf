resource "aws_db_instance" "wordpreses" {
  allocated_storage         = 10
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t2.micro"
  name                      = "wordpress" # Name of my database, not the RDS name
  username                  = "admin"
  password                  = random_password.db_password.result
  identifier                = "${var.env}-rds-instance" # format(%s-rds-instance, var.env)                  # Name of the RDS instance, not a database.
  publicly_accessible       = var.env == "dev" ? true : false
  skip_final_snapshot       = var.env == "dev" ? true : false # If we do true on skip_final_snapshot we do not need final_snapshot_identifier.
  final_snapshot_identifier = var.env == "dev" ? null : "${var.env}-db-snapshot"

}














# null = empty
# dev-rds-instance
# dev = true
# prod = false
# 1 == 1 > true
# 1 == 2 > false
# 1 != 1 > false
# 1 != 2 > true
# == (equal)
# != (not equal)
