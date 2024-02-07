import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          // Ajoutez ici la logique pour afficher la photo de profil
        ),
        SizedBox(height: 16),
        Text(
          'Nom de l\'utilisateur',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'Adresse email',
          style: TextStyle(fontSize: 16),
        ),
        // Ajoutez d'autres widgets pour afficher d'autres informations du profil
      ],
    );
  }
}
