import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(Ejercicio13());

class Ejercicio13 extends StatelessWidget {
  const Ejercicio13({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyEjercicio13(),
    );
  }
}

class MyEjercicio13 extends StatefulWidget {
  const MyEjercicio13({super.key});

  @override
  State<MyEjercicio13> createState() => _MyEjercicio13State();
}

class _MyEjercicio13State extends State<MyEjercicio13> {
  int number = Random().nextInt(100);
  int? usernumber;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('EJERCICIO 13'),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Averigua el número:',
                style: const TextStyle(fontSize: 18),
              ),
              Container(
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Number',
                      ),
                      onChanged: (value) => setState(() {
                        usernumber = int.parse(value);
                      }),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.check),
                iconSize: 50,
                color: Colors.blue,
                onPressed: () {
                  validar();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

/*
Este método valida el número. Si el campo se deja vacío se tomara como valor '0'.
Si el numero es mayor o menor se indicara mendiante un AlertDialog del cual se 
saldrá pulsando fuera de él.
Si se acierta el número el juego volverá a comenzar cambiando el valor del número
a adivinar.
*/
  void validar() {
    setState(() {
      if (usernumber == number) {
        showAlertDialog(context, 'ENHURABUENA! Ganó el juego');
        print('ENHURABUENA! Ganó el juego');
        number = Random().nextInt(100);
      } else {
        if (usernumber! < number) {
          showAlertDialog(context, 'El número es mayor');
          print('El número es mayor');
        } else {
          showAlertDialog(context, 'El número es menor');
          print('El número es menor');
        }
      }
    });
  }

  showAlertDialog(BuildContext context, String text) {
    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      content: Text(text),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
