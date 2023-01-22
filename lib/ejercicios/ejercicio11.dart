import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() {
  runApp(const Ejercicio11());
}

class Ejercicio11 extends StatefulWidget {
  const Ejercicio11({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Ejercicio11 createState() => _Ejercicio11();
}

class _Ejercicio11 extends State<Ejercicio11> {
  int points = 0;
  late String randomName;
  late Color randomColor;
  var colorNames = [
    'azul',
    'verde',
    'naranja',
    'rosa',
    'lila',
    'amarillo',
    'cian',
    'gris'
  ];
  var colorHex = [
    Color.fromARGB(255, 128, 128, 244),
    Color.fromARGB(255, 132, 229, 132),
    const Color(0xFFFF914D),
    const Color(0xFFFF66C4),
    Color.fromARGB(255, 224, 139, 252),
    Color.fromARGB(255, 250, 218, 111),
    Color.fromARGB(255, 166, 241, 232),
    Color.fromARGB(255, 174, 174, 174)
  ];

  @override
  void initState() {
    super.initState();
    getRandomColor();
    getRandomName();
    timer();
  }

  void timer() {
    Timer.periodic(const Duration(milliseconds: 500), (timer) {
      getRandomColor();
      getRandomName();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('EJERCICIO 11'),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 150, right: 15.0, left: 15, bottom: 50),
              child: Text(
                'Try to match the colors with theirs names',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  onGiftTap(randomName, randomColor);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 200,
                      color: randomColor,
                      height: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        randomName,
                        style: TextStyle(
                            color: randomColor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, right: 15.0, left: 15, bottom: 50),
              child: Text(
                'Puntos: $points',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(5);
    randomColor = colorHex[randomNumber];
  }

  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(5);
    randomName = colorNames[randomNumber];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color.fromARGB(255, 224, 139, 252)) {
      return 'lila';
    } else if (hexColor == const Color.fromARGB(255, 128, 128, 244)) {
      return 'azul';
    } else if (hexColor == const Color.fromARGB(255, 132, 229, 132)) {
      return 'verde';
    } else if (hexColor == const Color(0xFFFF914D)) {
      return 'naranja';
    } else if (hexColor == const Color(0xFFFF66C4)) {
      return 'rosa';
    } else if (hexColor == const Color.fromARGB(255, 250, 218, 111)) {
      return 'amarillo';
    } else if (hexColor == const Color.fromARGB(255, 166, 241, 232)) {
      return 'cian';
    } else if (hexColor == const Color.fromARGB(255, 174, 174, 174)) {
      return 'gris';
    } else {
      return 'amarillo';
    }
  }

  void onGiftTap(String name, Color color) {
    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      points++;
    } else {
      points--;
    }
    setState(() {});
  }
}
