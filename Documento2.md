* Atributos de calidad seleccionados

| Atributo       | Estudiante                  |
| -------------  |:---------------------------:|
| Disponibilidad | Lina María Beltran          |
| Rendimiento    | Alejandro Taborda Diaz      |
| seguridad      | Edison Zapata Henao         |

# 1. Análisis: Mediante escenarios y/o propuesta en marco de referencia.

-----------------
**Para identificar los escenarios de calidad se seguirá la siguiente estructura:**


| Escenario | # |
| --- | --- |
| Fuente del estímulo | quien o que genera el estímulo |
| Estímulo | lo que se quiere llevar a cabo |
| Artefacto | parte del sistema que recibe el estímulo |
| Ambiente | condiciones dentro de las cuales se presenta el estímulo |
| Respuesta | actividad que ocurre luego de la llegada del estímulo |
| Medida de Respuesta | criterio para testear el requerimiento |

-------------------------

## QA - Disponibilidad

El sistema deberá facilitar una alta disponibilidad, el portal será accesible el
99% del tiempo, en alguna de esas ocasiones la página no será visible y en otras
el servicio será denegado al usuario por mantenimiento y/o tiempos fuera de servicio,
pidiéndole que trate de acceder más tarde.


| Escenario | 1 |
| --- | --- |
| Fuente del estímulo | Interacción del/los usuario(s) |
| Estímulo | Acceder a la aplicación |
| Artefacto | Servidor web |
| Ambiente | Operación normal |
| Respuesta | Visualización e interacción con la aplicación o denegación del servicio |
| Medida de Respuesta | Denegar el servicio de la aplicación el menor tiempo posible |


