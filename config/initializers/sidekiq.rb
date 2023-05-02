Sidekiq.configure_server do |config|
  config.redis = { url: "redis://127.0.0.1:6379/12", network_timeout: 5 }

  # edits the default capsule
  config.queues = %w[critical default low]
  config.concurrency = 5

  # define a new capsule which processes jobs from the `unsafe` queue one at a time
  config.capsule("unsafe") do |cap|
    cap.concurrency = 1
    cap.queues = %w[unsafe]
  end
end
