Sidekiq.configure_client do |config|
    config.redis = { url: Settings.redis.url, size: 1 }
end

Sidekiq.configure_server do |config|
    config.redis = { url: Settings.redis.url, size: Settings.sidekiq.concurrency + 2 }
end
