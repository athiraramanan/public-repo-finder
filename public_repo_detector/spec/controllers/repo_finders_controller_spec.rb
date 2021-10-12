require "rails_helper"

RSpec.describe RepoFindersController, :type => :controller do
    
    it "has a 200 status code" do
      expect(response.status).to eq(200)
    end

    it "responds to html by default" do
      get :search, :params => { search: 'JsAaron/jQuery'}
      expect(response.content_type).to eq "text/html"
    end

    it "has a 404 status code" do
      get :search, :params => { search: nil}
      expect(response.status).to eq(404)
    end
end