import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'quote.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

   _fetchRandomQuote() async {
    setState(() {
      isLoading = true;
    });

    final response =  await http.get("https://api.chucknorris.io/jokes/random");

    if (response.statusCode == 200) {
      random = parseQuote(response.body);

      setState(() {
        isLoading = false;
      });

    } else {
      throw Exception('Failed to load quotes');
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
          onPressed: (){
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

Widget showQuote (Quote quote){
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
        Image.network(quote.icon_url),
        SizedBox(height: 50.0),
        Text(quote.value, style: estilo, textAlign: TextAlign.center),
      ],
    ),
  );
}
