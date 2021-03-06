# 1. Definición del equipo, proyecto y aplicación

* Miembros del Equipo y asignación de QA

   1. Lina María Beltran  ______  QA1:______Disponiblidad
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

# 4. Marco de referencia v1

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


### **herramientas para el monitoreo del rendimiento**

**JProfiler:** Muestra el consumo de memoria, al igual que otros componentes de la aplicación.

**FindBugs:** Durante análisis estáticos, analiza escenarios de casos con concurrencia. 



**_QA - 3 Seguridad:_** *¿Qué es?*

Toda **estrategia** de seguridad debe comprender los siguientes aspectos:

**Confidencialidad:** Los datos no se deben divulgar a usuarios no autorizados o sin intención.
Los datos comerciales, la información personal del usuario y los datos de propiedad intelectual se incluirán en
esta categoría.

**Integridad:** Los datos no deben ser modificados involuntariamente por usuarios no autorizados.
La integridad de los datos se debe mantener cuando los datos se transmiten y cuando son consultados.

**Disponibilidad:** Los datos y servicios deberían estar funcionando todo el tiempo.

![Proceso de establecimiento de seguridad web empresarial](/imagenes/securityQA.jpg)


### **Etapas de una estrategia de seguridad**

* Análisis de seguridad.

* Modelado de amenazas.

* Diseño de seguridad.

* Implementación de seguridad.

* Pruebas de seguridad.

* Monitoreo de seguridad.

Una organización tiene que identificar de forma proactiva las amenazas de vulnerabilidad
de sus aplicaciones y realizar **evaluación de riesgos**. La evaluación de riesgos calcula el riesgo global 
como un factor de probabilidad de riesgo e impacto del riesgo. El equipo de seguridad debe diseñar los 
principios y pautas de seguridad para una alta prioridad del riesgo.

:computer:  :computer: :computer: :sunglasses: :sunglasses: :sunglasses:


