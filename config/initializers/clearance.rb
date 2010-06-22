require 'clearance/confirmations_controller'
require 'clearance/passwords_controller'
require 'clearance/sessions_controller'
require 'clearance/users_controller'


Clearance.configure do |config|
  config.mailer_sender = "donotreply@rubygems.org"
end
