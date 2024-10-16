import 'package:flutter/material.dart';
import 'traffic_info.dart'; // Import traffic info
import 'traffic_history.dart'; // Import traffic history
import 'traffic_alerts.dart'; // Import traffic alerts
import 'traffic_settings.dart'; // Import traffic settings

class TrafficTabs extends StatelessWidget {
  const TrafficTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Traffic Information'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.traffic), text: 'Live Traffic'),
              Tab(icon: Icon(Icons.history), text: 'Traffic History'),
              Tab(icon: Icon(Icons.warning), text: 'Alerts'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TrafficInfoPage(), // Live traffic information
            TrafficHistoryPage(), // Traffic history details
            TrafficAlertsPage(), // Traffic alerts page
            TrafficSettings(), // Traffic settings page
          ],
        ),
      ),
    );
  }
}
