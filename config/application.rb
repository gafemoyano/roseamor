require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Roseamor
  class Application < Rails::Application
    config.load_defaults 5.0

    config.action_mailer.default_url_options = { host: '159.203.161.124', port: 80 }

    config.action_mailer.delivery_method = :smtp

    config.action_mailer.smtp_settings = {
        :enable_starttls_auto => true,
        :address => "smtp.gmail.com",
        :port => 587,
        :domain => "gmail.com",
        :authentication => :login,
        :user_name => ENV['gmail_username'],
        :password  => ENV['gmail_password']
    }
  end
end
