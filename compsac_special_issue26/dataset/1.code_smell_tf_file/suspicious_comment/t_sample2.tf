module "alert" {
  source = "./modules/alerts"

  // blackbox_probers maps HTTPS hosts to the project they should be associated with.
  blackbox_probers = [
    // oss-prow
    "oss.gprow.dev",
    // k8s-prow
    "prow.k8s.io",
    "testgrid.k8s.io",
    "gubernator.k8s.io",
    // istio-testing
    "prow.istio.io",
  ]

  bot_token_hashes = [
    "5514c8081c74362c58993e5de935cb92e38cc9397e57a72883c1878cfcdd4b38", // google-oss-robot
    "89baaef92d6c5da4c2261911d273d4a01ef27d80f2bb7d517185f6f0416be8b5", // istio-testing
    // Ignore k8s-ci-robot until we resolve the token remaining inaccuracies.
    // "6624f39f2213835d6c820aff41666853557f99155d23cc52cd9171bcbed3dccc", // k8s-ci-robot
  ]
  no_webhook_alert_minutes = {
    "oss-prow" = 15
    "k8s-prow" = 10
    "istio-testing" = 30
  }
}
