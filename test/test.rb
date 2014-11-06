ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require 'bundler/setup'
require 'sinatra'
require 'data_mapper'
require_relative '../app.rb'

describe "test del home" do
	before :all do
		@contenido = "Práctica 5: Acortador de URLs Estadísticas"
		@titulo = "<title>TinyClone</title>"
		@pie = "<p>Noelia y José Antonio practica4_STW ull©Copyright 2014</p>"
		@url = "ull@ull.es"
		@to  = "ull"
		@id_usu = "myEmail@ull.com"
		@short_url = Shortenedurl.first_or_create(:url => @url, :to => @to, :id_usu => @id_usu, :num_visit => 0)
		@list = Shortenedurl.first(:to => @to)
	end

	it "El contenido esta en la pagina?" do
	get '/'
		assert last_response.body.include?(@contenido), "el contenido está en la web?"
	end

	it "la direccion web coincide" do
		assert_equal @url, @list.url
	end

	it "la shorturl coincide" do
		assert_equal @to, @list.to
	end

	it "el correo del usuario se guarda" do
		assert_equal @id_usu, @list.id_usu
	end
	
	it "carga la web el servidor" do
		get '/'
		assert last_response.ok?
	end


	it "el titulo de la pagina es TinyClone?" do
		get '/'
		assert last_response.body.include?(@titulo), "El titulo debe ser 'TinyClone'"
	end


	it "Pie de pagina contiene: © 2014 Sistemas y Tecnologias Web - ULL " do
		get '/'
		assert_match @pie, last_response.body
	end
end