| Escenario | 2 |
| --- | --- |
| Fuente del estímulo | Aplicación |
| Estímulo | Inserción/consulta/actualización de datos |
| Artefacto | Servidor de datos (GBD: PostgreSql |
| Ambiente | Operación normal |
| Respuesta | No es posible conectarse con la base de datos |
| Medida de Respuesta | Se visualiza en pantalla u mensaje de fallo a la conexión con la BD (Queda regitro de lo sucedido en el archivo log|


| Escenario | 3 |
| --- | --- |
| Fuente del estímulo | Aplicación |
| Estímulo | La aplicción intenta pintar los marcadores en el mapa usando la API de Google |
| Artefacto | Sistema externo API Google maps |
| Ambiente | Operación normal |
| Respuesta | Se notifica en pantalla al usuario sobre el error de respuesta por parte de la API y se le solicita cargar de nuevo el navegador web |
| Medida de Respuesta | Despues del usuaio recargar el navegador la API de Google maps deberá responder en 1 o 2 segundos |

| Escenario | 4 |
| --- | --- |
| Fuente del estímulo | Servidor web envía solicitud de carga de datos (conexión a la BD) |
| Estímulo | Servidor de datos falla en respuesta de datos de ubicación según petición del servidor web |
| Artefacto | Servidor Web |
| Ambiente | Sobre carga de tráfico |
| Respuesta | El balanceador de cargas aisla el servidor de datos y redirecciona las peticiones |
| Medida de Respuesta | Tiempo de respesta cae en un 20% y se corre protocolo de recupración |

## QA - Rendimiento

| Escenario | 1 |
| --- | --- |
| Fuente del estímulo | Usuario |
| Estímulo | Se registra o conecta |
| Artefacto | Servidor |
| Ambiente | Operación normal |
| Respuesta | Se procesa el registro o logueo |
| Medida de Respuesta | Tiempo de respuesta promedio de 3 segundos |

| Escenario | 2 |
| --- | --- |
| Fuente del estímulo | Aplicación |
| Estímulo | Sobrecarga de tráfico |
| Artefacto | Servidor |
| Ambiente | Crecimiento de visitas |
| Respuesta | Balanceador de carga envia requerimientos a otros servidores |
| Medida de Respuesta | Aumenta la capacidad de carga |


| Escenario | 3 |
| --- | --- |
| Fuente del estímulo | Google Maps API |
| Estímulo | Fallo al mostrar el mapa |
| Artefacto | Aplicación |
| Ambiente | Tiempo de carga superior a 5 segundos |
| Respuesta | Cancelar carga y solicitar recarga de pagina al usuario |
| Medida de Respuesta | Tiempo de respuesta del API de Google Maps |


| Escenario | 4 |
| --- | --- |
| Fuente del estímulo | Aplicación |
| Estímulo | Sobrecarga de datos |
| Artefacto | Servidor |
| Ambiente | Multiples usuarios enviando ubicación a tiempo real |
| Respuesta | Implementar sistemas de colas para envio y recepción de datos |
| Medida de Respuesta | Mejora el tiempo de respuesta al momento de que el usuario envía sus posiciones |

## QA - Seguridad

| Escenario | 1 									     |
| --------- | ------------------------------------------------------------------------------ |
| Fuente    | Usuario 									     |
| Estímulo  | Se registra  								     |
| Artefacto | Aplicación 								     |
| Ambiente  | Operación normal                                                               |
| Respuesta | Se verifica la robustez de contraseña, cifra y se envían los datos al servidor |
| Medida    | Se crean los registros con los datos de usuario en la base de datos            |

| Escenario | 2											  |
| --------- | ----------------------------------------------------------------------------------- |
| Fuente    | Usuario										  |
| Estímulo  | Envía datos para ingresar a la aplicación						  |
| Artefacto | Servidor										  |
| Ambiente  | Operación normal									  |
| Respuesta | El servidor obtiene los datos del usuario y busca coinsidencias en la base de datos |
| Medida    | El 95% de usuarios con datos correctos ingresa al sistema al primer intento	  |

| Escenario | 3									      |
| --------- | ----------------------------------------------------------------------- |
| Fuente    | Usuario								      |
| Estímulo  | Envía datos erróneos para ingresar a la aplicación		      |
| Artefacto | Servidor								      |
| Ambiente  | Operación normal							      |
| Respuesta | El servidor obtiene los datos y busca coinsidencias en la base de datos |
| Medida    | El 100% de los usuarios con datos erróneos no ingresan al sistema	      |

| Escenario | 4										        |
| --------- | --------------------------------------------------------------------------------- |
| Fuente    | Usuario									        |
| Estímulo  | Envío de datos								        |
| Artefacto | Aplicación								        |
| Ambiente  | Operación normal								        |
| Respuesta | La aplicación utiliza una conexión segura HTTPS para enviar los datos al servidor |
| Medida    | Los datos se envían de manera segura					        |

| Escenario | 5													       |
| --------- | -------------------------------------------------------------------------------------------------------- |
| Fuente    | Aplicación											       |
| Estímulo  | Usuario inactivo											       |
| Artefacto | Servidor												       |
| Ambiente  | Operación normal											       |
| Respuesta | El servidor elimina la sesión del usuario								       |
| Medida    | Los uaurios que estén inactivos durante 10 minutos perderán su sesión actual y deberán ingresar de nuevo |

| Escenario | 6										       |
| --------- | -------------------------------------------------------------------------------- |
| Fuente    | Persona no autorizada							       |
| Estímulo  | Ingreso a la base de datos						       |
| Artefacto | Base de datos								       |
| Ambiente  | Operación normal								       |
| Respuesta | La conexión a base de datos requiere usuario y contraseña			       |
| Medida    | Todos los intentos de conexión a base de datos con datos erróneos son rechazados |


# 2. Diseño: En Aplicación y en Sistema.

## Vistas de arquitectura.
## Patrones de arquitectura.
## Best Practices.
* Uso de cache para guardar la mayor cantidad de componentes posibles y evitar la frecuente descarga de los mismos.
* Uso de CDN's para aliviar el peso de los archivos y mejorar la velocidad de carga de la aplicación web.
* Comprimir codigos de javascript y css.
* Importar scripts al final del body y no en el head del HTML con el fin de que la renderización de la pagina no dependa de la carga de los scripts y se garantice un buen funcionamiento de estos.

### Seguridad.

#### En Aplicación.

* Validación de robustez de contraseña.
* Validación de entradas.
* Validación de autenticación.
* Validación de administración de sesión.
* Chequeos de inyección.
* Validación de CSRF.
* Chequeos de cuentas y administración de usuarios.
* Validación de abuso de funcionalildades.
* Chequeos de encriptación.

#### En sistema.

* Encripción de datos sensibles.
* Procesos de respaldo y restauración.
* Chequeos de sobrecarga de buffer.
* Auditar, registrar y manejar excepciones.
* Manejo de negación de servicios.
* Parcheado y actualizaciones.
* Refuerzo de políticas de seguridad.
* Validación del servicio.
* Seguridad a nivel de firewall, puerto y protocolo.
* Seguridad a nivel de transporte.
* Configuración de seguridad.

## Tácticas.

### Disponibilidad

### Rendimiento

#### Controlar la demanda de recursos
Esto se puede hacer reduciendo la cantidad de eventos procesados aplicando una tasa de muestreo, o limitando la velocidad a la que el sistema responde a eventos, para esto se pueden seguir ciertos criterios:
* Administrar la frecuencia de muestreo.
* Limitar eventos de respuesta.
* Priorizar los eventos.
* Limitar tiempos de ejecución
* Aumentar la eficiencia de los recursos

### Administrar los recursos.
De no ser posible controlar la demanda de recursos, aún se puede administrar los recursos tales como la memoria, los procesadores, entre otros. Para ello se pueden usar las siguientes tácticas: 
* **Incrementar los recursos:** Agregar procesadores más rapidos, más memoria y almacenamiento.
* Tener multiples servidores y un balanceador de carga.

### Otras tácticas que se usarán
* **First-in, First-out (FIFO):** Estructuras de colas que priorizan los primeros datos que entrán, serán los primeros en ser procesados por el servidor, dejando los demás en espera, pero sin afectar al cliente y su interactividad con la aplicación.
* **Data-push y no Data-pull (carga bajo demanda):** Hacer envio de los datos a medida de que el usuario los vaya solicitando.
* **Pensar en Caché:** Tener almacenamiento en cache, es decir, tener la mayor cantidad posible de componentes y paginas importantes bajo una estrategia de almacenamiento en caché.
* **Diseño para el fracaso:** Evaluar todas las posibilidades de fracaso y su probabilidad probable. Algunos eventos comunes de falla pueden ser fallos de hardware, fallos de seguridad, desastres naturales, repunte repentino del tráfico de usuarios, fallos de red, fallos de operaciones, etc. Está muy lidago al control de demanda de recursos.
* **Computación distribuida y paralela:** Diseñe software para que su computación pueda distribuirse a través de múltiples nodos de computación. Esto ofrece la doble ventaja de rendimiento y escalabilidad.
* **Mantenerse liviano:** los componentes páginas clave deben mantenerse ligeros reduciendo su tamaño general y minimizando el número de viajes de ida y vuelta del servidor.

### Seguridad

* __Defensa en profundiad:__ Políticas de seguridad en todas las capas, componentes, sistemas y servicios usando técnicas, políticas y operaciones de seguridad adecuadas.
* __Parchear el eslabón más débil:__ Identificar y arreglar el punto más vulnerable en la cadena de extremo a extremo de los componentes del negocio.
* __Principio del privilegio mínimo:__ Por defecto, un usuario o rol de seguridad debe tener el mínimo privilegio para un recurso o función. Los privilegios no se elevarán automáticamente por maneras directas o indirectas y se debe mantener una política de negación por defecto. La información sólo se debe distribuír con la base de "lo que necesita saber".
* __Compartimentalización:__ Todos los recursos y funciones de software y hardware deben ser categorizados en varias clasificaciones de seguridad, y el acceso debe ser restringido a los usuarios con roles y privilegios apropiados.
* __Punto de entrada de acceso individual:__ La aplicación debe permitir accedes solo a los usuarios por un punto individual de autenticación.
* __Gestión de la administración de seguridad:__ El sistema debe proveer una visión holística de funcionalidad de administración para manejar funcionalidades de seguridad importantes.
* __Soporte para extensibilidad:__ El marco de seguridad debe soportar un plug-in de modelo de bases estandar donde es posible escribir extensiones insertables personalizadas para mejorar características de seguridad.
* __Validación de datos de usuario:__ Los datos ingresados por el usuario deben ser validados y limpiados a fondo en varios niveles. Los datos también deben ser codificados adecuadamente cuando se almacenan y se transfieren a varias capas.
* __Minimización de la superficie de ataque:__ Minimizar los puntos de entrada para usuarios públicos y retener únimamente la mínima cantidad de datos, servicios y funcionalidades expuesta a usuarios no autorizados.
* __Plan para fallas:__ Diseñar planes de contingencia para todos los escenarios posibles de falla de seguridad. Es posible minimizar el impacto de insidentes de seguridad usando rutinas robustas para manejo de errores, respaldo de los datos, ambiente de recuperación de desastres y defensa en profundidad.

## Herramientas.
* **Jmeter:** Usado para enviar multiples requerimientos al servidor y así medir su rendimiento ("estresar sistemas"). 
* **JProfiler:** Muestra el consumo de memoria, al igual que otros componentes de la aplicación.
* **FindBugs:** Durante análisis estáticos, analiza escenarios de casos con concurrencia.

# 3. Marco de referencia v2

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