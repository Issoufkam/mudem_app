import 'package:flutter/material.dart';
import 'package:mudem_app/widgets/registration_form.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
      ),
      body: RegistrationForm(),
    );
  }
}
