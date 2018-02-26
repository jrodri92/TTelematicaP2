# 1. Definici�n del equipo, proyecto y aplicaci�n
* Miembros del Equipo y asignaci�n de QA

   1. Lina Mar�a Beltran Durango ______  QA1:______Disponiblidad
   2. Alejandro Taborda Diaz ______  QA2:______ Rendimiento
   3. Edison Zapata Henao ______  QA3:______ Seguridad

* Aplicaci�n base de proyecto 1

   Como base, usaremos la aplicaci�n de Edison, alojada en la m�quina 10.131.137.161, pues previamente definimos que seguir�amos trabajando bajo el framework de Rails, y esta aplicaci�n es la que m�s avanzada est� de las dos opciones. La aplicaci�n cuenta con registro de usuarios e inicio de sesi�n, envi� de GPS cada segundo mediante javascript en front-end y visualizaci�n de posiciones en un mapa de Google Maps discriminadas por fecha

* Requisitos funcionales

   El sistema debe contar con registro y autenticaci�n de usuarios  
   El sistema debe registrar la posici�n del GPS del usuario  
   El sistema debe permitir la visualizaci�n de las posiciones almacenadas en un mapa

# 2. Detalles t�cnicos

   Lenguaje de programaci�n: Ruby  
   Framework Web Back-End: Rails  
   Framework Web Front-End: Templates HTML  
   Web App Server: Puma  
   Web Server: Nginx  
   Base de Datos: Postgresql
   
# 3. Aplicación completa desplegada en el Data Center Académico
   
   Dirección Ip: 10.131.137.161

# 4. Marco-referencia-v1

   *_QA - 1 Disponibilidad:_*
   
   *¿Qué es?*
   
   La disponibilidad de las aplicaciones es uno de los factores más importantes 
   que ha de ser tenido en cuenta al momento de diseñar, implementar y desplegar 
   aplicaciones. La disponibilidad se centra en la capacidad de un sistema de estar 
   disponible para satisfacer las necesidades del usuario final.
   
   La disponibilidad es uno de los atributos de calidad más importantes, puesto que 
   el reto mayor que enfrenta un arquitecto de soluciones está en garantizar la 
   disponibilidad de una app y es uno de los puntos centrales sobre 
   los que depende la satisfacción de un usuario / cliente. Normalmente se hacen acuerdos 
   de SLA (Service Level Agreement), que dictamina los requerimientos 
   y expectativas de un cliente frente a la disponibilidad del producto. Para poder 
   cumplir estos objetivos, y garantizar el acceso al sistema, se tienden a identificar 
   diversas métricas, las cuales serán cruciales al evaluar el desempeño del sistema a 
   construir, a estas se les llama KPI (Key Performance Indicator). Entre estas están:
   
   •	SLA (Service Level Agreement)
   •	Transacciones Críticas para los procesos de negocio de la empresa.
   •	Políticas de backup
   •	Tiempos de downtime aceptables.



