import 'dart:convert' as json;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'quote.g.dart';


// Esta es la forma de crear el boilerplate para ejecuta el comando que genera el código
// que termina con .g.dart
abstract class Quote implements Built<Quote, QuoteBuilder> {
  static Serializer<Quote> get serializer => _$quoteSerializer;

  //Estos campos son los que utilizan crean para pasar de el json que regresa el API a un objeto Quote
  String get id;
  @BuiltValueField(wireName: 'icon_url')
  String get iconUrl;
  String get url;
  String get value;

  Quote._();
  factory Quote([updates(QuoteBuilder b)]) = _$Quote;
}

// En este metodo se toma la cadena que regresa la API y se regresa un objeto tipo Quote.
Quote parseQuote(String jsonString){
  final parsed = json.jsonDecode(jsonString);
  Quote quote = standardSerializers.deserializeWith(Quote.serializer, parsed);
  return quote;
}