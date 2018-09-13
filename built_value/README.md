# built_value

Este proyecto de **Flutter** muestra como es el uso del paquete _built value_ 
creado por David Morgan el cual trabaja para el equipo de **Dart** en Google
puedes ver la documentación del paquete [aquí](https://pub.dartlang.org/packages/built_value).

Este deberá ser su resultado:

![Ejemplo uso de built_value](https://github.com/flutter-es/ejemplos/blob/master/built_value/images/built_value.gif)

## Si requieres información para empezar

Para mas ayudar con Flutter, ve nuestra
[documentación](https://flutter-es.io/) en linea, la cual es una traducción 
al español de la _version original_ en inglés.


## Qué contiene este ejemplo

##### Uso de:

1.- _build value_ y _serializers_. <br/>
2.- decodificación de json utilizando las clases creadas por por el paquete _build value_. <br/>
3.- paquete _http_ utilizando metodos _async_ /_await_ para esperar los datos de la petición. <br/>
4.- mostrar el uso de widget `CircularProgressIndicator` para mostrar mientras se carga la información. <br/>
5.- `Image.network`, `SizedBox` y creación de un `TextStyle` para reuso. <br/>


## Qué es lo que hace esta App

Hace uso de una pequeña [API](https://api.chucknorris.io/jokes/random) gratuita 
que nos trae frases de broma de [Chuck Norris](https://en.wikipedia.org/wiki/Chuck_Norris) 
de manera asíncrona carga una de inicio y hacer peticiones al presionar un boton.

##### Puntos importantes a tomar en cuenta

 1.- No olvides agregar el `boilerplate` a tu live templates para hacer una 
 mas fácil creación de la clase base como la utilizada en quote.dar este lo puedes en
 el [Github](https://github.com/google/built_value.dart) de Google y su uso en el 
 [Medium](https://medium.com/dartlang/darts-built-value-for-immutable-object-models-83e2497922d4)
 de David Morgan. 
    
    abstract class $CLASS_NAME$ implements Built<$CLASS_NAME$, $CLASS_NAME$Builder> {
      $CLASS_NAME$._();
      factory $CLASS_NAME$([updates($CLASS_NAME$Builder b)]) = _$$$CLASS_NAME$;
    }
    
 2.- Una vez creada la clase, no olvides poner debajo de los imports el `part`,
 por ejemplo, si tu clase es llamada como este caso `quote.dart`, deberás poner
 en la parte superior `part quote.g.dart` pueder ver el resultado en lib/quote.dart, 
 agregago a esta clases tambien puedes ver que en la parte de abajo se encuentra un 
 metodo `parseQuote(String jsonString)`, hablaremos de esté más adelante.
 
 3.- Recuerda agregar a pubspec.yml y a tu archivo quote.dart todo lo necesario para
 utilizar built_value, como por ejemplo el `import 'package:built_value/built_value.dart';`
 
 4.- Depues de tener todo en su lugar desde consola y raíz de tu app ejecuta el siguiente
 comando `flutter packages pub run build_runner build` el cual se encargara de generar
 el código necesario en el archivo antes mencionado `quote.g.dart` este codigo es generado
 cada vez que se ejecuta el comando anterior por lo cual no se debe de modificar ya que 
 si se le agrega algo y se ejecuta una vez más, se perderan todos tus cambios.
 
 5.- Ahora hablemos acerca de `serializers` es importante como todo hacer un poco de lectura,
 se encuentra en inglés pero este te puede ayudar el ver el código, ya trabajaremos en la traducción
 de los temas importantes en su momento, de igual manera ya se tiene en la página de
 [Flutter en Español](http://flutter-es.io) se encuentra un poco de documentación. 
 Puedes leer el [Medium](https://medium.com/dartlang/darts-built-value-for-serialization-f5db9d0f4159) de Serializer de David Morgan
 
 6.- Agrega el `import 'package:built_value/serializer.dart';` en la página de `quote.dart`
  y crear un nuevo archivo llamado `serializers.dart` en el cual lleva los siguientes imports:
  
    import 'package:built_value/serializer.dart';
    import 'package:built_value/standard_json_plugin.dart';
    import 'quote.dart';
    
    part 'serializers.g.dart'; 
     
 Hablando un poco de los imports, el primero trae lo necesario para serializar, el segundo apoya
 con un plugin para hacer la conversion de la información que se va a pasar a los objetos
 ya que el json no está `"parseado"` con un json decode regular, este se utilizara mas adelante
 debemos de agregar el documento que contiene la clase que serializaremos `quote.dart` y por último
 el nombre que tendra el nuevo archivo generado que de igual manera utiliza la extensión `.g.dart`.  
 
 7.- La parte importante de este documento es primero que nada, no olvidar agregar tu clase
 para que sea generado el serializer, no olvides que si es mas de una solo de agregan una debajo de 
 otra de la siguiente manera y tambien agregar el plugin de `StandarJsonPlugin`, de la manera siguiente:
 
     @SerializersFor(const [
       Quote //agregar (,) y en la siguiente linea la otra clase, tambien no olvides agregar el import al inicio.
     ])
     Serializers serializers = _$serializers;
     
     // Serializer no utiliza un decodificador regular de JSON por lo que es importante hacer uso de
     // standard_json_plugin.dart el cual es importado al inicio del documento.
     Serializers standardSerializers =
     (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();  //esta linea debe estar de esta manera con StandarJsonPlugin

 8.- Una vez terminado esto solo regresa a tu CLI y ejecuta de nuevo `flutter packages pub run build_runner build`
 para que genere el documento `serializers.g.part` recuerda que los archivos `.g.part` son generados
 automaticamente y no deben de ser modificados.
 
 9.- Ahora para poder hacer uso de esto puedes agregar los siguiente para convertir la respuesta
 de la `API` que sera en `String` y usar el objeto, de la siguiente manera:
 
     Quote parseQuote(String jsonString){
       final parsed = json.jsonDecode(jsonString);
       Quote quote = standardSerializers.deserializeWith(Quote.serializer, parsed);
       return quote;
     }
     
 10.- Ya en tu código donde lo quieres usar solo necesitaras hacer lo siguiente:
 
    Quote random;
 
    _fetchRandomQuote() async {
     //Espera del resultado
     final response = await http.get("https://api.chucknorris.io/jokes/random");
 
     if (response.statusCode == 200) {
       random = parseQuote(response.body); // Aqui se manda llamar pasando el body
 
     } else {
       throw Exception('Falla al cargar frases');
     }
    } 

  11.- Recuerda que debes de utilizarlo en un StatefulWidget para ver los cambios
  o hacer uso de algun patron como RxDart, inherit Widget, en fin varios
  que procuraremos tener ejemplos aqui mismo más adelante. 
 


Esto es todo por mi parte, si algo no se comprende o tiene dudas, pueden hacerme
llegar sus comentario por aqui mismo o hacia mi cuenta de [Github](https://github.com/Arkangel12) o a mi cuenta
de [Twitter](https://twitter.com/ArkangelB) recuerden que como comunidad estamos para ayudarnos!

 