import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('My Bio'))),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: Haydar Qisyaam Sangadji'),
            Text('TTL: 3 Juli 2004'),
            Text('Alamat: Tanah Tinggi Barat, Ternate Selatan'),
            Text('Hobi: Main Game, Nonton Anime, Mendengarkan Musik Rock'),
            SizedBox(height: 16),
            Text('Sosial Media:'),
            Row(
              children: [
                Icon(Icons.camera_alt), 
                SizedBox(width: 8),
                Text('haydarqisyaam'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.facebook),
                SizedBox(width: 8),
                Text('haydarqs'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.email), 
                SizedBox(width: 8),
                Text('haqy.x2@gmail.com'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
