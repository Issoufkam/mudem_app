import 'dart:math'; // Pour utiliser Random
import 'package:mysql1/mysql1.dart'; // Importer la bibliothèque MySQL

class Adherent {
  final String nom;
  final String prenom;
  final String telephone;
  final DateTime dateNaissance;
  final String lieuNaissance;
  final String lieuResidence;
  final String profession;
  final String email;
  final String typePiece;
  final DateTime dateEtablissementPiece;
  final String lieuEtablissementPiece;
  final String sexe;
  final String ayantDroitNom;
  final String ayantDroitPrenom;
  final String ayantDroitTelephone;
  final String ayantDroitLieuResidence;
  final String ayantDroitTypePiece;
  final DateTime ayantDroitDateEtablissementPiece;
  final String ayantDroitLieuEtablissementPiece;
  final String lienParente;
  final bool droitAdhesionPaye;
  final bool cotisationAnnuellePayee;

  Adherent({
    required this.nom,
    required this.prenom,
    required this.telephone,
    required this.dateNaissance,
    required this.lieuNaissance,
    required this.lieuResidence,
    required this.profession,
    required this.email,
    required this.typePiece,
    required this.dateEtablissementPiece,
    required this.lieuEtablissementPiece,
    required this.sexe,
    required this.ayantDroitNom,
    required this.ayantDroitPrenom,
    required this.ayantDroitTelephone,
    required this.ayantDroitLieuResidence,
    required this.ayantDroitTypePiece,
    required this.ayantDroitDateEtablissementPiece,
    required this.ayantDroitLieuEtablissementPiece,
    required this.lienParente,
    required this.droitAdhesionPaye,
    required this.cotisationAnnuellePayee,
  });
}

Future<String> generateMatricule() async {
  // Logique pour générer le matricule
  return ''; // Ajoutez ici la logique pour retourner le matricule généré
}

Future<String> generateTemporaryPassword(int length) async {
  // Logique pour générer le mot de passe temporaire
  return ''; // Ajoutez ici la logique pour retourner le mot de passe temporaire généré
}


Future<void> saveAdherentToDatabase(Adherent adherent) async {
  final String matricule = await generateMatricule(); // Générer le matricule
  final String temporaryPassword = await generateTemporaryPassword(6); // Générer le mot de passe temporaire

  final settings = ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'Alphagt64',
    db: 'mudem_app',
  );

  try {
    final conn = await MySqlConnection.connect(settings);

    await conn.query(
      'INSERT INTO users (matricule, nom, prenom, telephone, date_naissance, lieu_naissance, lieu_residence, profession, email, type_piece, date_etablissement_piece, lieu_etablissement_piece, sexe, ayant_droit_nom, ayant_droit_prenom, ayant_droit_telephone, ayant_droit_lieu_residence, ayant_droit_type_piece, ayant_droit_date_etablissement_piece, ayant_droit_lieu_etablissement_piece, lien_parente, droit_adhesion_paye, cotisation_annuelle_payee, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
      [
        matricule,
        adherent.nom,
        adherent.prenom,
        adherent.telephone,
        adherent.dateNaissance,
        adherent.lieuNaissance,
        adherent.lieuResidence,
        adherent.profession,
        adherent.email,
        adherent.typePiece,
        adherent.dateEtablissementPiece,
        adherent.lieuEtablissementPiece,
        adherent.sexe,
        adherent.ayantDroitNom,
        adherent.ayantDroitPrenom,
        adherent.ayantDroitTelephone,
        adherent.ayantDroitLieuResidence,
        adherent.ayantDroitTypePiece,
        adherent.ayantDroitDateEtablissementPiece,
        adherent.ayantDroitLieuEtablissementPiece,
        adherent.lienParente,
        adherent.droitAdhesionPaye,
        adherent.cotisationAnnuellePayee,
        temporaryPassword,
      ],
    );

    await conn.close();
  } catch (e) {
    print('Erreur lors de l\'enregistrement de l\'adhérent : $e');
  }
}
