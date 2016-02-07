module Zintegrator
  class ApplicationController < ActionController::Base
  	
  	def healthcheck
  		render { head :ok }
  	end

  	def home
  		render :json => "Welcome to Zintegrator"
  	end

  	def descriptor
  		plugin_json = Plugin.config
		  render :json => plugin_json, :status => 200
  	end
  end
end
