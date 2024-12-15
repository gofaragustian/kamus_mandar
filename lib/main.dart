import 'package:flutter/material.dart';
import 'HalamanUtama.dart'; // Pastikan path ini sesuai dengan lokasi file Anda

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kamus Bahasa Mandar',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HalamanUtama(),
    );
  }
}
