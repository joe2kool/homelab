

resource "aws_ecr_repository" "lab_api" {
  name = "lab-api"
  image_scanning_configuration {
    scan_on_push = true
  }
}  

  output "ecr_repo_url" {
    value = aws_ecr_repository.lab_api.repository_url
  }
