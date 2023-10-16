import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage(
      {super.key,
      required this.name,
      required this.photoUrl,
      required this.text});

  final String name;
  final String photoUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.network(photoUrl, height: 150, width: 150),
            const SizedBox(height: 20),
            Text(text),
          ],
        ),
      ),
    );
  }
}
