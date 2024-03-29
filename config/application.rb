require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    config.action_controller.permit_all_parameters = true
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
  end
end
