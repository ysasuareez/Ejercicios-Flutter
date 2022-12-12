import 'package:flutter/material.dart';
import 'package:ejercicio01/utils/Contenedores05.dart';

void main() => runApp(Ejercicio05());

class Ejercicio05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('EJERCICIO 05'),
              ),
            ),
            body: Center(
                child: Transform.rotate(
              angle: 45,
              child: Contenedor05(
                  Colors.pink, 130.0, 130.0, 'rosa', 0.0, 0.0, 0.0, 0.0),
            ))));
  }
}
