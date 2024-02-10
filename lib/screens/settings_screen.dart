import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Center(
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text('Partager l\'application'),
                    leading: Icon(Icons.share), // Icône pour partager l'application
                    onTap: () {
                      // Ajoutez ici la logique pour partager l'application
                      // Par exemple, utiliser le package share pour partager un lien vers l'application
                    },
                  ),
                  Divider(), // Ligne horizontale
                  ListTile(
                    title: Text('Modifier le mot de passe'),
                    leading: Icon(Icons.lock), // Icône pour modifier le mot de passe
                    onTap: () {
                      // Ajoutez ici la logique pour modifier le mot de passe
                      // Par exemple, naviguer vers un écran de modification de mot de passe
                    },
                  ),
                  Divider(), // Ligne horizontale
                  ListTile(
                    title: Text('Se déconnecter'),
                    leading: Icon(Icons.exit_to_app), // Icône pour se déconnecter
                    onTap: () {
                      // Ajoutez ici la logique pour se déconnecter
                      // Par exemple, afficher une boîte de dialogue de confirmation de déconnexion
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20), // Ajout d'un espacement entre les deux cartes
          Center(
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.blue,
                    child: Text(
                      'MUDEM',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: Text('Option 1 MUDEM'),
                    onTap: () {
                      // Ajoutez ici la logique pour l'option 1 MUDEM
                    },
                  ),
                  Divider(), // Ligne horizontale
                  ListTile(
                    title: Text('Option 2 MUDEM'),
                    onTap: () {
                      // Ajoutez ici la logique pour l'option 2 MUDEM
                    },
                  ),
                ],
              ),
            ),
          ),
          // Ajoutez d'autres options de réglage si nécessaire
        ],
      ),
    );
  }
}
