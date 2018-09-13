# flutter_switching_widgets

<aside class="alert alert-info" markdown="1">
**Nota:** El tutorial original fué desarrollado por 
[Nigel Henshaw](https://www.mobapptuts.com/flutter-image-download-and-display/). Se obtiene permisos para su publicación, 5 septiembre de 2018.
</aside>

En este ejemplo se verá la sincronización de los diferentes widgets que permiten seleccionar y desplegar imágenes bajadas de la red. Se presentan las cuatro formas de seleccionar y visualizar imágenes en pantalla como son el Popup Menu, Drawer, BottomNavigationBar y TabBar en un solo ejemplo y manteniendo el control sobre cuál imágen fué seleccionada.


## Descargar y mostrar imágenes en Flutter 

Este ejemplo muestra cómo descargar una imágen ubicada en un servidor y luego desplegarla en una aplicación Flutter.

De forma predeterminada, cuando se descarga una imagen, se almacenará en caché en la memoria del dispositivo para una recarga más rápida.

#Tópicos cubiertos en este ejemplo
* Crearemos widgets Stateful & Stateless
* Aprenderemos el uso del widget Image
* Opciones para cambiar el tamaño de una imágen
* Descargar imágenes haciendo uso del constructor Image Network

## Crear una menú popup en Flutter 

Este ejemplo muestra cómo agregar un menú emergente para reemplazar los widgets de imágenes. 
El menú emergente debe agregarse a un widget Stateful.
Cuando se recarga una nueva imagen, debe invocarse el método setChange para actualizar la pantalla con el nuevo widget.

#Tópicos cubiertos en este ejemplo
* Crear una colección para las propiedades de la clase Photo
* Crear una lista de clases
* Agregar un menú popup a una widget app bar
* Devolver un elemento desde el menú popup
* Refrescar el widget en la pantalla

## Crear un Drawer de Flutter

Se describe cómo agregar un Drawer a una aplicación de Flutter. El widget Scaffold nos proporciona la propiedad drawer. Se utiliza para generar una lista de piezas

#Tópicos cubiertos en este ejemplo
* Crear un widget drawer 
* Utilizar la propiedad drawer del Scaffold
* Proporcionar interactividad al drawer
* Cerrar el drawer

## Crear una barra de navegación inferior

En este ejemplo se agrega el qidget BottomNavigationBar a la aplicación para intercambier pantallas

#Tópicos cubiertos en este ejemplo
* Agregar el BottomNavigationBar al widget Scaffold 
* Proporcionar un índice para actualizar la posición del BotttomNavigationBar
* Agregar interactividad al BottomNaviagionBar
* Actualizar el BottomNavigationBar desde el drawer y desde el menú popup

## Crear un TabBar

Se describe cómo cambiar entre widgets de imágenes usando el TabBar.

#Tópicos cubiertos en este ejemplo
* Crear un TabController
* Agregar el TabBar al widget de Scaffold
* Reemplazar el body del Scaffold con un TabBarView
* Actualizar el TabBar desde el drawer y el menú popup
* Actualizar el BottomNavigationBar desde el listener de TabController

![Flutter Switching Widgets Demo](https://github.com/flutter-es/ejemplos/blob/master/flutter_switching_widgets/images/moverse_entre_%20widgets.gif)

