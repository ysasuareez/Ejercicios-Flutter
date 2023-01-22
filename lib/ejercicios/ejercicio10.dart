import 'package:flutter/material.dart';

void main() => runApp(Ejercicio10());

class Ejercicio10 extends StatelessWidget {
  const Ejercicio10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyEjercicio10(),
    );
  }
}

class MyEjercicio10 extends StatefulWidget {
  const MyEjercicio10({super.key});

  @override
  State<MyEjercicio10> createState() => _MyEjercicio10State();
}

class _MyEjercicio10State extends State<MyEjercicio10> {
  double heightImageF = 50;
  double widthImageF = 50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('EJERCICIO 10'),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: GestureDetector(
            child: Image.asset(
              width: widthImageF,
              height: heightImageF,
              'lib/images/perro.jpg',
            ),
            onDoubleTap: () {
              _plus();
            },
            onTap: () {
              _less();
            },
          ),
        ),
      ),
    );
  }

  void _plus() {
    setState(() {
      heightImageF = heightImageF + 50;
      widthImageF = widthImageF + 50;
    });
  }

  void _less() {
    setState(() {
      heightImageF = heightImageF - 50;
      widthImageF = widthImageF - 50;
    });
  }
}
