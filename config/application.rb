require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TodoServer
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # 不要なview/test関連ファイルのgenrarateを防ぐ
    config.generators do |g|
      g.assets false
      g.helper false
      g.template_engine false

      g.test_framework :rspec,
        fixtures: false,
        view_specs: false,
	      helper_specs: false,
       	routing_specs: false,
	      controller_specs: false,
	      request_specs: true,
	      model_specs: true
    end
  end
end
