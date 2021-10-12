resource "aws_s3_bucket" "mod1" {
  bucket = "datalake-igti-edc-${var.aws_account_number}-tf"
  acl    = "private"

  tags = {
    "IES"   = "IGTI",
    "Curso" = "EDC"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket_object" "job_spark" {
  bucket = aws_s3_bucket.mod1.id
  key    = "emr-code/pyspark/glue_spark_job.py"
  acl    = "private"
  source = "../glue_spark_job.py"
  etag   = filemd5("../glue_spark_job.py")
}