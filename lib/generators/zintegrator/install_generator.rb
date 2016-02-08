module Zintegrator
	class InstallGenerator < Rails::Generators::Base
		def install
			run "bundle install"
			route "mount Zintegrator::Engine => '/'"
		end
	end
end