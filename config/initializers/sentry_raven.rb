# frozen_string_literal: true

Rails.application.config.filter_parameters << :password

Raven.configure do |config|
  config.dsn = Rails.application.credentials.sentry_raven[:dsn]
  config.sanitize_fields =
    Rails.application.config.filter_parameters.map(&:to_s)
end
