locals {
    
    bucket_name = "${local.prefix}hcpt-gitops-demo-${random_string.s3_bucket_suffix.id}"
    prefix = length(var.bucket_prefix) > 0 ? "${var.bucket_prefix}-" : ""
    
}