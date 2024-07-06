terraform {
  backend "s3" {
    bucket = "qiuyin-tfstate"
    key    = "example/prod/db/foobar_v1.0.2.tfstate"
    region = "ap-northeast-1"
  }
}