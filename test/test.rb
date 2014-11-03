ENV['RACK_ENV'] = 'test'

equire 'minitest/autorun'
require 'rack/test'
require 'bundler/setup'
require 'sinatra'
require 'data_mapper'
require_relative '../app'

describe "test del home" do
	
	it "carga la web el servidor" do
		get '/'
		assert last_response.ok?
	end


	it "el titulo de la pagina es TinyClone?" do
		get '/'
		assert last_response.body.include?("<title>TinyClone</title>"), "El titulo debe ser 'TinyClone'"
	end


	it "Pie de pagina contiene: © 2014 Sistemas y Tecnologias Web - ULL " do
		get '/'
		assert_match "<p>© 2014 Sistemas y Tecnologias Web - ULL</p>", last_response.body
	end
end
