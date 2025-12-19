# S3 Bucket
resource "aws_s3_bucket" "bucket" {
  bucket = "devops-assignment-bucket-12345"
}

# RDS (Minimal)
resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "password123"
  skip_final_snapshot  = true
}
