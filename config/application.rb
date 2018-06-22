require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Bookers
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    Rails.application.config.assets.unknown_asset_fallback = true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

'57890d80c41aaaeb913a93a5139749997313b39fdb0e8a30e5aaf07b0f0169070c2a4f7f381db0450546fa5e49e6cbb1f0b095edecd444fc152980db24461633'
