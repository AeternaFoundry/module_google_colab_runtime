output "colab_runtimes_id" {
  description = "Map of id values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no id are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "colab_runtimes_auto_upgrade" {
  description = "Map of auto_upgrade values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no auto_upgrade are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.auto_upgrade if v.auto_upgrade != null }
}
output "colab_runtimes_deletion_policy" {
  description = "Map of deletion_policy values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no deletion_policy are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "colab_runtimes_description" {
  description = "Map of description values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no description are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "colab_runtimes_desired_state" {
  description = "Map of desired_state values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no desired_state are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.desired_state if v.desired_state != null && length(v.desired_state) > 0 }
}
output "colab_runtimes_display_name" {
  description = "Map of display_name values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no display_name are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "colab_runtimes_expiration_time" {
  description = "Map of expiration_time values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no expiration_time are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.expiration_time if v.expiration_time != null && length(v.expiration_time) > 0 }
}
output "colab_runtimes_is_upgradable" {
  description = "Map of is_upgradable values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no is_upgradable are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.is_upgradable if v.is_upgradable != null }
}
output "colab_runtimes_location" {
  description = "Map of location values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no location are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.location if v.location != null && length(v.location) > 0 }
}
output "colab_runtimes_name" {
  description = "Map of name values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no name are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "colab_runtimes_notebook_runtime_template_ref" {
  description = "Map of notebook_runtime_template_ref values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no notebook_runtime_template_ref are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => one(v.notebook_runtime_template_ref) if v.notebook_runtime_template_ref != null && length(v.notebook_runtime_template_ref) > 0 }
}
output "colab_runtimes_notebook_runtime_type" {
  description = "Map of notebook_runtime_type values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no notebook_runtime_type are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.notebook_runtime_type if v.notebook_runtime_type != null && length(v.notebook_runtime_type) > 0 }
}
output "colab_runtimes_project" {
  description = "Map of project values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no project are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.project if v.project != null && length(v.project) > 0 }
}
output "colab_runtimes_runtime_user" {
  description = "Map of runtime_user values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no runtime_user are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.runtime_user if v.runtime_user != null && length(v.runtime_user) > 0 }
}
output "colab_runtimes_state" {
  description = "Map of state values across all colab_runtimes, keyed the same as var.colab_runtimes except keys with no state are omitted"
  value       = { for k, v in google_colab_runtime.colab_runtimes : k => v.state if v.state != null && length(v.state) > 0 }
}

