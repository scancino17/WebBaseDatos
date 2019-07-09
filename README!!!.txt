IMPORTANTE
Para su uso se necesita net core 2.2
Diagrama ER localizado en wwwroot/images/diagrama.jpg
Dump SQL localizado en root... junto a este readme "DB.sql"


Para la conección a la base de datos debe modificar el archivo
Connection.cs que se encuentra en Controllers
Este archivo contiene un private readonly string connectionString el cual registra la información de postgress
DataBase="proyectodb" debe reemplazarlo por el nombre de la base de datos que usará, se incluye un dump de la db para que la pueda cargar
Uid=postgres, es el usuario para la conexión
Pwd=postgres, es la clave para el usuario



a) se puede apreciar en la Ventana Edificio y Sala permitiendo ver con mayor información, editar, eliminar o agregar


b) se puede apreciar en la Ventana Información de Arriendo donde tiene la opción de filtrar por cualquiera parámetro.


c) en la ventana C, muestra la capacidad total del Edificio y los ordena de mayor a menor.


d) está en la ventana Salas, podemos ver una opción que nos deja dividir por Capacidad o Número Piso , para ésto, sólo muestra los que son mayores al parámetro ingresado.


e) está en la ventana E , sólo muestra los Edificios que tengan salas en todos los pisos.


f) está en la ventana F, aquí nos muestra Los Edificios con sus cantidades de Salas y Cuantos instrumentos tiene esa Sala


Todas las consultas se encuentran en los Controladores de una forma bastante explicita para que se note el SQL puro.
