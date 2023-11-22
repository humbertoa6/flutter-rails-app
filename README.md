# Prueba de API en Ruby on Rails

Esta prueba tiene como objetivo evaluar tu competencia en la construcción de una API en Ruby on Rails que consuma una API externa, almacene los datos obtenidos en una base de datos local PostgreSQL y permita a los usuarios recuperar la información almacenada.

## Descripción de la tarea

Se te pide crear una aplicación en Rails, específicamente una API, que realice lo siguiente:

1.  **Poblar la tabla 'Articles':** Obtener datos de una [API externa de noticias](https://newsapi.org/) y guardarlos en la tabla 'Articles' de tu base de datos local PostgreSQL.
2.  **Recuperar datos de noticias:** Implementar un endpoint que permita a los usuarios obtener noticias de la tabla 'Articles.

## Requisitos

1.  Utiliza **PostgreSQL** como la base de datos para esta aplicación.
2. Crear una aplicación de Ruby on Rails que sea **unicamente API**.
3. La aplicación debe **obtener automáticamente** datos de noticias de la API externa y almacenarlos en la tabla 'Articles' en la primera ejecución o si la tabla 'Articles' está vacía. Si la tabla 'Articles' ya contiene datos, la aplicacion **no deberia** de hacer el llamado a la API externa.
4. Asegúrate de que la aplicación obtenga y almacene **al menos** 20 artículos de la API.
5.  El endpoint de la API para obtener noticias debe ser `/articles` y debe devolver los datos de noticias almacenados en **formato JSON**.

## Criterios de evaluación

Tu entrega será evaluada en función de los siguientes criterios:

1.  **Funcionalidad:** ¿La aplicación obtiene correctamente los datos de la API y los almacena en la tabla 'Articles'? ¿Los usuarios pueden recuperar datos de noticias a través del endpoint de la API?
2.  **Calidad del código:** ¿El código está bien estructurado, es legible y sigue las convenciones de Rails? ¿La gestión de errores y los registros están implementados correctamente?
3.  **Manejo de la base de datos:** ¿Está configurado correctamente PostgreSQL y los datos obtenidos están almacenados con precisión en la tabla 'Articles'?
4.  **Bonificaciones:** Se considerarán funcionalidades adicionales o mejoras más allá de los requisitos básicos.

# Prueba de Consumo de API en Flutter

Esta prueba tiene como objetivo evaluar tu capacidad para crear una aplicación en Flutter que consuma el endpoint `/articles` proporcionado por la API en Ruby on Rails que creaste en el paso anterior, puedes ver el [diseño acá](https://www.figma.com/file/fXD7y9mIeDcCPiH90u3uGU/Flutter-basic-app?type=design&node-id=0-1&mode=design&t=C6XOkkpkPLFHgFRG-0).

## Descripción de la tarea

Tu tarea es crear una aplicación en Flutter que realice lo siguiente:

1.  **Consumir Endpoint '/articles':** Desarrollar una aplicación en Flutter que se conecte al endpoint `/articles` de la API en Ruby on Rails.
2.  **Recuperar y Mostrar Datos de Noticias:** Implementar una interfaz de usuario que muestre los datos de noticias recuperados de la API de Rails.
3. **Crear las vistas correspondientes:** Crear las vistas solicitadas por partes del entrevistador.

## Requisitos

Asegúrate de cumplir con los siguientes requisitos al desarrollar la aplicación en Flutter, puede encontrar el diseño acá:

1. La aplicación debe ser capaz de realizar solicitudes HTTP al endpoint `/articles` de la API en Ruby on Rails.
2. Utiliza el método adecuado en Flutter para realizar llamadas a la API.
3. Muestra los datos de noticias obtenidos de la API en una interfaz de usuario de manera legible y ordenada.
4. Se debe de crear una vista principal, que es la vista correspondiente a cuando la aplicacion carga por primera vez. Esta vista debera de contener una lista con las 20 noticias (o la cantidad de noticias que el usuario haya escogido en la prueba anterior). Cada item dentro de la lista debe de contener la imagen de la noticia, su titulo y la descripcion.
5. Se debe crear la vista de detalles para cada noticia, esta vista se cargara al darle click a un item de la lista en la vista principal. Esta vista deberia de contener toda la informacion recolectada de la API.

## Criterios de evaluación

Tu entrega será evaluada en base a los siguientes criterios:

1.  **Funcionalidad:** ¿La aplicación de Flutter se conecta con éxito al endpoint `/articles` de la API de Rails y muestra los datos de noticias obtenidos?
2.  **Interfaz de Usuario:** ¿La interfaz de usuario es amigable y presenta los datos de manera clara y legible?
3.  **Manejo de Datos:** ¿La aplicación en Flutter maneja los datos de manera efectiva, sin errores ni inconsistencias?
4.  **Código y Estructura:** ¿El código está organizado, sigue las mejores prácticas de Flutter y es fácil de entender?
5.  **Manejo de Errores:** ¿La aplicación maneja adecuadamente los errores en caso de problemas de conectividad o de datos faltantes?
6.  **Bono:** Se considerarán funcionalidades adicionales o mejoras más allá de los requisitos básicos.

## Entrega

Una vez que hayas completado las tareas, sube tu codigo a un repositorio de GitHub con su docmentacion para su debida evaluacion.

## Nota importante

Asegúrate de manejar de manera segura la información sensible (claves de API, credenciales) y de no exponerlas directamente en tu código o repositorio.