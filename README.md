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

[Github](https://github.com/alu0100696691/STW5)

###Instrucciones de la práctica

En primer lugar entramos a la web desplegada en [Heroku](http://estadistica.herokuapp.com/), luego en el home, podemos ver un menu, asi como dos cajas de texto, si elegimos la opción, "Sign in" nos identificamos con Google y luego todas las URL que acortemos se guardaran en la base de datos,al usuario identificado previamente, sin embargo si no queremos identificarnos podemos hacer la misma operación sin indentificarnos, con lo que se mostrará la lista de URL acortadas de todos los usarios no identificados.

El procedimiento para acortar las URL consiste en rellenar el campo "Introduce tu URL" y el sistema automaticamente le asignará un número que representa esa URL, si queremos de forma opcional incluir una URL específica, rellenaremos el segundo campo "short URL" con lo que conseguimos que sea representada la URL larga por esa URL opcional. 

Se mostrará una lista de URL indicando tanto el número asignado como las "short URL" de cada enlace. Esta lista cambiará, como ya se indico dependiendo si el usuario se identifica o no.

En el menu aparece el botón "estadísticas", con el se mostrará una lista con los url, y un enlace con la opción "VER", si elegimos esa opción podremos ver información detallada de ese enlace en una serie de Gráficos.

####Ejecución de los tests

Para ejecutar los test de esta aplicación, una vez descargada nos situamos en el directorio que la contiene y ejecutamos el siguiente comando:
`rake` o `rake tests`



###Ejecución del servidor local

Ejecutamos la práctica con la opción `rake server`



###Integración continua en Travis

[![Build Status](https://travis-ci.org/alu0100696691/STW2.svg?branch=master)](https://travis-ci.org/alu0100696691/STW2)


###Ver

* [La Tabla Principal](http://nereida.deioc.ull.es/~lpp/perlexamples/node487.html#SECTION0316100010000000000000)
* [Obteniendo el país para una IP dada](http://nereida.deioc.ull.es/~lpp/perlexamples/node487.html#SECTION0316100020000000000000)
* [La Tabla visit](http://nereida.deioc.ull.es/~lpp/perlexamples/node487.html#SECTION0316100030000000000000)
* [Averiguar la IP](http://nereida.deioc.ull.es/~lpp/perlexamples/node487.html#SECTION0316100040000000000000)
* [Gráficos con chartkick](http://nereida.deioc.ull.es/~lpp/perlexamples/node487.html#SECTION0316100050000000000000)


