// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<Quote> _$quoteSerializer = new _$QuoteSerializer();

class _$QuoteSerializer implements StructuredSerializer<Quote> {
  @override
  final Iterable<Type> types = const [Quote, _$Quote];
  @override
  final String wireName = 'Quote';

  @override
  Iterable serialize(Serializers serializers, Quote object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'icon_url',
      serializers.serialize(object.iconUrl,
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
      {FullType specifiedType = FullType.unspecified}) {
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
          result.iconUrl = serializers.deserialize(value,
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
  final String iconUrl;
  @override
  final String url;
  @override
  final String value;

  factory _$Quote([void updates(QuoteBuilder b)]) =>
      (new QuoteBuilder()..update(updates)).build();

  _$Quote._({this.id, this.iconUrl, this.url, this.value}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Quote', 'id');
    }
    if (iconUrl == null) {
      throw new BuiltValueNullFieldError('Quote', 'iconUrl');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Quote', 'url');
    }
    if (value == null) {
      throw new BuiltValueNullFieldError('Quote', 'value');
    }
  }

  @override
  Quote rebuild(void updates(QuoteBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  QuoteBuilder toBuilder() => new QuoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Quote &&
        id == other.id &&
        iconUrl == other.iconUrl &&
        url == other.url &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), iconUrl.hashCode), url.hashCode),
        value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Quote')
          ..add('id', id)
          ..add('iconUrl', iconUrl)
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

  String _iconUrl;
  String get iconUrl => _$this._iconUrl;
  set iconUrl(String iconUrl) => _$this._iconUrl = iconUrl;

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
      _iconUrl = _$v.iconUrl;
      _url = _$v.url;
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Quote other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Quote;
  }

  @override
  void update(void updates(QuoteBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Quote build() {
    final _$result =
        _$v ?? new _$Quote._(id: id, iconUrl: iconUrl, url: url, value: value);
    replace(_$result);
    return _$result;
  }
}
