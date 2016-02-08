Zintegrator::Engine.routes.draw do

	get 'descriptor' => 'application#descriptor'

	post 'installed' => 'teams#create'
	post 'uninstalled' => 'teams#destroy'

	post 'published' => 'clients#create'
	get  'healthcheck' => 'application#healthcheck'

	root 'application#home'

end