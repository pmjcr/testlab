# ------------------------------------------------------------------------------------------------------------------------------------


provider "aws" {
  alias  = "useast1"
  region = "us-east-1"
}


# ------------------------------------------------------------------------------------------------------------------------------------


#terraform {
#  backend "s3" {
#    bucket         = "base-build-sandbox"
#    key            = "terraform/rss_proxy_aws-sandbox_state"
#    dynamodb_table = "base-build-sandbox"
#    region         = "us-east-1"
#  }
#}
