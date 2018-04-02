# Documentación general de la aplicación y su proceso

**1. Miembros del equipo**

	| Atributo       | Estudiante                  | Correo                  |
	| -------------  |:---------------------------:|:-----------------------:|
	| Disponibilidad | Lina María Beltran          | lbeltra1@eafit.edu.co   |
	| Rendimiento    | Alejandro Taborda Diaz      | atabord4@eafit.edu.co   |
	| seguridad      | Edison Zapata Henao         | ezapata7@eafit.edu.co   |
	
**2. Diseño de arquitectura de la Aplicación y Sistema**

a. Vista de desarrollo
	
i. Definición de Tecnología de Desarrollo
	   
	Lenguaje de programación:  Ruby
    Framework Web Back-End:    Rails
    Framework Web Front-End:   Templates HTML
    Web App Server:  Puma
    Web Server:      Nginx
    Base de Datos:   Postgresql
    Contenedores: Docker Engine
    Orquestador: Kubernetes
	   
ii. URLs de repositorio (github)
	
[GitHub proyecto2](https://github.com/lmbd92/TTelematicaP2)
	   
b. Vista de despliegue
	
i. Definición de Tecnología – Infraestructura TI: Servidores, Software
	   
Base de datos, Redes, etc.
	      
ii. URL de ejecución privada (http://10.131.137.x)
	   
iii. URL de ejecución pública y segura:

https://proyecto1.dis.eafit.edu.co
	        
**3. Implementación y Pruebas por Atributo de Calidad**


### Disponibilidad

    a. Implementación
    
	   i. Herramientas utilizadas
	 
	   ii. Cambios en la implementación de la aplicación
	 
    b. Esquemas de pruebas para comprobar el Atributo de Calidad.
    
### Rendimiento

    a. Implementación
    
	   i. Jmeter, Blazemeter
	 
	   ii. Se realizó un cambio en la forma en que se enviaban posiciones, anteriormente se enviaba una posición cada segundo, ahora las posiciones se envian cada vez que las coordenadas cambian cierto numero de decimales que corresponden entre 10 a 50 metros de distancia lo cual mejora considerablemente el tiempo de envio de datos, tambien se cambio la forma de dibujar las posiciones en el mapa para asi aligerar la carga de este, se cambiaron marcadores por polylineas que representan la ruta realizada.
	 
    b. Esquemas de pruebas para comprobar el Atributo de Calidad.
    	
	i. Hasta ahora solo se lograron realizar pruebas de logueo a la aplicación, por lo que no se obtubieron los datos necesarios para verificar la mejora de rendimiento al implementar los cambios
    
### Seguridad

    a. Implementación
    
	   i. Herramientas utilizadas
	 
	   ii. Cambios en la implementación de la aplicación
	 
    b. Esquemas de pruebas para comprobar el Atributo de Calidad.
    
**4. Marco-referencia-v3: 

Versión final de las bases conceptuales, patrónes, mejores prácticas, etc de los atributos de calidad seleccionados.**
