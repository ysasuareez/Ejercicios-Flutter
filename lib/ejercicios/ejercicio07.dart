import 'package:flutter/material.dart';
import 'package:ejercicio01/utils/Contenedores05.dart';

void main() => runApp(Ejercicio07());

class Ejercicio07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('EJERCICIO 07'),
        ),
      ),
      drawer: Drawer(
        child: Container(
            decoration: BoxDecoration(color: Colors.green[200]),
            child: ListView(children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Text(
                    'ANIMALS',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("lib/images/perro.jpg"),
                        fit: BoxFit.cover)),
              ),
              ListTile(title: Text('GOLDEN', style: TextStyle(fontSize: 20))),
              ListTile(title: Text('LABRADOR', style: TextStyle(fontSize: 20))),
              ListTile(
                  title:
                      Text('BOYERO DE BERNA', style: TextStyle(fontSize: 20))),
              ListTile(
                title: Text('HUSKY', style: TextStyle(fontSize: 20)),
              ),
              ListTile(
                title: Text('SAMOYEDO', style: TextStyle(fontSize: 20)),
              ),
            ])),
      ),
    ));
  }
}
