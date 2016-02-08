Zintegrator::Engine.routes.draw do

	root 'plugin#home'
	get 'descriptor' => 'plugin#descriptor'

	post 'installed' => 'teams#create'
	post 'uninstalled' => 'teams#destroy'

	post 'published' => 'clients#create'
	
	#not available to developer
	get  'healthcheck' => 'application#healthcheck'
	
end