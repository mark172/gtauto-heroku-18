# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


# ActionMailer::Base.smtp_settings = {
#     :address => 'smtp.sendgrid.net',
#     :port => '587',
#     :authentication => :plain,
#     :user_name => ENV['SENDGRID_USERNAME'],
#     :password => ENV['SENDGRID_PASSWORD'],
#     :domain => 'heroku.com',
#     :enable_startstls_auto => true
# }

ActionMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN_SMTP_PORT'],
  :address        => ENV['MAILGUN_SMTP_SERVER'],
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain         => 'gtauto-heroku-heroku-18.heroku.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp