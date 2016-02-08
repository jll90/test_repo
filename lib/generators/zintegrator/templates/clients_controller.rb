require_dependency "zintegrator/application_controller"

module Zintegrator
  class ClientsController < ApplicationController
  	
    def create	
  		client = client_params
      render nothing: true, status: 200
      #continue to Omniauth
  	end

  	private

  		def client_params
  			params.require(:client).permit(:client_id, :client_secret)
  		end

  end
end
