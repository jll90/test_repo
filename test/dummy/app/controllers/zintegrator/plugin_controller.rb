require_dependency "zintegrator/application_controller"

module Zintegrator
  class PluginController < ApplicationController

  	def home
  		render :json => "Welcome to Zintegrator".to_json , :status => 200
  	end

  	def descriptor
  		plugin_json = Plugin.config
		render :json => plugin_json, :status => 200
  	end
  end
end
