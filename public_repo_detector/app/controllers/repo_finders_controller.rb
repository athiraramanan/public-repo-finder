class RepoFindersController < ApplicationController
	require 'rest-client'
	def search
		if params[:search].blank?
			render 'search'
		else
			url ='https://api.github.com/search/repositories?q='+params[:search]
			response = RestClient.get(url)
			repositories = JSON.parse(response.body)
			@public_repos = Kaminari.paginate_array(repositories['items']).page(params[:page]).per(15)
		end
	end
end