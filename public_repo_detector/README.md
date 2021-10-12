# Public Repo Finder
	This is a small web app where you can display public repositories from GitHub based on search term provided.

###	Prerequisites
	The setups steps expect following tools installed on the system.

	
*	Ruby '2.6.3p62'
*	Rails  5.2.0

1. Check out the repository
	 https://github.com/athiraramanan/public-repo-finder
	
2. Create database.yml file
	 Copy the sample database.yml file and edit the database configuration as required.
*   	cp config/database.yml.sample config/database.yml
	
3. Create and setup the database
		Run the following commands to create and setup the database.

*			bundle exec rake db:create
*			bundle exec rake db:setup
	
4. To install the dependencies
*	  bundle install
	
5. Start the Rails server
	 You can start the rails server using the command given below.

*   	rails s
	 And now you can visit the site with the URL http://localhost:3000
	
6. To run the rspec test

*		  bundle exec rspec