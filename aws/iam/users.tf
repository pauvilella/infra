# User for the crossplane-poc repo (used for creating
# aws resources from Crossplane)
resource "aws_iam_user" "crossplane_poc" {
  name          = "crossplane-poc"
  path          = "/"
  force_destroy = true
}
