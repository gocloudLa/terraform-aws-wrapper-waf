locals {
  logging_filter_default = {
    default_behavior = "DROP"

    filter = [
      {
        behavior    = "KEEP"
        requirement = "MEETS_ANY"
        condition = [
          {
            action_condition = {
              action = "COUNT"
            }
          },
          {
            action_condition = {
              action = "BLOCK"
            }
          }
        ]
      }
    ]
  }
}

