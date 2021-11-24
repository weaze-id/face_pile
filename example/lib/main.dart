import 'package:face_pile/face_pile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Face Pile Example",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Face Pile Example")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            FacePile(
              radius: 32,
              space: 40,
              images: [
                NetworkImage("https://i.pravatar.cc/300?img=1"),
                NetworkImage("https://i.pravatar.cc/300?img=2"),
                NetworkImage("https://i.pravatar.cc/300?img=3"),
                NetworkImage("https://i.pravatar.cc/300?img=4"),
              ],
              child: Text("3+"),
            ),
          ],
        ),
      ),
    );
  }
}
