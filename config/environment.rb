# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Weblabsolution::Application.initialize!
ActionMailer::Base.smtp_settings = {
    address:              'smtp.sendgrid.net',
    port:                 587,
    domain:               'weblabsolution.com',
    user_name:            'app15771907@heroku.com',
    password:             'Palampur@1',
    authentication:       'plain',
    enable_starttls_auto: true
}
