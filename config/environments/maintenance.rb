Gemcutter::Application.configure do
  config.frameworks -= [:active_record]

  config.middleware.use ::Rack::Static,
    :urls => ["/index.html",
              "/favicon.ico",
              "/images",
              "/stylesheets"],
    :root => "public/maintenance"
  config.middleware.use ::Rack::Maintenance,
    :file => File.join('public', 'maintenance', 'index.html')
end

require Rails.root.join("config", "secret") if Rails.root.join("config", "secret.rb").file?

HOST = "rubygems.org"
