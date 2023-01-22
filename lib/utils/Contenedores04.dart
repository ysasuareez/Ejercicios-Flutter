import 'package:flutter/material.dart';

class Contenedor04 extends StatelessWidget {
  final color;
  final alto;
  final ancho;
  final texto;
  final double left;
  final double top;
  final double right;
  final double bottom;

  Contenedor04(this.color, this.alto, this.ancho, this.texto, this.left,
      this.top, this.right, this.bottom);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: Container(
        color: this.color,
        width: this.ancho,
        height: this.alto,
        child: Center(
          child: Text(this.texto),
        ),
      ),
    );
  }
}
