
resource "aws_s3_bucket" "hcpt_gitops_bucket" {

  bucket = local.bucket_name
  
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

resource "aws_s3_object" "hcpt_gitops_bucket_files" {
  count      = var.file_count
  bucket     = aws_s3_bucket.hcpt_gitops_bucket.id
  key        = "example_file_${count.index + 1 >= 10 ? "0" : ""}${count.index + 1}.txt"
  content    = "This is example file number ${count.index + 1}"
  content_type = "text/plain"
  depends_on = [aws_s3_bucket.hcpt_gitops_bucket]
}