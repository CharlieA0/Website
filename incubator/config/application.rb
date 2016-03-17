require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Incubator
  class Application < Rails::Application
		config.time_zone = "Helsinki"
#		config.filter_parameters += [:password]
    config.active_record.raise_in_transactional_callbacks = true
  end
end
