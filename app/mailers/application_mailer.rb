# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'me@jonhue.me'
  layout 'mailer'
end
