# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Weblabsolution::Application.initialize!
ActionMailer::Base.smtp_settings = {
  :user_name => 'app15771907@heroku.com',
  :password => 'umuxzvla',
  :domain => 'weblabsolution.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
