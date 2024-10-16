import 'package:flutter/material.dart';

// Widget for traffic history
class TrafficHistoryPage extends StatelessWidget {
  const TrafficHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> trafficHistory = [
      {'road': 'Moi Ave', 'average_cars': 40, 'trend': 'Increasing'},
      {'road': 'Kenyatta Ave', 'average_cars': 35, 'trend': 'Stable'},
      {'road': 'Tom Mboya St', 'average_cars': 20, 'trend': 'Decreasing'},
    ];

    return ListView.builder(
      itemCount: trafficHistory.length,
      itemBuilder: (context, index) {
        final history = trafficHistory[index];
        return ListTile(
          title: Text(history['road']),
          subtitle: Text('Avg Cars: ${history['average_cars']}'),
          trailing: Text('Trend: ${history['trend']}'),
        );
      },
    );
  }
}
