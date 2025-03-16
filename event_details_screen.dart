import 'package:flutter/material.dart';
import 'notification_service.dart'; // Import the notification service

class EventDetailsScreen extends StatelessWidget {
  final Map<String, String> event;

  EventDetailsScreen({required this.event});

  @override
  Widget build(BuildContext context) {
    // Schedule a notification for the event
    final notificationService = NotificationService();
    final scheduledDate = DateTime.now().add(Duration(seconds: 10)); // Example: Schedule 10 seconds from now
    notificationService.scheduleNotification(
      'Reminder: ${event['title']}',
      'Don\'t forget the event on ${event['date']}!',
      scheduledDate,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(event['title']!),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event['title']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Date: ${event['date']}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              event['description']!,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}