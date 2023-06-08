# The Vercel provider
provider "vercel" {
  api_token = var.vercel_api_token
}

resource "vercel_project" "nx-next-terraform-demo" {
  name      = "nx-next-terraform-demo"
  framework = "nextjs"
  git_repository = {
    type = "github"
    repo = "amaralc/nx-next-terraform-demo"
  }
}
