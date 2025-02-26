# Secrets needed in the crossplane-poc git repo
resource "aws_secretsmanager_secret" "crossplane-poc" {
  name = "git/crossplane-poc"
}
