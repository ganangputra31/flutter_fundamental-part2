import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Membuat widget titleSection
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );

    // Membuat metode untuk tombol
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    // Menentukan warna utama
    Color color = Theme.of(context).primaryColor;

    // Membuat buttonSection
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Membuat widget textSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Butak memiliki ketinggian sekitar 2.868 mdpl dengan jalur pendakian yang cukup panjang. '
        'Namun, keindahan savana yang luas dan pemandangan alamnya sangat memukau, '
        'sehingga cocok bagi pecinta camping dan petualangan'
        '\n\nNama: Ganang Andika Kurnia Putra \nNIM: 244107060008',
        softWrap: true, // Teks akan membungkus jika mencapai batas
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Ganang Andika Kurnia Putra',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          // Menggunakan ListView untuk mendukung scrolling
          children: [
            Image.asset(
              'images/buthak.jpg', // Path gambar sesuai dengan yang ditulis di pubspec.yaml
              width: 600,
              height: 240,
              fit: BoxFit.cover, // Gambar menutupi area
            ),
            titleSection, // Menambahkan titleSection
            buttonSection, // Menambahkan buttonSection
            textSection, // Menambahkan textSection
          ],
        ),
      ),
    );
  }
}
