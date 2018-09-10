import 'dart:convert' as json;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'quote.g.dart';

abstract class Quote implements Built<Quote, QuoteBuilder> {
  static Serializer<Quote> get serializer => _$quoteSerializer;

  String get id;
  String get icon_url;
  String get url;
  String get value;

  Quote._();
  factory Quote([updates(QuoteBuilder b)]) = _$Quote;
}

Quote parseQuote(String jsonString){
  final parsed = json.jsonDecode(jsonString);
  Quote quote = standardSerializers.deserializeWith(Quote.serializer, parsed);
  return quote;
}