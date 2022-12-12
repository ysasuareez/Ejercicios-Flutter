import 'package:flutter/material.dart';

class Ejercicio03 extends StatefulWidget {
  const Ejercicio03({super.key});

  @override
  State<Ejercicio03> createState() => _Ejercicio03State();
}

class _Ejercicio03State extends State<Ejercicio03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('EJERCICIO 03')),
        //Ya que el texto es demasiado largo y desborda la pantalla
        //lo introducimos en un ListView para que sea desplazable
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(children: [
              Image.asset(
                width: 300,
                height: 300,
                'lib/images/flutter-banner.png',
              ),
              Text(
                '3º Crea un contenedor y personaliza su diseño a tu gusto, incluyendo una imagen y un texto debajo de esa imagen',
                style: TextStyle(fontSize: 20),
              )
            ]),
          ),
        ));
  }
}
