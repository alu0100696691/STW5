source 'https://rubygems.org'

#gem 'alphadecimal'
gem 'data_mapper'
gem 'sinatra-contrib'
gem 'haml'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'pry'
gem 'erubis'
gem 'xml-simple'
gem 'chartkick'
gem 'rest-client'

group :production do
	gem "pg"
	gem "dm-postgres-adapter"
end

group :development, :test do
	gem "sqlite3"
	gem "dm-sqlite-adapter"
end

group :test do
	gem "sqlite3"
	gem "dm-sqlite-adapter"
	gem 'rake'
	gem 'rack-test'
end
