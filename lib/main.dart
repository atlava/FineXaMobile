import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Batu Escape',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Segoe UI',
        brightness: Brightness.dark,
      ),
      home: const HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true, 
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black.withValues(alpha: 0.4), 
          title: const Text(
            'KOTA WISATA BATU',
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2.0, color: Colors.white),
          ),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white54,
            indicatorColor: Colors.white,
            indicatorWeight: 3.0,
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'Profil'),
              Tab(icon: Icon(Icons.attractions), text: 'Hiburan'),
              Tab(icon: Icon(Icons.nature), text: 'Alam'),
              Tab(icon: Icon(Icons.explore), text: 'Jelajahi'),
            ],
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(), 
          children: [
            TabProfil(),
            TabHiburan(),
            TabAlam(),
            TabPenutup(),
          ],
        ),
      ),
    );
  }
}

// TAB 1: PROFIL 
class TabProfil extends StatelessWidget {
  const TabProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1588668214407-6ea9a6d8c272?q=80&w=2071&auto=format&fit=crop'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15), 
            child: Container(
              width: 400,
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.15), 
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white.withValues(alpha: 0.3), width: 1.5),
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white24,
                    child: Icon(Icons.person, size: 60, color: Colors.white),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'KONSULTAN WISATA',
                    style: TextStyle(fontSize: 14, color: Colors.white70, letterSpacing: 2),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Neza Frischa P.P',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'NIM: 253140700111015',
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// TAB 2: TAMAN HIBURAN 
class TabHiburan extends StatelessWidget {
  const TabHiburan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF121212), 
      ),
      child: const Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KartuInteraktif(
                judul: 'Museum Angkut',
                deskripsi: 'Museum transportasi modern pertama di Asia Tenggara dengan berbagai zona waktu dan benua.',
                imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa4X5FogBmq4kTX-HyhD4rkvrF8-AEpwFXmk31eYHrkg&s=10',
              ),
              SizedBox(width: 40),
              KartuInteraktif(
                judul: 'Jatim Park 2',
                deskripsi: 'Pusat konservasi satwa modern yang interaktif dengan fasilitas bertaraf internasional.',
                imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3i_moSD_jys1cCtP_Qxg5YOjqys17JIwafrW03bWGCySr0g2tiMlX97-T&s=10',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// TAB 3: WISATA ALAM
class TabAlam extends StatelessWidget {
  const TabAlam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF121212),
      ),
      child: const Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KartuInteraktif(
                judul: 'Coban Rondo',
                deskripsi: 'Air terjun setinggi 84 meter yang tersembunyi di balik rimbunnya hutan pinus Kota Batu.',
                imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHmBleh4JWQgQjUIQAVjB5IjASGLEFersh-mQmrXXV3uYjwcCTa6_097VS&s=10',
              ),
              SizedBox(width: 40),
              KartuInteraktif(
                judul: 'Taman Selecta',
                deskripsi: 'Hamparan taman bunga warna-warni tertua dan paling ikonik peninggalan zaman Belanda.',
                imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtb5HIYKP2iCO9DarvdY_9Sig-XtSoCZOD-OBcM97LnP_NBQZzZDmRpQ&s=10',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// TAB 4: PENUTUP
class TabPenutup extends StatelessWidget {
  const TabPenutup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1511497584788-876760111969?q=80&w=2000&auto=format&fit=crop'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), 
                child: Container(
                  color: Colors.black.withValues(alpha: 0.6), 
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                      const Text(
                        'NEED HEALING?',
                        style: TextStyle(color: Colors.greenAccent, letterSpacing: 3, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'ESCAPE\nTO BATU',
                        style: TextStyle(fontSize: 70, fontWeight: FontWeight.w900, height: 1.1, color: Colors.white),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Tinggalin bentar rutinitas yang bikin mumet. Hirup udara segar, cari suasana baru, dan recharge energi kamu di Kota Apel.',
                        style: TextStyle(fontSize: 16, color: Colors.white70, height: 1.6),
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent.shade700,
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), 
                        ),
                        onPressed: () {
                        },
                        child: const Text('Gas Healing Skuy! ✈️', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(), 
          ),
        ],
      ),
    );
  }
}

// WIDGET KARTU
class KartuInteraktif extends StatefulWidget {
  final String judul;
  final String deskripsi;
  final String imageUrl;

  const KartuInteraktif({super.key, required this.judul, required this.deskripsi, required this.imageUrl});

  @override
  State<KartuInteraktif> createState() => _KartuInteraktifState();
}

class _KartuInteraktifState extends State<KartuInteraktif> {
  bool _tampilkanDeskripsi = false; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _tampilkanDeskripsi = !_tampilkanDeskripsi; 
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 320,
        height: 500, 
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(widget.imageUrl),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(color: Colors.black54, blurRadius: 20, offset: Offset(0, 10))
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withValues(alpha: 0.9),
                Colors.transparent,
              ],
            ),
          ),
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.judul,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 8),
              AnimatedCrossFade(
                firstChild: const Text(
                  'Tap untuk melihat detail 👆',
                  style: TextStyle(color: Colors.white54, fontStyle: FontStyle.italic),
                ),
                secondChild: Text(
                  widget.deskripsi,
                  style: const TextStyle(color: Colors.white, height: 1.5, fontSize: 16),
                ),
                crossFadeState: _tampilkanDeskripsi ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                duration: const Duration(milliseconds: 300),
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star_half, color: Colors.amber, size: 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}