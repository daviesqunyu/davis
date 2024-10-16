import 'package:flutter/material.dart';

// Widget for traffic alerts
class TrafficAlertsPage extends StatelessWidget {
  const TrafficAlertsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> alerts = [
      {'alert': 'Accident on Moi Ave', 'time': '10:30 AM'},
      {'alert': 'Roadblock on Tom Mboya St', 'time': '12:45 PM'},
      {'alert': 'Heavy traffic on Kenyatta Ave', 'time': '1:15 PM'},
    ];

    return ListView.builder(
      itemCount: alerts.length,
      itemBuilder: (context, index) {
        final alert = alerts[index];
        return ListTile(
          title: Text(alert['alert']),
          subtitle: Text('Time: ${alert['time']}'),
        );
      },
    );
  }
}
