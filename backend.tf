terraform {
  backend "s3" {
      bucket = "devops019-terraformstatefile"
      key = "devops019key"
      region = "ca-central-1"
  }
}