class RepoFindersController < ApplicationController
	def search
		# p params[:search].blank?
		if params[:search].blank?
			render 'search', status: 404
		else
			url ='https://api.github.com/search/repositories?q='+params[:search]+'&per_page=100'
			response = RestClient.get(url)
			repositories = JSON.parse(response.body)
			@public_repos = Kaminari.paginate_array(repositories['items']).page(params[:page]).per(25)
		end
	end
end