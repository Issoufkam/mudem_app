import 'package:flutter/material.dart';
import 'package:mudem_app/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion'),
      ),
      body: LoginForm(), // Instanciez le widget LoginForm ici
    );
  }
}
