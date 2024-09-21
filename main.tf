resource "kion_ou_cloud_access_role" "this" {
  name                         = var.name
  ou_id                        = var.ou_id
  aws_iam_role_name            = var.aws_iam_role_name
  web_access                   = var.web_access
  short_term_access_keys       = var.short_term_access_keys
  long_term_access_keys        = var.long_term_access_keys
  aws_iam_path                 = var.aws_iam_path
  aws_iam_permissions_boundary = var.aws_iam_permissions_boundary

  dynamic "aws_iam_policies" {
    for_each = var.aws_iam_policies
    content {
      id = aws_iam_policies.value.id
    }
  }

  dynamic "azure_role_definitions" {
    for_each = var.azure_role_definitions
    content {
      id = azure_role_definitions.value.id
    }
  }

  dynamic "gcp_iam_roles" {
    for_each = var.gcp_iam_roles
    content {
      id = gcp_iam_roles.value.id
    }
  }

  dynamic "user_groups" {
    for_each = var.user_groups
    content {
      id = user_groups.value.id
    }
  }

  dynamic "users" {
    for_each = var.users
    content {
      id = users.value.id
    }
  }
}
