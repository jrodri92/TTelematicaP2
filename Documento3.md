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
    
##4. Marco-referencia-v3: 

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

   _Los **generales** son:_

   * Failover (Si el servidor primario falla, entonces el servidor en espera debería comenzar)
   * Failback (Es el proceso de resincronización de los datos a la ubicación principal)
   * Replication (permite que un servidor principal, conocido como publicador, distribuya datos a uno o varios servidores secundarios o suscriptores)
   * Redundancy (comprenden la capacidad de un sistema de comunicaciones para detectar un fallo en la red de la manera más rápida posible)
   * Virtualization (Versiones virtuales de cualquier recurso de SW/HW)
   * Continuous Maintenance (Actividades de mantenimiento regulares para los componentes de hardware)
   * Corrective Maintenance (Forma de mantener el hardware en operación, principalmente el equipo de mantenimiento identificará la causa raíz de la falla y solucionará los problemas una vez que ocurran)
   * Preventive Maintenance (Consiste en administradores del sistema que monitorean regularmente la utilización de recursos de hardware usando un tablero y actualizan el hardware si es necesario)
   * Perfective Maintenance (Se incluyen en esta categoría: agregar más hardware para mejorar los tiempos de respuesta o optimizar las bases de datos para una ejecución más rápida de las consultas)

      ![Arquitectura redundante](/imagenes/redundancia.jpg)

   _Los **específicos** son:_

   * Graceful and step-wise functionality degradation pattern
   * Asynchronous and services-based integration with external interfaces
   * Stateless and lightweight application components
   * Continuous incremental code and data replication
   * Availability trade-off using the CAP theorem.

### **parámetros y  métricas de disponibilidad claves**
Tiempo medio de recuperación (_MTTR_): es el tiempo promedio para que el sistema se recupere de una
falla.

      MTTR = (Tiempo de inactividad total)/(número total de fallas del sistema)

Tiempo medio entre fallas (_MTBF_): este es el tiempo promedio entre dos fallas del sistemas

      MTBF = (Tiempo de actividad total)/(número total de fallas del sistema)


**_QA - 2 Rendimiento:_** *¿Qué es?*

**Concepto** _Web Performance Optimization (WPO)_

El concepto WPO está relacionado con los métodos y técnicas para optimizar la
velocidad de las páginas web, lo que implica analizar todos los componentes de
una página web para optimizar el tiempo de respuesta de la misma. Es necesario tener
en cuenta los factores que afectan directa o indirectamente el rendimiento de nuestra
web application.

**Factores críticos**

**Ventaja competitiva:** A medida que la expectativa de velocidad aumenta, los sitios Web más lentos van perdiendo competitividad.

**Experiencia del usuario:** el factor de lealtad del usuario es proporcional al rendimiento de nuestra aplicación.

**Impacto financiero:** La tasa de conversión (relación visitante-comprador) se ve afectado si la página no responde
rápidamente; Esto demuestra un impacto directo de la velocidad de la página en los ingresos en línea.

**Estrategia omni-canal (Homologación de dispositivos – navegadores):** Es ideal que una página web se adapte a cualquier
dispositivo y que brinde la misma experiencia y uniformidad a la “original”.


**_¿Qué estrategias se pueden emplear?_**

1. Establecer el Acuerdo de Nivel de Servicio (SLA) de rendimiento y los objetivos
2. Modelación del rendimiento, evaluación de escenarios y análisis de procesos críticos para el negocio y transacciones.
3. Establecimiento de directrices de diseño de rendimiento
4. Aplicación de directrices de diseño de rendimiento
5. Identificar, analizar y eliminar cuellos de botella en varios componentes
6. Establecer una infraestructura continua de monitoreo y alerta
7. Establecer una gobernanza del desempeño consistente en procesos y equipos bien definidos para mantener los SLA de rendimiento.

### **Pasos para modelar y evaluar varios escenarios de rendimiento para**
**procesos y transacciones críticos para el negocio**

**Paso 1:** Identificar y priorizar varios escenarios de negocios

**Paso 2:** modelar la carga de trabajo

**Paso 3:** identificar cualquier patrón relacionado con el rendimiento


### **Establecer pautas de diseño de rendimiento**

**Pensar en Caché:** Tener almacenamiento en cache, es decir, tener la mayor cantidad
posible de componentes y paginas importantes bajo una estrategia de almacenamiento en caché.

**Diseño para el fracaso:** Evaluar todas las posibilidades de fracaso y su probabilidad probable.
Algunos eventos comunes de falla pueden ser fallos de hardware, fallos de seguridad,
desastres naturales, repunte repentino del tráfico de usuarios, fallos de red, fallos de operaciones, etc.

**Computación distribuida y paralela:** Diseñe software para que su computación pueda
distribuirse a través de múltiples nodos de computación. Esto ofrece la doble ventaja
de rendimiento y escalabilidad.

**Mantenerse liviano:** los componentes páginas clave deben mantenerse ligeros reduciendo
su tamaño general y minimizando el número de viajes de ida y vuelta del servidor.

