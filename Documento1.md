# 1. Definición del equipo, proyecto y aplicación

* Miembros del Equipo y asignación de QA

   1. Lina María Beltran Durango ______  QA1:______Disponiblidad
   2. Alejandro Taborda Diaz ______  QA2:______ Rendimiento
   3. Edison Zapata Henao ______  QA3:______ Seguridad

* Aplicación base de proyecto 1

   Como base, usaremos la aplicación de Edison Zapata, alojada en la máquina 10.131.137.161, 
   pues previamente definimos que seguiríamos trabajando bajo el framework de Rails, y esta 
   aplicación es la que más avanzada está de las dos opciones. La aplicación cuenta con registro 
   de usuarios e inicio de sesión, envío de GPS cada segundo mediante javascript en front-end y 
   visualización de posiciones en un mapa de Google Maps discriminadas por fecha

* Requisitos funcionales

   El sistema debe contar con registro y autenticación de usuarios  
   El sistema debe registrar la posición del GPS del usuario  
   El sistema debe permitir la visualización de las posiciones almacenadas en un mapa

# 2. Detalles técnicos

   Lenguaje de programación: Ruby  
   Framework Web Back-End: Rails  
   Framework Web Front-End: Templates HTML  
   Web App Server: Puma  
   Web Server: Nginx  
   Base de Datos: Postgresql
   
# 3. Aplicación completa desplegada en el Data Center Académico
   
   Dirección Ip: 10.131.137.161

# 4. Marco-referencia-v1

**_QA - 1 Disponibilidad:_** *¿Qué es?*
   
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

* Disponibilidad SLA (Service Level Agreement)
* Transacciones Críticas para los procesos de negocio de la empresa.
* Políticas de backup
* Tiempos de downtime aceptables.



   **_¿Qué patrones se pueden emplear?_**
   
   Hay dos tipos de patrones, aquellos **generales** y aquellos **específicos** al software.
   
   _Los generales son los siguientes:_
   
   * Failover (Si el servidor primario falla, entonces el servidor en espera debería comenzar)
   * Failback (Es el proceso de resincronización de los datos a la ubicación principal)
   * Replication 
   * Redundancy
   * Virtualization
   * Continuous Maintenance
   * Corrective Maintenance
   * Preventive Maintenance
   * Perfective Maintenance
   
   _Los específicos son:_

   * Graceful and step-wise functionality degradation pattern
   * Asynchronous and services-based integration with external interfaces
   * Stateless and lightweight application components
   * Continuous incremental code and data replication
   * Availability trade-off using the CAP theorem.
   

**_QA - 2 Rendimiento:_** *¿Qué es?*


**_QA - 3 Seguridad:_** *¿Qué es?*




