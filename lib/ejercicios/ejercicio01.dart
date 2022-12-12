import 'package:flutter/material.dart';

class Ejercicio01 extends StatefulWidget {
  const Ejercicio01({super.key});

  @override
  State<Ejercicio01> createState() => _Ejercicio01State();
}

class _Ejercicio01State extends State<Ejercicio01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('EJERCICIO 01')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            icono(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [icono(), icono()],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [icono(), icono(), icono()])
          ],
        ));
  }
}

Widget icono() {
  return Column(
    children: [
      Icon(
        Icons.phone_in_talk,
        size: 50,
      ),
      Text('Llamar por télefono')
    ],
  );
}
