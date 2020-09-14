output "this_s3_bucket_id" {
  description = "The name of the bucket."
  value       = element(concat( aws_s3_bucket.this.*.id, list("")), 0)
}

output "this_s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = element(concat(aws_s3_bucket.this.*.arn, list("")), 0)
}


output "this_s3_bucket_bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = element(concat(aws_s3_bucket.this.*.bucket_domain_name, list("")), 0)
}
