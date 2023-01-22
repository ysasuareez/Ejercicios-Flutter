import 'package:flutter/material.dart';
import 'package:ejercicio01/utils/Contenedores05.dart';

void main() => runApp(Ejercicio09());

class Ejercicio09 extends StatelessWidget {
  const Ejercicio09({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyEjercicio09(),
    );
  }
}

class MyEjercicio09 extends StatefulWidget {
  const MyEjercicio09({super.key});

  @override
  State<MyEjercicio09> createState() => _MyEjercicio09State();
}

class _MyEjercicio09State extends State<MyEjercicio09> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EJERCICIO 09'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 225,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: [
                Align(
                  child: ElevatedButton.icon(
                    label: Text('Elevated'),
                    icon: Icon(Icons.android_outlined),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                    ),
                    onPressed: () {},
                  ),
                ),
                Align(
                    child: IconButton(
                  tooltip: 'Información',
                  icon: Icon(Icons.shopping_bag_outlined),
                  iconSize: 30,
                  color: Colors.purple,
                  onPressed: () {},
                )),
                Align(
                  child: ElevatedButton(
                    child: Text('Elevated Button'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      onPrimary: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 15,
                    ),
                    onPressed: () {},
                  ),
                ),
                Align(child: PopupMenuButton<String>(
                  itemBuilder: (context) {
                    return <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'uno',
                        child: Text('PROGRAMACION'),
                      ),
                      PopupMenuItem<String>(
                        value: 'dos',
                        child: Text('FOL'),
                      ),
                      PopupMenuItem<String>(
                        value: 'tres',
                        child: Text('PROCESOS'),
                      ),
                    ];
                  },
                ))
              ],
            ),
            Column(
              children: [
                Align(
                  child: OutlinedButton(
                    child: Text('Outlined Button'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 249, 215, 255),
                      onPrimary: Colors.purple,
                      side: BorderSide(color: Colors.purple, width: 5),
                    ),
                    onPressed: () {},
                  ),
                ),
                Align(
                  child: TextButton(
                    child: Text('Text'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.purple,
                    ),
                    onPressed: () {},
                  ),
                ),
                Align(
                  child: ElevatedButton(
                    child: Text('Elevated Button'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      onPrimary: Colors.white,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    onPressed: () {},
                  ),
                ),
                Align(
                  child: FloatingActionButton(
                    child: Text('X'),
                    backgroundColor: Colors.purple,
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
