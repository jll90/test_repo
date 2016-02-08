require "zintegrator/engine"
require "net/http"

module Zintegrator

  class Plugin
		PLUGIN_CONFIG = YAML.load(File.read(File.dirname(__FILE__) + "/../plugin.yml"))

		#URL FOR MESSAGE GOES HERE
		URL = "http://your_url/path"

  	def self.config
  		return PLUGIN_CONFIG
  	end

  	def self.url
  		return URL
  	end

  	def self.send_message(token, text, channel)
  		json = {
  			text: text[0..399].html_safe,
    		channel: channel,
		    username: self.config['plugin_name'],
		    icon_url: self.config['icon_url']
  		}.to_json

			uri = URI(self.url)
			req = Net::HTTP::Post.new(uri, initheader = {'Content-Type' =>'application/json'})
			req['Webhook-Token'] = token
			req.body = json
			res = Net::HTTP.start(uri.hostname, uri.port) do |http|
  			http.request(req)
			end
		end

	end

end