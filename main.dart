import 'package:flutter/material.dart';
import 'notification_service.dart'; // Import the notification service
import 'home_screen.dart'; // Import the home screen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the NotificationService
  final notificationService = NotificationService();
  await notificationService.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'College Alert',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}