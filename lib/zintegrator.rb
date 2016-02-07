require "zintegrator/engine"
require "net/http"

module Zintegrator
  class Plugin

  	#configure your URL here
  	URL = "http://localhost:3000/installed"

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

  	def self.url
  	    return URL
  	end

  end
end