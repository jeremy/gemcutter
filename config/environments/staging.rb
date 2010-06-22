Gemcutter::Application.configure do
  config.cache_classes = true
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true
  config.action_dispatch.x_sendfile_header = "X-Sendfile"
  config.serve_static_assets = false
  config.i18n.fallbacks = true
  config.middleware.insert_after 'ActionController::ParamsParser', 'Redirector'
end

require Rails.root.join("config", "secret") if Rails.root.join("config", "secret.rb").file?

HOST = "staging.rubygems.org"
