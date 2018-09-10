// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<Quote> _$quoteSerializer = new _$QuoteSerializer();

class _$QuoteSerializer implements StructuredSerializer<Quote> {
  @override
  final Iterable<Type> types = const [Quote, _$Quote];
  @override
  final String wireName = 'Quote';

  @override
  Iterable serialize(Serializers serializers, Quote object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'icon_url',
      serializers.serialize(object.icon_url,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Quote deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new QuoteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon_url':
          result.icon_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Quote extends Quote {
  @override
  final String id;
  @override
  final String icon_url;
  @override
  final String url;
  @override
  final String value;

  factory _$Quote([void updates(QuoteBuilder b)]) =>
      (new QuoteBuilder()..update(updates)).build();

  _$Quote._({this.id, this.icon_url, this.url, this.value}) : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Quote', 'id');
    if (icon_url == null)
      throw new BuiltValueNullFieldError('Quote', 'icon_url');
    if (url == null) throw new BuiltValueNullFieldError('Quote', 'url');
    if (value == null) throw new BuiltValueNullFieldError('Quote', 'value');
  }

  @override
  Quote rebuild(void updates(QuoteBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  QuoteBuilder toBuilder() => new QuoteBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Quote) return false;
    return id == other.id &&
        icon_url == other.icon_url &&
        url == other.url &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), icon_url.hashCode), url.hashCode),
        value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Quote')
          ..add('id', id)
          ..add('icon_url', icon_url)
          ..add('url', url)
          ..add('value', value))
        .toString();
  }
}

class QuoteBuilder implements Builder<Quote, QuoteBuilder> {
  _$Quote _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _icon_url;
  String get icon_url => _$this._icon_url;
  set icon_url(String icon_url) => _$this._icon_url = icon_url;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  QuoteBuilder();

  QuoteBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _icon_url = _$v.icon_url;
      _url = _$v.url;
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Quote other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Quote;
  }

  @override
  void update(void updates(QuoteBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Quote build() {
    final _$result = _$v ??
        new _$Quote._(id: id, icon_url: icon_url, url: url, value: value);
    replace(_$result);
    return _$result;
  }
}
