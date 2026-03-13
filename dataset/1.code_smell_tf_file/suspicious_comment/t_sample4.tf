# resource "digitalocean_project" "NewsBlur_Docker" {
#   name        = "NewsBlur Docker"
#   environment = "Production"
#   description = "Infrastructure glued together with consul"
# }

# resource "digitalocean_project_resources" "NewsBlur_Docker" {
#   project = digitalocean_project.NewsBlur_Docker.id
#   resources = flatten([
#     digitalocean_droplet.db-consul.*.urn, 
#     digitalocean_droplet.www.*.urn,
#     digitalocean_droplet.app-django.*.urn, 
#     digitalocean_droplet.app-counts.*.urn, 
#     digitalocean_droplet.app-push.*.urn, 
#     digitalocean_droplet.app-refresh.*.urn, 
#     digitalocean_droplet.blog.*.urn, 
#     digitalocean_droplet.staging-web.*.urn, 
#     digitalocean_droplet.discovery.*.urn, 
#     digitalocean_droplet.node-text.*.urn, 
#     digitalocean_droplet.node-socket.*.urn, 
#     digitalocean_droplet.node-favicons.*.urn, 
#     digitalocean_droplet.node-images.*.urn, 
#     digitalocean_droplet.node-page.*.urn, 
#     digitalocean_droplet.db-elasticsearch.*.urn, 
#     digitalocean_droplet.db-redis-user.*.urn, 
#     digitalocean_droplet.db-redis-sessions.*.urn, 
#     digitalocean_droplet.db-redis-story.*.urn, 
#     digitalocean_droplet.db-redis-pubsub.*.urn, 
#     digitalocean_droplet.db-postgres.*.urn, 
#     digitalocean_droplet.db-mongo-primary.*.urn, 
#     digitalocean_droplet.db-mongo-secondary.*.urn, 
#     digitalocean_droplet.db-mongo-analytics.*.urn, 
#     digitalocean_droplet.db-metrics.*.urn, 
#     digitalocean_droplet.db-sentry.*.urn, 
#     digitalocean_droplet.task-celery.*.urn, 
#     digitalocean_droplet.task-work.*.urn
#   ])
# }
