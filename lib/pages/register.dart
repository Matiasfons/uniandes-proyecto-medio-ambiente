import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _cedula = TextEditingController();
  TextEditingController _ciudad = TextEditingController();
  TextEditingController _edad = TextEditingController();
  TextEditingController _correo = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool? novedades = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Nueva Cuenta"),
        elevation: 1,
        centerTitle: true,
        actions: [
          Icon(
            Icons.favorite,
            color: Colors.redAccent,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nombres y apellidos",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: _name,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Cédula",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: _cedula,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Ciudad",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: _ciudad,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Edad",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: _edad,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Correo",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: _correo,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Contraseña",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextField(
                  obscureText: true,
                  controller: _password,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: novedades,
                        onChanged: (v) {
                          setState(() {
                            novedades = v;
                          });
                        }),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Recibir correos con novedades")
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    width: 200,
                    child: RaisedButton(
                      color: Colors.lightBlueAccent,
                      onPressed: () async {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  "Cuenta creada con éxito",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                content:
                                    Text("Te vamos a redireccionar al login"),
                                actions: [
                                  RaisedButton(
                                    color: Colors.lightBlueAccent,
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pushNamedAndRemoveUntil(
                                          context, '/login', (route) => false);
                                    },
                                    child: Text(
                                      "Confirmar",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              );
                            });
                      },
                      child: Text(
                        "Registrarse",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
