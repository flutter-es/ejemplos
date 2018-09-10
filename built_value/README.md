# built_value

Este proyecto de **Flutter** muestra como es el uso del paquete _built value_ 
creador por David Morgan el cual trabaja para el equipo de **Dart** en Google
puedes ver la documentación del paquete [aquí](https://pub.dartlang.org/packages/built_value).

## Si requieres información para empezar

Para mas ayudar con Flutter, ve nuestra
[documentación](https://flutter-es.io/) en linea, la cual es una traducción 
al español de la _version original_ en inglés.


## Qué contiene este ejemplo

Uso de:

1.- _build value_ y _serializers_. <br/>
2.- decodificación de json utilizando las clases creadas por por el paquete _build value_. <br/>
3.- paquete _http_ utilizando metodos _async_ /_await_ para esperar los datos de la petición. <br/>
4.- mostrar el uso de widget `CircularProgressIndicator` para mostrar mientras se carga la información. <br/>
5.- `Image.network`, `SizedBox` y creación de un `TextStyle` para reuso. <br/>


## Qué es lo que hace esta App

Hace uso de una pequeña [API](https://api.chucknorris.io/jokes/random) gratuita 
que nos trae frases de broma de [Chuck Norris](https://en.wikipedia.org/wiki/Chuck_Norris) 
de manera asíncrona carga una de inicio y hacer peticiones al presionar un boton.