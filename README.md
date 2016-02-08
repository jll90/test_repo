## Zintegrator

A rails engine that makes the life of developers easier when it comes to testing plugins. This gem is presented as a solution to the challenged posed by Zbox [Desafio Zbox](https://gist.github.com/enahum/274a815bd10ffa69c516)

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

4. Configure the plugin.yml file that was just created inside the config directory. 

5. Make sure you set the URL variable inside config/initializers/zintegrator.rb to a valid URL so your plugin can 
send messages to the correct URL.
   ```
   URL = "http://www.example.com/path"
   ```
   
6. Configure the generated controllers inside app/controllers/zintegrator as you see fit. 

### Author
JLL