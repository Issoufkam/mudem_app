import 'package:flutter/material.dart';
import 'package:mudem_app/widgets/sponsorship_widget.dart';

class SponsorshipScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parrainage'),
      ),
      body: SponsorshipWidget(), // Instanciez le widget SponsorshipWidget ici
    );
  }
}
