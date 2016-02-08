require_dependency "zintegrator/application_controller"

module Zintegrator
  class TeamsController < ApplicationController

  	def create
  		team_json = team_params.to_json
  		message = "You have successfully installed "
  		message += Plugin.config['plugin_name']
  		render json: {message: message, request_json: team_json
  			}, status: 202
  	end

  	def destroy
  		team_json = team_params.to_json
  		message = "You have successfully uninstalled "
  		message += Plugin.config['plugin_name']
  		render json: {message: message, request_json: team_json
  			}, status: 202
  	end

  	private

  		def team_params
			params.require(:team).permit(
				:team_id, 
				:team_name, 
				webhook: [
					incoming: [
						:token
					],
					outgoing: [
						:key,
						:token
					]
				])
  		end
  end
end
