import 'package:flutter/material.dart';
import 'package:mudem_app/widgets/contribution_list.dart';

class ContributionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cotisations'),
      ),
      body: ContributionList(), // Instanciez le widget ContributionList ici
    );
  }
}
