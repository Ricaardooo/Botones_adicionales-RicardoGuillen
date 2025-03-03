import 'package:flutter/material.dart';

class contador extends StatefulWidget {
  const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {
  @override
  int clickcontador = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contador')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cantidad de Clicks'), //Texto a mostrar
            Text(
              '$clickcontador',
              style: TextStyle(fontSize: 150, fontWeight: FontWeight.w100),
            ), //Texto a mostrar
          ],
        ),
      ),

      // Primer cambio - agregar boton menos clicks junto con boton mas clicks
      //BOTON -1
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (clickcontador > 0) clickcontador--;
              });
            },
            child: const Text('-1', style: TextStyle(fontSize: 20)),
          ),

          //Espacio entre los botones de + y -
          //BOTON +1
          const SizedBox(width: 10),

          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickcontador++;
              });
            },

            child: Icon(Icons.plus_one),
          ),
        ],
      ),
    );
  }
}
