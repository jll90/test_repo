## Zintegrator

A rails engine that makes the work of developers easier when it comes to testing plugins. This gem is presented as a solution to the challenged posed by Zbox [Desafio Zbox](https://gist.github.com/enahum/274a815bd10ffa69c516)

### Install
1. Add the following line to your gemfile.
   ```
   gem 'zintegrator', :git => "git://github.com/jll90/zintegrator.git"
   ```

2. Run bundle install
   ```
   bundle install
   ```
   
3. Run generators by typing the following in the command line.
   ```
   rails generate zintegrator:install
   ```

4. Edit the plugin.yml file that was just created inside the config directory to set your plugin information.

5. Make sure you set the URL variable inside config/initializers/zintegrator.rb to a valid URL so your plugin can 
send messages to the correct URL.
   ```
   URL = "http://www.example.com/path"
   ```
   
6. Configure the generated controllers inside app/controllers/zintegrator as you see fit. 

### Routes

1. /healthcheck [HEAD]
Verifies the application is functioning correctly.

2. /published [POST]
	```json
	{
    	"client_id": "string",
    	"client_secret": "string"
	}
	```
Uses the above-shown json object to authenticate via Oauth.

3. /installed [POST]
Takes a json object in the following format:

	```json
	{
	    "team_id": "string",
	    "team_name": "string",
	    "webhook": {
	        "incoming": {
	            "token": "string"
	        },
	        "outgoing": [
	            {
	                "key": "string",
	                "token": "string"
	            }
	        ]
	    }
	}
	```

4. /uninstalled [POST]
Takes a json object in the following format:

	```json
	{
	    "team_id": "string"
	}
	```

5. /descriptor [GET]
Shows you how the plugin is to be configured. You can configure it by editing plugin.yml inside the config directory. Don't forget that you must restart your rails server for changes to take effect.


### Send messages

You can call the function send_message as follows from anywhere inside the application:
	```
   Zintegrator::Plugin.send_message(token, message, channel)
	```

Don't forget you must configure a valid URL inside the config/initializers/zintegrator.rb, for this function to work. Message up to 400 characters long. 

###Note 

If you get an invalid parameter on your post requests after running the installation and configuration commands, restart your server.