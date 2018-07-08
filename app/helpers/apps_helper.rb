# frozen_string_literal: true

module AppsHelper
  def privacy_title(app)
    "We from #{app.name} value your anonymity and do not use your data unless "\
    'you want us to.'
  end

  def terms_title(app)
    "By using #{app.name}#{' (' + app.url + ')' if app.url}, you are agreeing "\
    'to be bound by these terms of service, all applicable laws and '\
    'regulations, and agree that you are responsible for compliance with any '\
    'applicable local laws.'
  end
end
