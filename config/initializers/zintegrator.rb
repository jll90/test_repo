require "zintegrator/engine"

module Zintegrator
  class Plugin

	PLUGIN_CONFIG = YAML.load(File.read(File.dirname(__FILE__) + "/../plugin.yml"))
	
	def self.config
		return PLUGIN_CONFIG
	end
  end
end