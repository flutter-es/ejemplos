# Todoapp-mvp

Esta aplicación le permitirá a los nuevos desarrolladores de flutter, aprender como implementar el patrón de diseño MVP(modelo vista presentador) en sus aplicaciones.

## Que es MVP?

Es una derivación del patrón de diseño [MVC](https://es.wikipedia.org/wiki/Modelo%E2%80%93vista%E2%80%93controlador), liberado por google para permitirle a los desarrolladores de aplicaciones android poder crear aplicaciones escalables y de fácil mantenimiento.

### Vista

Es la encargada de renderizar los gráficos de la aplicación, e.j: diálogos, iconos, etc.

### Presentador

Es el puente que conecta la vista con el modelo. Se va a encargar de obtener los datos del modelo y mostrarlos en la vista.

### Modelo

Es una interfaz que define los datos que van a ser mostrados al usuario

## Requerimientos

* [sqflite](https://github.com/tekartik/sqflite)
