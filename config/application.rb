require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Tabibito
  class Application < Rails::Application
    config.generators do |g|
      g.stylesheets false
      g.javascrypts false
      g.helper false
      g.test_framework false
      config.time_zone = 'Asia/Tokyo'
    end
  end
end