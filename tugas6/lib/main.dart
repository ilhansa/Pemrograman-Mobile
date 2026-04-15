import 'package:flutter/material.dart';
import 'dart:math'; // Import ini buat fungsi acak (Random)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Grizz Variasi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Contoh Layout')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Warna Acak (Stateful)'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const GantiWarnaPage())),
            ),
            ElevatedButton(
              child: const Text('Single Child (Box)'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SingleChildExample())),
            ),
            ElevatedButton(
              child: const Text('Column'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ColumnExample())),
            ),
            ElevatedButton(
              child: const Text('Stack'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const StackExample())),
            ),
          ],
        ),
      ),
    );
  }
}

// 1. STATEFUL: Ubah Warna jadi ACAK
class GantiWarnaPage extends StatefulWidget {
  const GantiWarnaPage({super.key});

  @override
  State<GantiWarnaPage> createState() => _GantiWarnaPageState();
}

class _GantiWarnaPageState extends State<GantiWarnaPage> {
  // Warna awal
  Color _warnaBackground = Colors.white;
  Color _warnaTeks = Colors.black;

  void _acakWarna() {
    setState(() {
      // Mengambil warna acak dari daftar warna primer Flutter
      _warnaBackground = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      _warnaTeks = Colors.white; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _warnaBackground,
      appBar: AppBar(title: const Text('Warna Acak')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ganti warna',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: _warnaTeks),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _acakWarna,
              child: const Text('Acak warna'),
            ),
          ],
        ),
      ),
    );
  }
}

// 2. SINGLE CHILD: Pakai Container Berwarna
class SingleChildExample extends StatelessWidget {
  const SingleChildExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Single Child')),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text('Halo dari dalam Box!', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

// 3. COLUMN: List Teks Rapi
class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Baris Pertama: Halo guys', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Baris Kedua: Tes column', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Baris Ketiga: Yoi', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

// 4. STACK: Kotak tumpuk
class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack (Tumpuk)')),
      body: Center(
        child: Stack(
          alignment: Alignment.center, // Biar tumpukannya pas di tengah
          children: [
            // Kotak paling bawah (paling besar)
            Container(width: 250, height: 250, color: Colors.red),
            // Kotak tengah
            Container(width: 150, height: 150, color: Colors.orange),
            // Kotak paling atas (paling kecil)
            Container(width: 50, height: 50, color: Colors.yellow),
            // Teks overlay
            const Text(
              'Layer!',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}