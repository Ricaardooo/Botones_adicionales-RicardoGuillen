import 'package:flutter/material.dart';
import 'package:new_appp/pantallas/contador.dart';

void main() {
  // -- debug del proyecto
  runApp(MyApp()); //run App, llamado a la clase MyApp
}

class MyApp extends StatelessWidget {
  // creacion de la clase.
  @override
  Widget build(BuildContext context) {
    // Construimos el widget utilizando la libreria Material.dart
    return MaterialApp(
      //---- Llamamos el conjunto de componentes del Material.app
      debugShowCheckedModeBanner: false,

      home: contador(),
    );
  }
}
