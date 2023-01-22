import 'package:flutter/material.dart';
import 'package:ejercicio01/utils/Contenedores04.dart';

void main() => runApp(Ejercicio04());

class Ejercicio04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('EJERCICIO 04'),
              ),
            ),
            body: Column(children: <Widget>[
              Contenedor04(
                  Colors.cyan, 130.0, 130.0, 'azul', 00.0, 00.0, 0.0, 0.0),
              Contenedor04(
                  Colors.pink, 130.0, 130.0, 'rosa', 100.0, 60.0, 0.0, 0.0),
              Contenedor04(
                  Colors.green, 130.0, 130.0, 'verde', 200.0, 60.0, 0.0, 0.0),
            ])));
  }
}
