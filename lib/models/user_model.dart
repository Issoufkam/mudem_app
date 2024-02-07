import 'package:mysql1/mysql1.dart';

Future<void> connectToDatabase() async {
  final settings = ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'Alphagt64',
    db: 'mudem_app',
  );

  try {
    final conn = await MySqlConnection.connect(settings);

    // Exemple : exécuter une requête SQL
    var results = await conn.query('SELECT * FROM users'); // Ajouter FROM pour spécifier la table
    for (var row in results) {
      print('Row: $row');
    }

    await conn.close();
  } catch (e) {
    print('Erreur lors de la connexion à la base de données : $e');
  }
}

class User {
  final String email;
  final String password;

  User({required this.email, required this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}
