import 'package:flutter/material.dart';

class TrafficMap extends StatelessWidget {
  const TrafficMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Nairobi CBD Traffic Simulation',
            style: TextStyle(fontSize: 20, color: Colors.deepOrange),
          ),
          const SizedBox(height: 20),
          Text(
            'Current traffic: 150 cars in CBD',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Action to load traffic map or simulate API call
            },
            child: const Text('View Nairobi CBD Traffic Map'),
          ),
        ],
      ),
    );
  }
}
