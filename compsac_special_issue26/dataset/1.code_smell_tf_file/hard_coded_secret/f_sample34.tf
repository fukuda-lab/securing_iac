resource "azuread_application" "widgets_app" {
  display_name = "widgets-app"
  type         = "webapp/api"

  logout_url = "https://widgets.example.net/logout"
  reply_urls = [
    "https://widgets.example.net/",
    "https://widgets.example.net/login",
  ]

  oauth2_allow_implicit_flow = true

  required_resource_access {
    # Microsoft Graph
    resource_app_id = "00000003-0000-0000-c000-000000000000"

    resource_access {
      # User.Read
      id = "e1fe6dd8-ba31-4d61-89e7-88639da4683d"
      type = "Scope"
    }
  }

  required_resource_access {
    resource_app_id = azuread_application.widgets_service.application_id

    dynamic resource_access {
      for_each = azuread_application.widgets_service.api.0.oauth2_permission_scope
      iterator = scope

      content {
        id   = scope.value.id
        type = "Scope"
      }
    }
  }
}
