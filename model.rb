class Shortenedurl
  include DataMapper::Resource

  property :id, Serial
  property :url, Text
  property :to, Text
  property :id_usu, Text 
  property :numero_visitas, Integer
  
  has n, :visits  

end

class Visit
  include DataMapper::Resource

  property  :id,          Serial
  property  :created_at,  DateTime
  property  :ip,          IPAddress
  property  :country,     String
  property :countryCode, String
  property :city, String
  property :latitud, String
  property :longitud, String
  
  belongs_to  :shortenedurl

end
