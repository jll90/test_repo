require "zintegrator/engine"
require "net/http"

module Zintegrator

	class InstallGenerator < Rails::Generators::Base
		source_root File.expand_path("../templates", __FILE__)

		def install
			run "bundle install"
			route "mount Zintegrator::Engine => '/'"
		end

		def copy_initializers
			copy_file "initializer.rb", "config/initializers/zintegrator.rb"
			copy_file "plugin.yml", "config/plugin.yml"
		end

		def copy_controllers

			copy_file "clients_controller.rb", "app/controllers/zintegrator/clients_controller.rb"
			copy_file "plugin_controller.rb", "app/controllers/zintegrator/plugin_controller.rb"
			copy_file "teams_controller.rb", "app/controllers/zintegrator/teams_controller.rb"
		end
	end
end