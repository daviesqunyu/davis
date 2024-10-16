import 'package:flutter/material.dart';

// Widget showing real-time traffic information
class TrafficInfoPage extends StatelessWidget {
  const TrafficInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> trafficData = [
      {'road': 'Moi Ave', 'car_count': 45, 'status': 'Heavy Traffic'},
      {'road': 'Kenyatta Ave', 'car_count': 32, 'status': 'Moderate Traffic'},
      {'road': 'Tom Mboya St', 'car_count': 15, 'status': 'Light Traffic'},
    ];

    return ListView.builder(
      itemCount: trafficData.length,
      itemBuilder: (context, index) {
        final traffic = trafficData[index];
        return ListTile(
          title: Text(traffic['road']),
          subtitle: Text('Cars: ${traffic['car_count']}'),
          trailing: Text(traffic['status']),
        );
      },
    );
  }
}
