resource "null_resource" "db_backup" {
  provisioner "remote-exec" {
    inline = [
      "PGPASSWORD=mysecretpostgrespassword pg_dump -U myuser mydb > /backups/backup.sql"
    ]
  }
}
