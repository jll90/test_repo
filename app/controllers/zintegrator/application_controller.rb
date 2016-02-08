module Zintegrator
  class ApplicationController < ActionController::Base
  	
  	def healthcheck
  		render nothing: true, status: 200
  	end

  end
end
