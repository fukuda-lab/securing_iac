resource "github_repository_collaborator" "owners" {
  for_each = {
    for v in local.owners : "${v.repo}/${v.owner}" => v
  }
  repository = each.value.repo
  username   = each.value.owner
  permission = "admin"
}

resource "github_team_repository" "groups" {
  for_each = {
    for v in local.groups : "${v.repo}/${v.group}" => v
  }
  repository = each.value.repo
  team_id    = each.value.group
  permission = "admin"
}
