import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Menu App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MainMenuPage(),
    );
  }
}

class MainMenuPage extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      "title": "About Me",
      "description": "Deskripsi profil diri",
      "image": "assets/myphoto.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Menu"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(16),
            color: Colors.orange[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(data[index]["image"]),
              ),
              title: Text(data[index]["title"]),
              subtitle: Text(data[index]["description"]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutPage();
                    },
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

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Me"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/myphoto.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              "Fausta Irsyad Ramadhan",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "NRP: 5026211150",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 20),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 24),
              color: Colors.orange[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Fun Fact",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "tidak memiliki hoby yg pasti dan akan ganti-ganti setiap 3-6 bulan",
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.orange[800],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
