# The Vercel provider
provider "vercel" {
  api_token = var.vercel_api_token
}

resource "vercel_project" "nx-next-terraform-vercel" {
  name      = "nx-next-terraform-vercel"
  framework = "nextjs"
  git_repository = {
    type = "github"
    repo = "amaralc/nx-next-terraform-vercel"
    production_branch = "main"
  }

  build_command = "npx nx build nx-next-terraform-vercel --prod"
  output_directory = "dist/apps/nx-next-terraform-vercel/.next"
  dev_command = "npx nx serve nx-next-terraform-vercel"
}
