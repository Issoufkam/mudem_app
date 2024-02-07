import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: _usernameController,
            decoration: InputDecoration(labelText: 'Nom d\'utilisateur'),
            validator: (value) {
              // Ajoutez ici la logique de validation du nom d'utilisateur
            },
          ),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              // Ajoutez ici la logique de validation de l'email
            },
          ),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(labelText: 'Mot de passe'),
            obscureText: true,
            validator: (value) {
              // Ajoutez ici la logique de validation du mot de passe
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Ajoutez ici la logique d'envoi du formulaire
            },
            child: Text('S\'inscrire'), // Correction : utilisez des guillemets simples pour 'S'inscrire'
          ),
        ],
      ),
    );
  }
}
