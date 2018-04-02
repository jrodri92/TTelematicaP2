# Repositorio Proyecto 2 (Tópicos especiales en telemática)

    | Atributo       | Estudiante                  | Correo 				     |
    | -------------  |:---------------------------:|:---------------------------:|
    | Disponibilidad | Lina María Beltran          | lbeltra1@eafit.edu.co       |
    | Rendimiento    | Alejandro Taborda Diaz      | atabord4@eafit.edu.co       |
    | seguridad      | Edison Zapata Henao         | ezapata7@eafit.edu.co       |

**Detalles técnicos**

        Lenguaje de programación:  Ruby
        Framework Web Back-End:    Rails
        Framework Web Front-End:   Templates HTML
        Web App Server:  Puma
        Web Server:      Nginx
        Base de Datos:   Postgresql
        Contenedores: Docker Engine
        Orquestador: Kubernetes
        
**¿Cómo funciona ProyectoGPS?**

**Aplicación rails:**
     La aplicación cuenta con registro de usuarios e inicio de sesión con redes sociales,
     envío de coordenadas GPS (latitud, longitud) cada segundo y registro en la bd cuando se 
     identifican cambios en la ubicación, lo anterior mediante javascript en front-end y visualización 
     de recorridos y posiciones en un mapa de Google Maps discriminadas por fecha y usuario.
     
**Despliegue**

     maq1: 10.131.137.176  con:
     
     * Docker.
     * Docker-compose.
     * app corriendo (nginx, rails, postgress).
     
     maq2: 10.131.137.161 con:
     
     * Docker.
     * Docker-compose.
     * app corriendo (nginx, rails, postgress).
     
     maq3: 10.131.137.218 con:
     
     * Docker
     * BD postgres