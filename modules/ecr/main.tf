resource "aws_ecr_repository" "this" {
  name = var.name

  tags = {
    Name = var.name
  }
}

resource "aws_ecr_lifecycle_policy" "this" {
  repository = aws_ecr_repository.this.name

  policy = jsonencode({
    rules = [
      {
        rulePriority = 1,
        description  = "Hold only the ${var.hoding_count} most recent images",
        selection    = {
          tagStatus = "any",
          countType = "imageCountMoreThan",
          countNumber = var.hoding_count
        },
        action = {
          type = "expire"
        }
      }
    ]
  })
  
}