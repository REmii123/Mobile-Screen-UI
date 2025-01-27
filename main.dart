import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LauncherScreen(),
    );
  }
}

class LauncherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Time and Date Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "11:05",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Jan 26\nSun",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            // Search Bar Section
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.white60, fontSize: 16),
                      ),
                    ],
                  ),
                  Icon(Icons.mic, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 16),
            // App Grid Section
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: appIcons.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[800],
                        radius: 30,
                        child: appIcons[index]['icon'] is IconData
                            ? Icon(
                          appIcons[index]['icon'] as IconData,
                          color: Colors.white,
                          size: 32,
                        )
                            : Image.asset(
                          appIcons[index]['icon'] as String,
                          width: 32,
                          height: 32,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        appIcons[index]['label'] as String,
                        style: TextStyle(color: Colors.white60, fontSize: 12),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// App Icon Data
final List<Map<String, Object>> appIcons = [
  {'icon': Icons.cleaning_services, 'label': 'Cleaner'},
  {'icon': Icons.youtube_searched_for, 'label': 'YouTube'},
  {'icon': 'assets/icons/whatsapp.png', 'label': 'WhatsApp'}, // Use image asset
  {'icon': 'assets/icons/snapchat.png', 'label': 'Snapchat'}, // Use image asset
  {'icon': Icons.play_arrow, 'label': 'Play Store'},
  {'icon': Icons.settings, 'label': 'Settings'},
  {'icon': 'assets/icons/music.png', 'label': 'Music'}, // Use image asset
  {'icon': 'assets/icons/camera.png', 'label': 'Camera'}, // Use image asset
  {'icon': Icons.phone, 'label': 'Phone'},
  {'icon': Icons.message, 'label': 'Messages'},
  {'icon': 'assets/icons/chrome.png', 'label': 'Chrome'}, // Use image asset
];
