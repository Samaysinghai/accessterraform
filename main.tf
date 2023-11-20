provider "github" {
  owner = var.gh_username
  token = var.gh_token
} 

data "github_repository" "current" {
  full_name = "${var.gh_username}/${var.gh_repo}"
}

output "repository_url" {
  value = data.github_repository.current.html_url
}

output "repository_ssh_url" {
  value = data.github_repository.current.ssh_url
}
