#Sistemas y Tecnologías Web 

##Práctica: Estadísticas de Visitas al Acortador de URLs

**Autores:** Jose Antonio Rodríguez Leandro y Noelia Rodríguez Martín
			 
**Fecha:** 2 de Noviembre de 2014

**Detalles:**  En esta práctica extendemos la anterior práctica cuatro, con información estadística acerca de las visitas. Se pide que se presenten gráficos estadísticos (barras, etc.) del número de visitas por día, por país, etc.

La información de las visitas se guardará en una tabla Visit.

Cada objeto Visit representará una visita a la URL corta y contendrá información acerca de la visita:

*    la fecha de la visita y
*    la procedencia de la misma.



###Despliegue en Heroku

[Heroku](http://estadistica.herokuapp.com/)

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

