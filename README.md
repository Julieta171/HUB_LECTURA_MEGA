# Título
Hub_Libros
# Nombre
K. Julieta Jiménez García
# Descripción
El siguiente trabajo muestra el como se hizo un a biblioteca de libros utilizando Visual Basic 6, con diferentes funciones haciendo una conexión con una base de datos creada en SQL Server.
#  Objetivos
* Crear una base de datos utilizando SQL Server y enlazarla con la interfaz 
* Hacer una interfaz gráfica funcional en Windows utilizando Visual Basic 6.
* Hacer uso de herramientas de VB y que exista funcionamiento en los botones con tareas específicas.
* Guardar los datos de los libros y actividades que se hagan en la interfaz en la base de datos de SQL Server( como libros leídos, libros por leer, libros descartados, géneros favoritos y recomendaciones)
* Crear un perfil de usuario con preferencias.
#Programas utilizados
* Visual Basic 6
* SQL Server
# Instrucciones para descargar y ejecutar

1. Descargar la repo.
2. Selecciona la carpeta que se desea descomprimir.
3. Instalar Visual Basic 6.
4. Teniendo instalado Visual, entrar e irnos a la opción de Archivo, seguida Abrir archivo y seleccionar la carpeta que se descomprimió (Hub_Lectura
5. Para ingresar la conexión a la Base de Datos, entra al Módulo CONEXIONBD Y coloca los ajustes necesarios como servidor,usuario y contraseña.
6. Correla y disfruta de tu Hub de Lectura.

# Descripción del cómo se hizo

1. Al tomar sesiones con el Callenger fueron de ayuda para comrender la funcionalidad de Visual Basic 6 y conexión con BD.
2. Este proyecto fue desarrollado en conjunto con un equipo de compañeros, lo que facilitó un mayor respaldo y el cumplimiento eficiente de los objetivos.
3. Se realizó una base de datos con algunas tablas para poder ocupar en el proyecto (La primera imagen muestra la Diagraga Entidad-Relación) y se agregaron datos.
4. En VB 6 se hizo la conexión y se realizaron pruebas para comprobar que esuviera enlazando los datos.
5. Se comenzó a realizar el Form principal, agregando algunos componentes, botones y hasta un Gif (Se investigó al respecto).
6. Se agregaron más Form para poder hacer uno para cada opción del menú que se realizó en la página principal, de manera que tuviera rutas.
7. Se agregaron botones con funciones como Salir (Detiene el programa), Volver, Leído, Por leer, Descartado, Favoritos, Recomendado.
8. Los datos agregados en Generos Favoritos y Recomendaciones se comprobaron que estuvieran guardandose en la BD con los usuarios correspondientes.
9. Se comprobó que todo funcionara de manera satisfactoria, solo faltaron algunos detalles.
# Diagrama Entidad-Relación
![Captura de pantalla 2024-08-11 191242](https://github.com/user-attachments/assets/39183d05-b22a-4389-a99f-7eed2a42d13e)
# Base de Datos con Libros
![Captura de pantalla 2024-08-11 191515](https://github.com/user-attachments/assets/732b26a6-6d06-4ade-bb7b-9d3bd85da8b9)
# Gif y Página principal con el Usuario
![Captura de pantalla 2024-08-11 210627](https://github.com/user-attachments/assets/35a28907-846d-48d2-a939-79e73f5c761c)
![Captura de pantalla 2024-08-11 203358](https://github.com/user-attachments/assets/afe0a866-e028-4f2f-9734-68c9afb8c841)
# Al dar Click en VER DETALLES te manda a otro Front
![Captura de pantalla 2024-08-11 203425](https://github.com/user-attachments/assets/78ee0915-e376-471c-ab00-721e21849f7f)
# En esta opción lo agregué a LEÍDO
![Captura de pantalla 2024-08-11 203446](https://github.com/user-attachments/assets/fe732588-9448-4ecd-8217-5434cab4cbfe)
# Menú de ociones con los Form a donde arrojaba
![Captura de pantalla 2024-08-11 203538](https://github.com/user-attachments/assets/68eac07a-acc2-4b45-8334-1f5d7109b38e)
Se puede apreciar que al entrar en la opción de LEÍDOS se muestra los usuarios que han leído los libros.
![Captura de pantalla 2024-08-11 203703](https://github.com/user-attachments/assets/ab35115d-3b77-492c-bf57-ed67c9c52960)
# En la opción de Libros Recomendados 
Al tomar los Generos Favoritos entra a la BD y busca los libros que tiene los mismos generos
![Captura de pantalla 2024-08-11 203620](https://github.com/user-attachments/assets/18443cc7-d2e2-4107-a058-b5602584173c)
# Problemas conocidos
1. Escasa información de Visual Basic 6.
2. Problemas con el duplicar componentes o elementos, si afecta al código.
# Restrospectiva
| Aspecto                    | Detalles                                                                                                                                                                                                                                                                                                               |
|--------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ¿Qué salió bien?           | * En esta ocasión el resultado fue satisfactorio. <br> * El trabajo en equipo, constancia y seguimiento fueron la herramienta principal del proyecto. <br> * Me agradó mucho el resultado.|
| ¿Qué puedo hacer diferente? | * Dedicarle más tiempo a comprender Visual Basic. <br> * El como implementar clases. <br> * Reutilización de código para evitar muchos Form |
| ¿Qué no salió bien?        | * Hacer que los datos como Usuarios y Libros en específico fueran dinámicos. <br> * Se quizo xopiar componentes de uno que ya se daba pero nos dimos cuenta que afectaba el como se llamaban las funciones, entonces tuvimos que volver a agregar uno por uno.|




   

