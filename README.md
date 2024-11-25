# pragma

PRAGMA FLUTTER TEST ##Requerimientos técnicos para construir el proyecto.**

Flutter 3.24.3 Android version mínimo: Android 5.0 - 21 LOLLIPOP - Api # 21 IOS versión mínima 12 ➢ Arquitectura.

Clean Architecture ➢ Dependencias y versiones.

  #Route
  go_router: ^14.2.8
  #DI
  get_it: ^8.0.0
  #Image Svg
  flutter_svg: ^2.0.15
  #State
  provider: ^6.1.2
  #Apis
  dio: ^5.7.0
  http: ^1.2.2
  #Image Cache
  cached_network_image: ^3.4.1
  #link
  easy_url_launcher: ^0.0.7
  #Parseo dtos
  build_runner: ^2.4.10
  json_annotation: ^4.9.0


➢ Clean Architecture

• Es un arquitectura de software diseñada por Robert C. Martin, que consiste en conjunto de capas bien definidas, las cuales están centradas en el dominio (el negocio y sus reglas).

➢ Domain

El dominio es la capa definida por el negocio, es decir, no debe estar atada a ningún concepto técnico y dentro de ella vemos las entidades y los casos de uso.

➢ Presentation

Implementa todo el software relacionado a los elementos visuales con los que el usuario final interactuará.

➢ Data

Esta capa puede contener adaptadores para conectarnos entre capas, apis y helpers,

➢ Recomendaciones

Principio de Responsabilidad Única consiste en que cada clase tendrá una única función o propósito con el propósito de mantener juntas las funcionalidades relacionadas lo que reduce el acoplamiento produciendo un código más flexible, mantenible y testeable.

Un buen código es aquel que se escribe teniendo en cuenta las siguientes consideraciones:

Llevar un control de versiones o Consultar la documentación en caso de dudas. o Se sigue la guía de estilo y nombramiento del lenguaje, framework y plataforma. o Se utilizan patrones de diseño. o Utilizar un Linter para mantener la calidad del código. o No abusar de las reducciones extremas en la sintáxis ya que reducen la legibilidad. o Seguir los principios SOLID o En el caso de Android se deben hacer pruebas en varios dispositivos con diferentes tamaños y densidades de pantalla, además de diversas marcas y versiones de OS. o Seguir buenas prácticas de programación. o En el caso de Android se deben hacer pruebas en varios dispositivos con diferentes tamaños y densidades de pantalla, además de diversas marcas y versiones de OS. o Seguir buenas prácticas de programación. o Documentar y agregar los comentarios para facilitar la lectura y compresión del código.
