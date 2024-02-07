import 'package:flutter/material.dart';
import 'package:mudem_app/screens/login_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Couleur similaire à celle d'un contreplaqué
    Color backgroundColor = Color(0xFFE0D7B1);

    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenue sur MUDEM'),
        backgroundColor: Colors.yellowAccent, // Couleur de fond de la barre d'applications
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenue sur MUDEM',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Couleur du texte
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Couleur du bouton
              ),
              child: Text('Se connecter', style: TextStyle(color: Colors.white)), // Couleur du texte du bouton
            ),
          ],
        ),
      ),
      backgroundColor: backgroundColor, // Utilisation de la couleur personnalisée
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MUDEM App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
