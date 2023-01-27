import 'package:ejercicio01/ejercicios/ejercicio01.dart';
import 'package:ejercicio01/ejercicios/ejercicio02.dart';
import 'package:ejercicio01/ejercicios/ejercicio03.dart';
import 'package:ejercicio01/ejercicios/ejercicio04.dart';
import 'package:ejercicio01/ejercicios/ejercicio05.dart';
import 'package:ejercicio01/ejercicios/ejercicio06.dart';
import 'package:ejercicio01/ejercicios/ejercicio07.dart';
import 'package:ejercicio01/ejercicios/ejercicio08.dart';
import 'package:ejercicio01/ejercicios/ejercicio02.dart';
import 'package:ejercicio01/ejercicios/ejercicio10.dart';
import 'ejercicios/ejercicio09.dart';
import 'ejercicios/ejercicio10.dart';
import 'ejercicios/ejercicio11.dart';
import 'package:flutter/material.dart';

import 'ejercicios/ejercicio12.dart';
import 'ejercicios/ejercicio13.dart';
import 'ejercicios/pruebas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Para ver todos los ejercicios iremos cambiando el home
  // a los constructores correspondientes de cada ejercicio
  // Ejercicio09, Ejercicio10, Ejercicio11...
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ejercicio12(),
    );
  }
}
