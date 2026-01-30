
resource "aws_s3_bucket" "hcpt_gitops_bucket" {

  bucket = "${var.bucket_prefix}-hcpt-gitops-example-bucket-${random_string.s3_bucket_suffix.id}"
}

resource "random_string" "s3_bucket_suffix" {
  keepers = {
    "version" : "v1"
  }
  length = 6
  upper  = false
  lower  = true
  numeric = true
  special = false
}

resource "aws_s3_object" "example_files" {
  count      = var.files_to_create
  bucket     = aws_s3_bucket.hcpt_gitops_bucket.id
  key        = "example_file_${count.index + 1 >= 10 ? "0" : ""}${count.index + 1}.txt"
  content    = "This is example file number ${count.index + 1}"
  content_type = "text/plain"
  depends_on = [aws_s3_bucket.hcpt_gitops_bucket]
}