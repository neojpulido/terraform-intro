terraform {
  backend "s3" {
    bucket = "tf-backend-terraform-platzi"
    key = "dev"
    region = "us-east-2"
    encrypt = true
    kms_key_id = "arn:aws:kms:us-east-2:490281667603:key/84f048d1-2830-44c1-bf9a-24f37d92dc5a"
    
  }
}