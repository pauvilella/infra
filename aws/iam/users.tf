# Main pauvilella IAM user (my user)
# Also used for doing the terragrunt commands in this repo.
# It has been imported into this config
resource "aws_iam_user" "pauvilella" {
  name          = "pauvilella"
  path          = "/"
  force_destroy = false
}
resource "aws_iam_user_policy_attachment" "pauvilella_attachment1" {
  user       = aws_iam_user.pauvilella.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# User for the crossplane-poc repo (used for creating
# aws resources from Crossplane)
resource "aws_iam_user" "crossplane" {
  name          = "crossplane"
  path          = "/"
  force_destroy = true
}
resource "aws_iam_user_policy_attachment" "crossplane_attachment1" {
  user       = aws_iam_user.crossplane.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
