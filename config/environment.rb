# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Weblabsolution::Application.initialize!
ActionMailer::Base.smtp_settings = {
  :user_name => 'thakur.dinkar@gmail.com',
  :password => 'qmipillnbsunnskm',
  :domain => 'weblabsolution.com',
  :address => 'smtp.gmail.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
