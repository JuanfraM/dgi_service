require_relative 'boot'

require 'rails/all'
require File.expand_path('../boot', __FILE__)

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.

Bundler.require(*Rails.groups)

ENV.update YAML.load(File.read('config/application.yml'))[Rails.env] rescue {}

module DGITest
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.secret_key_base = ENV['SECRET_KEY_BASE']

    config.autoload_paths += %W(#{config.root}/lib)
  end
end
