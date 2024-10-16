import 'package:flutter/material.dart';

// Widget for traffic settings
class TrafficSettings extends StatelessWidget {
  const TrafficSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Traffic App Settings'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add your settings logic here
            },
            child: const Text('Change Map Theme'),
          ),
        ],
      ),
    );
  }
}
