import 'package:flutter/material.dart';
import 'package:mudem_app/screens/sponsorship_screen.dart'; // Importez la page SponsorshipScreen
import 'package:mudem_app/screens/settings_screen.dart';

class HomeScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: PreferredSize(
      preferredSize: Size.fromHeight(100.0), // Augmentez la taille de l'AppBar
      child: AppBar(
        backgroundColor: Colors.yellow,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_avatar.jpg'), // Image de l'utilisateur
            ),
            SizedBox(width: 10), // Ajout d'un espacement entre l'avatar et les informations utilisateur
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Nom Utilisateur'), // Afficher le nom de l'utilisateur
                Text('Prénom Utilisateur'), // Afficher le prénom de l'utilisateur
                Text('Numéro Utilisateur'), // Afficher le numéro de l'utilisateur
                Text('Matricule Utilisateur'), // Afficher le matricule de l'utilisateur
              ],
            ),
            Spacer(), // Ajout d'un espaceur pour pousser les icônes à droite
            IconButton(
              icon: Icon(Icons.monetization_on), // Icône pour recharger le compte prépayé
              onPressed: () {
                // Action à effectuer lorsque l'utilisateur appuie sur l'icône de recharge
                // Ajoutez ici la logique pour recharger le compte prépayé
              },
            ),
            IconButton(
              icon: Icon(Icons.settings), // Icône pour accéder aux paramètres
              onPressed: () {
                // Navigation vers la page de réglages
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0), // Augmentez la taille de la partie inférieure de l'AppBar
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Compte prépayé : ',
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                '100 FCFA', // Remplacez par la variable contenant le montant
                style: TextStyle(fontSize: 16.0, color: Colors.blue), // Texte en bleu
              ),
              Spacer(), // Espacement flexible pour pousser le bouton à droite
              ElevatedButton(
                onPressed: () {
                  // Action à effectuer lorsque le bouton de recharge du compte prépayé est pressé
                },
                child: Column(
                  children: [
                    Text('Recharger compte'), // Ajout du texte "Recharger compte prépayé"
                    SizedBox(height: 5), // Ajout d'un espace vertical après le texte
                    Text('prepayé'), // Ajout du texte "prepayé"
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 100,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    // Code à exécuter lorsque le premier bouton est pressé
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), // Définissez le rayon des bords du rectangle
                      // side: BorderSide(color: Colors.black), // Ajoutez une bordure autour du bouton
                    ),
                  ),
                  child: Text("Bouton gauc"),
                ),
              ),

            SizedBox(
height: 100,
width: 200,
child: ElevatedButton(
  onPressed: () {
    // Code à exécuter lorsque le premier bouton est pressé
  },
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0), // Définissez le rayon des bords du rectangle
    ),
  ),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Text("Historique"),
      Positioned(
        right: 10, // Ajustez la position du cercle par rapport au bouton
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red, // Couleur du cercle
          ),
          child: Center(
            child: Text(
              "H",
              style: TextStyle(
                color: Colors.white, // Couleur du texte
                fontWeight: FontWeight.bold, // Gras
                fontSize: 16, // Taille de la police
              ),
            ),
          ),
        ),
      ),
    ],
  ),
),
),


            ],
          ),
        ),
        // Ajoutez d'autres widgets ici
      ],
    ),
  );
}
}
