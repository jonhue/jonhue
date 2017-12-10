class ApplicationMailer < ActionMailer::Base

    default from: Settings.mailgun.emails.newsletter
    layout 'mailer'

end
