ENV['RACK_ENV'] = 'test'

equire 'minitest/autorun'
require 'rack/test'
require 'bundler/setup'
require 'sinatra'
require 'data_mapper'
require_relative '../app'

describe "shortened urls" do

	before :all do
		@user = "0000"
		@email = "test@email.es"
		@url = "http://www.google.es"
		@urlshort = "google"
		@country = "SPAIN"
		@countryCode = "SP"
		@city = "santa cruz"
		@latitude = "0000"
		@longitude = "1111"

		@short_url = Shortenedurl.first_or_create(:uid => @user, :email => @email, :url => @url, :urlshort => @urlshort, :n_visits => 0)
		@short_url1 = Shortenedurl.first(:urlshort => @urlshort)
		@short_url.n_visits += 1
		@short_url.save
  		@visit = Visit.new(:ip => @ip, :country => @country, :countryCode => @countryCode, :city => @city, :latitude => @latitude, :longitude => @longitude, :shortenedurl => @short_url1, :created_at => Time.now)
  		@visit.save
	end

	it "el titulo de la pagina es TinyClone?" do
		get '/'
		assert last_response.body.include?("<title>TinyClone</title>"), "El titulo debe ser 'TinyClone'"
	end


	it "Pie de pagina contiene: © 2014 Sistemas y Tecnologias Web - ULL " do
		get '/'
		assert_match "<p>© 2014 Sistemas y Tecnologias Web - ULL</p>", last_response.body
	end
