resource "google_monitoring_alert_policy" "predicted-gh-rate-limit-exhaustion" {
  project      = var.project
  display_name = "predicted-gh-rate-limit-exhaustion"
  combiner     = "OR" # required

  conditions {
    display_name = "predicted-gh-rate-limit-exhaustion"

    condition_monitoring_query_language {
      # This query calculates the expected remaining rate limit tokens at the
      # end of the current rate limit reset window based on rate of consumption
      # over the last 10 minutes. The alert fires if we predict that we will
      # come within 250 tokens of the limit (which is 5% of the 5000 limit).
      duration = "0s"
      query    = <<-EOT
      {t_0: # The remaining tokens in the rate limit reset window
          fetch k8s_container::workload.googleapis.com/github_token_usage
          ;
      t_1: # The expected tokens that will be used over the remaining time in the rate limit reset window based on recent usage.
          fetch k8s_container
          | {
              metric 'workload.googleapis.com/github_token_usage'
              | value 5000 - val()
              | align rate(1m) # Align rate over 1m and filter before actual 15m aggregation to drop counter resets in gauge.
              | filter val() > 0
              | align mean_aligner(15m)
              ;
              metric 'workload.googleapis.com/github_token_reset'
              | value val() / (1000000000)
          }
          | outer_join 0
          | mul
      }
      | outer_join 0
      | sub # Result is the expected remaining tokens at the end of the rate limit reset window.
      | every 1m
      | filter metric.token_hash =~ "${join("|", var.bot_token_hashes)}"
      | condition val() < 250
      | window 1m
      EOT
      trigger {
        count = 1
      }
    }
  }

  documentation {
    content   = "One of the GitHub tokens used with `ghproxy` is predicted to exhaust its rate limit before the end of the rate limit reset window."
    mime_type = "text/markdown"
  }

  # gcloud beta monitoring channels list --project=oss-prow
  notification_channels = ["projects/${var.project}/notificationChannels/${var.notification_channel_id}"]
}
