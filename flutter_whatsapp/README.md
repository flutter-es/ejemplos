---
layout: page
title: Construyendo un Clone de WhatsApp desde cero
permalink: /flutter_whatsapp/
---
<aside class="alert alert-info" markdown="1">
**Nota:** Ejemplo original creado por Pawan Kumar (https://youtu.be/2Tyrofn6zPg)
</aside>

En este ejemplo veremos cómo simular la aplicación de whatsapp utilizando los widgets que ofrece Flutter. Se hace uso de NetworkImage para traer imágenes por Internet. Para evitar que la pantalla se recargue cada vez que se cambia de Tab, se hereda de la clase AutomaticKeepAliveClientMixin y de la implementación de wantKeepAlive. 

Se hace uso de cuatro páginas, tres modelos y dos clases que permiten orquestar la simulación.

Se tiene 4 Tabs que contiene en su orden, uno para la cámara, y los otros para mostrar los chats, estados y las llamadas. Mediante un TabBarView se instancian las clases que implementan los widgets que permiten obtener el clone de cada una de las funcionalidades descritas anteriormente. 

La clase CustomCircleAvatar permite implementar el uso de Texto de fondo en el Avatar mientras se carga la imagen. 

Nota: La cámara funciona desde un dispositivo físico. 

## Descargar y mostrar imágenes en Flutter 

Este ejemplo muestra cómo descargar una imagen ubicada en un servidor y luego desplegarla en una aplicación Flutter.

De forma predeterminada, cuando se descarga una imagen, se almacenará en caché en la memoria del dispositivo para una recarga más rápida.

## Tópicos cubiertos en este ejemplo
* Crear widgets Stateful & Stateless
* Aprenderemos el uso del widget Image
* Opciones para cambiar el tamaño de una imagen
* Descargar imágenes haciendo uso del constructor Image Network
* Implementaremos CircleAvatar personalizado para mostrar un texto mientras se carga la imagen remota

# Implementación de la Cámara
* Se hace uso del paquete package:camera/camera.dart. 
* Se modifica pubspec.yaml en la etiqueta dependencias, indicando que se usa `camera:`

# Implementación del Chat
* Se hace uso del widget ListView
* Uso de Divider, ListTile, Row, Column y Container 
* Se implementa un modelo (clase ChatModel) para cargar los datos de muestra para el chat.  

# Implementación del Estado
* Se hace uso del widget ListView
* Uso de Divider, ListTile, Row, Column, Container y CustomCircleAvatar
* Se implementa un modelo (clase StatusModel) para cargar los datos de muestra para el estado.  

# Implementación de Llamadas
* Se hace uso del widget ListView
* Uso de Divider, ListTile, Row, Column y Container 
* Se implementa un modelo (clase CallsModel) para cargar los datos de muestra para las llamadas.  
---
## License
---
<aside class="alert alert-info" markdown="1">
Copyright 2018 Pawan Kumar

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
</aside>

![Flutter Clone WhatsApp Demo](https://github.com/flutter-es/ejemplos/blob/master/flutter_whatsapp/images/clone_whatsapp.gif)
