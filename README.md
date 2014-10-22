#Sistemas y Tecnologías Web 

##Práctica: Acortador de URLs

**Autores:** Jose Antonio Rodríguez Leandro y Noelia Rodríguez Martín
			 
**Fecha:** 20 de Octubre de 2014

**Detalles:** Aumentamos el ejemplo Acortador de URLs presentado en esta sección [pinche aqui] (http://nereida.deioc.ull.es/~lpp/perlexamples/node482.html#section:abreviadorurls) para que admita además abreviaciones elegidas por el usuario. Desplegamos en Heroku la práctica y por último si el usuario esta autemticado (Google/GitHub/Twitter, etc.) se le ofrecera una opción para ver la lista de sus links.


###Despliegue en Heroku

[Heroku](http://acortador.herokuapp.com/)

###Instrucciones de la práctica

En primer lugar entramos a la web desplegada en [Heroku](http://acortador.herokuapp.com/), luego en el home, podemos ver una serie de enlaces "Sign in with Google" o "Not Sign in with Google", asi como dos cajas de texto, si elegimos la primera opción, "Sign in with Google" nos identificamos con Google y luego todas las URL que acortemos se guardaran en la base de datos,al usuario identificado previamente, sin embargo si no queremos identificarnos podemos hacer la misma operación clickeando en "Not Sign in with Google" con lo que se mostrará la lista de URL acortadas de todos los usarios no identificados.

El procedimiento para acortar las URL consiste en rellenar el campo "Introduce tu URL" y el sistema automaticamente le asignará un número que representa esa URL, si queremos de forma opcional incluir una URL específica, rellenaremos el segundo campo "short URL" con lo que conseguimos que sea representada la URL larga por esa URL opcional. 

Se mostrará una lista de URL indicando tanto el número asignado como las "short URL" de cada enlace. Esta lista cambiará, como ya se indico dependiendo si el usuario se identifica o no.

###Ejecución del servidor local

Ejecutamos la práctica con la opción `rake`

###Ver

* [DataMapper](http://datamapper.org/getting-started.html)
* [Haml](http://haml.info/)
* [Sinatra](http://www.sinatrarb.com/)
* [Deploying Rack-based Apps in Heroku](https://devcenter.heroku.com/articles/rack)
* [Intridea Omniauth](https://github.com/intridea/omniauth)

