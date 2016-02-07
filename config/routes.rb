Zintegrator::Engine.routes.draw do

	get 'descriptor' => 'application#descriptor'

	post 'installed' => 'teams#create'
	post 'uninstalled' => 'teams#destroy'

	post 'published' => 'clients#create'
	get  'healthcheck' => 'plugin#healthcheck'

	root 'plugin#home'

end