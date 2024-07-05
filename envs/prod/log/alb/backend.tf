terraform {
  backend "s3" {
    bucket = "qiuyin-tfstate"
    key    = "example/prod/log/alb_v1.0.2.tfstate"
    region = "ap-northeast-1"
  }
}