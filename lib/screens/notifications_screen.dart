import 'package:flutter/material.dart';
import 'package:mudem_app/widgets/notification_list.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: NotificationList(), // Instanciez le widget NotificationList ici
    );
  }
}
