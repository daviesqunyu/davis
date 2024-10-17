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
      debugShowCheckedModeBanner: false,
      title: 'Nairobi CBD Traffic Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade800),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
      extendBody: true, // To allow the bottom navigation bar to be floating over background
      appBar: AppBar(
        title: const Text('Nairobi CBD Traffic Control System',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Show traffic updates notification
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Real-time traffic updates coming soon!")),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.cloud, color: Colors.white),
            onPressed: () {
              // Placeholder for weather data fetch
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Fetching current weather information...")),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/h.jpg', // Background image from the lib folder
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: _pages[_currentIndex],
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.black.withOpacity(0.8),
          currentIndex: _currentIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          elevation: 10,
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
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          // Simulate an AI Traffic Management action
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("AI optimizing traffic routes...")),
          );
        },
        child: const Icon(Icons.computer),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
          const Text(
            'Traffic Light Control System',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            icon: const Icon(Icons.lightbulb),
            onPressed: () {
              // Logic to control traffic lights
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Traffic lights switched manually!")),
              );
            },
            label: const Text('Switch Traffic Lights'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            icon: const Icon(Icons.auto_fix_high),
            onPressed: () {
              // Simulate auto adjustment of traffic signals
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("AI auto-adjusting traffic lights...")),
              );
            },
            label: const Text('Auto Adjust Traffic Lights'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            icon: const Icon(Icons.data_usage),
            onPressed: () {
              // Simulate fetching AI-driven traffic data
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Fetching real-time traffic data using AI...")),
              );
            },
            label: const Text('Fetch Traffic Data'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.green.shade700,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
