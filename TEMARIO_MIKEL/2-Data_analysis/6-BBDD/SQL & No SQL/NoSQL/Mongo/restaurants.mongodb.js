//Ejercicios
use('taller')

//Mostrar todos los documentos de la colección restaurantes
//db.restaurants.find()

//Mostrar los campos restaurant_id, nombre, distrito y cocina, pero excluya el campo _id para todos los documentos de la colección restaurantes
//db.restaurants.find({},{restaurant_id: 1, nombre: 1, distrito: 1, cocina: 1, _id: 0})

//Mostrar los primeros 5 restaurantes que se encuentran en el distrito Bronx
//db.restaurants.find({},{direccion:'Bronx'}).limit(5)

//Devolver los restaurantes que lograron una puntuación superior a 80 pero inferior a 100
db.restaurants.find({score: {$gt: 80, $lt: 100}})

//Devolver los restaurantes que se ubican en un valor de latitud inferior a -95.754168


//Devolver los restaurantes que no preparan cocina americana y lograron una puntuación superior a 70 y se ubicaron en una longitud inferior a -65.754168. Nota: Realice esta consulta sin usar el operador $and


//Devolver los restaurantes que no preparan cocina americana y lograron un punto de calificación 'A' que no pertenece al distrito de Brooklyn. El documento debe mostrarse según la cocina en orden descendente.
//Devolver los restaurantes que pertenecen al distrito Bronx y preparan platos americanos o chinos
//Devolver ID del restaurante, nombre, distrito y la cocina para aquellos restaurantes que pertenecen al distrito de Staten Island o Queens o Bronx o Brooklyn
//Devolver ID del restaurante, nombre, distrito y la cocina de aquellos restaurantes que lograron una puntuación que no supere los 10
//Devolver ID del restaurante, el nombre y las calificaciones del restaurante para aquellos restaurantes que obtuvieron una calificación de "A" y obtuvieron un puntaje de 11 en una fecha ISO "2014-08-11T00: 00: 00Z" entre muchas fechas de encuesta
//Devolver ID del restaurante, nombre, dirección y ubicación geográfica del restaurante de aquellos donde el segundo elemento de la matriz coord contiene un valor que es más de 42 y hasta 52
//Crea un par de restaurantes que te gusten. Tendrás que buscar en Google Maps los datos de las coordenadas
//Actualiza los restaurantes. Cambia el tipo de cocina 'Ice Cream, Gelato, Yogurt, Ices' por 'sweets'
//Actualiza nombre del restaurante 'Wild Asia' por 'Wild Wild West'
//Borra los restaurantes con latitud menor que -95.754168
//Borra los restaurantes cuyo nombre empiece por 'C'