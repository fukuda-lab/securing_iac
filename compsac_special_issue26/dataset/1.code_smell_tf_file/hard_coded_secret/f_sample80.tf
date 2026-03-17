resource "google_sql_database_instance" "main" {
  name             = var.instance_name 
  database_version = var.database_version 
  region           = var.region
  deletion_protection = var.deletion_protection
  
  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = var.tier 
    user_labels = {
      "environment" = var.environment
    }
    backup_configuration {
      location = "us"
      point_in_time_recovery_enabled = true
      enabled = true
      start_time = "00:00"
    }
    maintenance_window {
      day = 7
      hour = 0
      update_track = "stable"
    }
  }
}
