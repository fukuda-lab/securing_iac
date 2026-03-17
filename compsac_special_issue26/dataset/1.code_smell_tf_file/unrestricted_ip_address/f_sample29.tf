resource "google_vpc_access_connector" "connector" {
  name          = "udmi-cf-sql-vpc"
  ip_cidr_range = "10.9.0.0/28"
  network       = "default"
  max_throughput = 300
} 
