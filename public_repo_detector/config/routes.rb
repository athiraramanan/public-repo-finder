Rails.application.routes.draw do

	get 'repo_finders/search', to: 'repo_finders#search'
	resources :repo_finders
	root 'repo_finders#search'
end
