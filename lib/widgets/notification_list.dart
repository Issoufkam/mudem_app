import 'package:flutter/material.dart';

class NotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Remplacez ceci par le nombre réel de notifications
      itemBuilder: (context, index) {
        // Ajoutez ici la logique pour construire chaque élément de la liste
        return ListTile(
          title: Text('Notification $index'),
          // Autres widgets et logique de construction
        );
      },
    );
  }
}
