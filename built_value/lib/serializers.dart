// Copyright (c) 2015, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'quote.dart';

part 'serializers.g.dart';

/// Ejemplo de como utilizar serializacion con built_value
///
/// Declara el nivel mayor de campos [Serializers] llamados serializers. Anotalo
/// con [SerializersFor] y provee un `const` `List` de tipos que deseas serializar
///
/// el generador de codigo build_value podra proveer la implementación. este
/// contendra los serializadores para todos los tipos preguntados para aumentar
/// explicitamente todos los tipos necesitados transitivamente a través de los campos
///
/// Usualmente solo necesitares hacer uno por proyecto.
@SerializersFor(const [
  Quote
])
Serializers serializers = _$serializers;

Serializers standardSerializers =
(serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();