**Cargas no bloqueadas usando la solicitud de datos asincrónicos:** Sean componentes del
lado del cliente o para comunicarse con el servidor o para la agregación de datos, intente
aprovechar el enfoque basado en AJAX. Esto mejora drásticamente el tiempo de carga de la
página percibida y proporciona una carga no bloqueante de la página.

**Usar la política de carga bajo demanda:** Cargue los datos y el componente sólo cuando sea necesario.

**Batching:** Mientras se recuperan datos de sistemas de interfaz como una base de datos
o servicios web, se recomienda hacer batch de las solicitudes con el fin de minimizar el
número de viajes de ida y vuelta del servidor.

Entre otras pautas que podrá conocer en el capitulo de rendimiento del libro:
 > *“Architecting High Performing, Scalableand Available Enterprise Web Applications”*
 > de **Shailesh Kumar, 2015** [Libro](http://proquestcombo.safaribooksonline.com.ezproxy.eafit.edu.co/book/software-engineering-and-development/enterprise/9780128022580/firstchapter)

**_QA - 3 Seguridad:_** *¿Qué es?*

La seguridad es un elemento clave de toda aplicación, es uno de los elementos principales que tienen un profundo impacto en el éxito general de la misma.

Toda **estrategia** de seguridad debe comprender los siguientes aspectos:

**Confidencialidad:** Los datos no se deben divulgar a usuarios no autorizados o sin intención.
Los datos comerciales, la información personal del usuario y los datos de propiedad intelectual se incluirán en esta categoría.

**Integridad:** Los datos no deben ser modificados involuntariamente o por usuarios no autorizados. La integridad de los datos se debe mantener cuando los datos se transmiten y cuando son consultados.

**Disponibilidad:** Los datos y servicios deberían estar funcionando todo el tiempo.

![Proceso de establecimiento de seguridad web empresarial](/imagenes/securityQA.jpg)


### **Etapas de una estrategia de seguridad**

* __Análisis de seguridad:__ Se deben comprender todos los requerimientos de seguridad que aplican. Las políticas y estándares de seguridad son incorporados como requerimientos, y se consideran los riesgos potenciales que enfrentará la aplicación

* __Modelado de amenazas:__ Se analizan todas las amenazas internas y externas y se identifican y modelan las amenzas y riesgos principales. Se categorizan y priorizan los riesgos y amenazas basado en su probabilidad de ocurrencia y el material de impacto.

* __Diseño de seguridad:__ Se identifican los escenarios para los principios clave. Se disponen los principios y políticas de control de seguridad basado en las recomendaciones hechas en la fase anterior. Las políticas se enfocan principalmente en prevención, detección y recuperación de incidentes de seguridad.

* __Implementación de seguridad:__ Medidas exhaustivas de seguridad serán implenetadas en todas las capas. La lista de desarrollo seguro identificada en la primera etapa debe ser seguida estrictamente durante todo el desarrollo de la aplicación.

* __Pruebas de seguridad:__ Hackers éticos internos y externos y expertos en seguridad deben ejecutar test de seguridad y también se usan herramientas para el análisis de código y descubrir vulnerabilidades.

* __Monitoreo de seguridad:__ La seguridad es un asunto continuo, después del despliegue, la aplicación debe ser monitorizada en busca de cualquier tipo de incidente de seguridad.

	__Vulnerabilidad:__ Una falla inherente o debilidad que permite que ocurran los incidentes de seguridad.  
	__Amenaza:__ La fuente o agente responsable del incidente de seguridad.  
	__Riesgo:__ La probabilidad de ocurrencia de ataques de seguridad.

Se debe identificar de forma proactiva las amenazas de vulnerabilidad de sus aplicaciones y realizar **evaluación de riesgos**. La evaluación de riesgos calcula el riesgo global como un factor de probabilidad de riesgo e impacto del riesgo. El equipo de seguridad debe diseñar los principios y pautas de seguridad para una alta prioridad del riesgo.

	Riesgo general = Probabilidad de riesgo X Impacto de riesgo

![Riesgo](/imagenes/OverallRisk.PNG)

### __Principios__

* Defensa exhaustiva.
* Parchar el eslabón más débil.
* El mínimo privilegio.
* Compartimentalización.
* Punto de entrada de acceso individual.
* Gestión de la administración de seguridad.
* Soporte para extensibilidad.
* Validación de datos de usuario.
* Minimización de la superficie de ataque.
* Plan de fallas.

### __Pruebas__

* Validación de robustez de la contraseña.
* Validación de datos entrantes.
* Validación de autenticación.
* Validación de la administración de sesión.
* Chequeos de inyección.
* Vereificación de solicitud de falsificación (CSRF).
* Chequeos de cuentas y administración de usuarios.
* Validaciones de abuso de funcionalidades.
* Chequeos de encripción de datos sensibles.
* Procesos de respaldo y recuperación.
* Chequeos de desbordamiento del buffer.
* Auditar, registrar y manejar ecepciones.
* Manejo de DoS.
* Parches y actualizaciones.
* Refuerzo de políticas de seguridad.
* Validación del servicio.
* Seguridad a nivel de firewall, puertos y protocolos.
* Seguridad a nivel de transporte.
* Configuración de seguridad.

### __Herramientas__

* Análisis de código estático.
* Prueba de penetración de caja negra.

