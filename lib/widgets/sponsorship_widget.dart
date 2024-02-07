import 'package:flutter/material.dart';

class SponsorshipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Parrainer un ami',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(labelText: 'Matricule de l\'ami'),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Ajoutez ici la logique pour parrainer un ami
          },
          child: Text('Parrainer'),
        ),
      ],
    );
  }
}
