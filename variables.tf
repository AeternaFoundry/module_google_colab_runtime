variable "colab_runtimes" {
  description = <<EOT
Map of colab_runtimes, attributes below
Required:
    - display_name
    - location
    - runtime_user
Optional:
    - auto_upgrade
    - deletion_policy
    - description
    - desired_state
    - name
    - project
    - notebook_runtime_template_ref (block):
        - notebook_runtime_template (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name    = string
    location        = string
    runtime_user    = string
    auto_upgrade    = optional(bool)
    deletion_policy = optional(string)
    description     = optional(string)
    desired_state   = optional(string)
    name            = optional(string)
    project         = optional(string)
    notebook_runtime_template_ref = optional(object({
      notebook_runtime_template = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

