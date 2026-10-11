resource "google_colab_runtime" "colab_runtimes" {
  for_each = var.colab_runtimes

  display_name    = each.value.display_name
  location        = each.value.location
  runtime_user    = each.value.runtime_user
  auto_upgrade    = each.value.auto_upgrade
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  desired_state   = each.value.desired_state
  name            = each.value.name
  project         = each.value.project

  dynamic "notebook_runtime_template_ref" {
    for_each = each.value.notebook_runtime_template_ref != null ? [each.value.notebook_runtime_template_ref] : []
    content {
      notebook_runtime_template = notebook_runtime_template_ref.value.notebook_runtime_template
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

