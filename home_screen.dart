import 'package:flutter/material.dart';
import 'event_details_screen.dart'; // Import the event details screen

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> events = [
    {
      'title': 'Tech Fest 2023',
      'date': 'October 25, 2023',
      'description': 'Annual technical festival showcasing innovations.',
    },
    {
      'title': 'Cultural Night',
      'date': 'November 10, 2023',
      'description': 'An evening of music, dance, and cultural performances.',
    },
    // Add more events here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College Alert'),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(events[index]['title']!),
              subtitle: Text(events[index]['date']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventDetailsScreen(event: events[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}