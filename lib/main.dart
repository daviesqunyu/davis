import 'package:flutter/material.dart';
import 'traffic_map.dart';
import 'traffic_tabs.dart';

void main() {
  runApp(const TrafficApp());
}

class TrafficApp extends StatelessWidget {
  const TrafficApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nairobi CBD Traffic Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const TrafficHomePage(),
    );
  }
}

class TrafficHomePage extends StatefulWidget {
  const TrafficHomePage({super.key});

  @override
  State<TrafficHomePage> createState() => _TrafficHomePageState();
}

class _TrafficHomePageState extends State<TrafficHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const TrafficMap(),
    const TrafficTabs(),
    const TrafficControl(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nairobi CBD Traffic Control System'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.traffic),
            label: 'Traffic Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Traffic Control',
          ),
        ],
      ),
    );
  }
}

class TrafficControl extends StatelessWidget {
  const TrafficControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Traffic Light Control System'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Logic to control traffic lights
            },
            child: const Text('Switch Traffic Lights'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Simulate auto adjustment of traffic signals
            },
            child: const Text('Auto Adjust Traffic Lights'),
          ),
        ],
      ),
    );
  }
}
