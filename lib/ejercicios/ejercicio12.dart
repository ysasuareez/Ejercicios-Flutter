import 'package:flutter/material.dart';

void main() => runApp(Ejercicio12());

class Ejercicio12 extends StatelessWidget {
  const Ejercicio12({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyEjercicio12(),
    );
  }
}

class MyEjercicio12 extends StatefulWidget {
  const MyEjercicio12({super.key});

  @override
  State<MyEjercicio12> createState() => _MyEjercicio12State();
}

class _MyEjercicio12State extends State<MyEjercicio12> {
  var username = '';
  var password = '';
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('EJERCICIO 12'),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 280,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextField(
                      keyboardType: TextInputType.text,
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key, color: Colors.grey),
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState((() {
                                passwordVisible = !passwordVisible;
                              }));
                            },
                          )),
                      onChanged: (value) => setState(() {
                        password = value;
                      }),
                    ),
                  ],
                ),
              ),
              TextButton(
                child: Text('SING IN'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shadowColor: Colors.black,
                  elevation: 15,
                ),
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
Nos validara si todos los campos están rellenos y a su vez correctos, 
nos mostrará un AlertDialog en función al error que se haya cometido además
de mostrarlo tambien por la consola. Para cerrar el Alert solo habrá que 
pulsar fuera de él
*/
  void validar() {
    var resultado = null;
    setState(() {
      if (username.isEmpty ||
          password.isEmpty ||
          username == null ||
          password == null) {
        showAlertDialog(context, 'Rellene todos los campos');
        print('Rellene todos los campos');
      } else {
        if (username == 'ysabel') {
          if (password == 'ysabel') {
            showAlertDialog(context, 'Ha iniciado sesión con éxito');

            print('Ha iniciado sesión con éxito');
          } else {
            showAlertDialog(context, 'Contraseña incorrecta');

            print('Contraseña incorrecta');
          }
        } else {
          showAlertDialog(context, 'Nombre de usuario incorrecto');

          print('Nombre de usuario incorrecto');
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
