import 'package:flutter/material.dart';
import 'package:mudem_app/widgets/profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: ProfileWidget(), // Instanciez le widget ProfileWidget ici
    );
  }
}
