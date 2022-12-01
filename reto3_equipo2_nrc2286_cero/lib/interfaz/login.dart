import 'package:flutter/material.dart';
import 'package:reto3_equipo2_nrc2286_cero/proceso/autenticacion.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

final email = TextEditingController();
final password = TextEditingController();

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login / Registro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2020/06/29/17/24/chat-5353507_960_720.png")),
            ),
            TextField(
                controller: email,
                decoration: InputDecoration(
                    hintText: "Email", suffixIcon: Icon(Icons.email))),
            TextField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    hintText: "Password", suffixIcon: Icon(Icons.password))),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  autenticacion().IniciarSesion(
                      email: email.text, password: password.text);
                },
                icon: Icon(Icons.login),
                label: Text("Iniciar Sesión")),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  autenticacion()
                      .CrearUsuario(email: email.text, password: password.text);
                },
                icon: Icon(Icons.person_add),
                label: Text("Registrar Usuarios")),
          ],
        ),
      ),
    );
  }
}
