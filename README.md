Autor: Juan Pablo Guerrero Hernández - 02230132029

Descipcion del programa: 
Aplicación web desarrollada en Java utilizando Servlets, JSP y JSTL, que implementa un catálogo de productos con funcionalidades básicas de búsqueda, filtrado y gestión inicial de un carrito de compras.
El sistema permite visualizar productos, filtrarlos por texto o categoría y agregarlos a un carrito almacenado en sesión.

Instrucciones de ejecución
1. Clonar o descargar el proyecto
git clone <URL_DEL_REPOSITORIO>
cd catalogo-web
2. Abrir en IntelliJ IDEA
File → Open → seleccionar carpeta del proyecto
Esperar a que Maven descargue dependencias
3. Compilar el proyecto
mvn clean package
4. Configurar servidor Tomcat
Ir a: Run → Edit Configurations
Crear nueva configuración:
Tipo: Tomcat Server → Local
En Deployment:
Agregar: Artifact → catalogo-web:war exploded
5. Ejecutar la aplicación

Iniciar el servidor y acceder a:

http://localhost:8080/catalogo-web/

Evidencias: 
/capturas/capture1.png
/capturas/capture2.png
/capturas/capture3.png
