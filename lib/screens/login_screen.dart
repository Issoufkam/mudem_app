import 'package:flutter/material.dart';
import 'package:mudem_app/widgets/login_form.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connexion", style: TextStyle(color: Colors.blue)), // Couleur de texte bleue
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Color.fromARGB(255, 217, 182, 44), // Couleur de fond en contreplaqué
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 60,
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/Logo.png",
                  height: 200,
                  width: 200,
                ),
                SizedBox(height: 20), // Espacement entre l'image et le formulaire de connexion
                LoginForm(), // Ajout du widget LoginForm ici
              ],
            ),
          ),
        ),
      ),
    );
  }
}
