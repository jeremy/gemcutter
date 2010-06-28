config.cache_classes = true
config.log_level = :info

config.action_controller.consider_all_requests_local = false
config.action_controller.perform_caching             = true
config.action_view.cache_template_loading            = true

require Rails.root.join("config", "secret") if Rails.root.join("config", "secret.rb").file?

HOST = "staging.rubygems.org"
config.action_mailer.default_url_options = { :host => HOST }

config.middleware.insert_after 'ActionController::ParamsParser', 'Redirector'
