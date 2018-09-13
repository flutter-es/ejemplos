import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'quote.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Quita el banner de Debug que se pone en la parte superior izq
      debugShowCheckedModeBanner: false,
      title: 'Chuck Norris Quote',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Quote'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Quote random;
  var isLoading = false;

  //Método para traer las frases aleatorias.
  _fetchRandomQuote() async {
    setState(() {
      isLoading = true;
    });

    //Espera del resultado
    final response = await http.get("https://api.chucknorris.io/jokes/random");

    if (response.statusCode == 200) {
      random = parseQuote(response.body);

      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Falla al cargar frases');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchRandomQuote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: FlatButton(
          child: Text("Random Quote"),
          onPressed: () {
            _fetchRandomQuote();
          },
        ),
      ),
      body: Center(
        child: isLoading ? CircularProgressIndicator() : showQuote(random),
      ),
    );
  }
}

Widget showQuote(Quote quote) {
  // Creacion de Widget separado para código mas limpio

  // Como crear estilo separado de texto para eliminar DRY
  TextStyle estilo = TextStyle(
    fontSize: 24.0,
    fontStyle: FontStyle.italic,
    color: Colors.black54,
  );

  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Mostrar una imagen que trae desde web
        quote.iconUrl == null
            ? SizedBox( // Esta es unicamente para poner una imagen en caso de que no venga el icono -- ejemplo
                height: 200.0,
                child: Image.network(
                    "https://cdn.pixabay.com/photo/2013/07/13/13/34/man-161135_960_720.png"),
              )
            : Image.network(quote.iconUrl),
        // Realiza una separación de la imagen con el texto.
        SizedBox(height: 50.0),
        Text(quote.value, style: estilo, textAlign: TextAlign.center),
      ],
    ),
  );
}
