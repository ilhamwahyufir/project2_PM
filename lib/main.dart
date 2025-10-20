import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilMahasiswaApp());
}

class ProfilMahasiswaApp extends StatelessWidget {
  const ProfilMahasiswaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: const Color(0xFFF8F0FF),
      ),
      home: const ProfilMahasiswaPage(),
    );
  }
}

class ProfilMahasiswaPage extends StatelessWidget {
  const ProfilMahasiswaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil Mahasiswa',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Avatar dari link online
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/R.346411e76d5ab19fdc04753c097c4034?rik=UWbycydVyQqldg&riu=http%3a%2f%2f3.bp.blogspot.com%2f-EGhiDswlzaI%2fThLGH8yfU5I%2fAAAAAAAAAEE%2fcAvue1U9A8w%2fs1600%2fmonyet1.jpg&ehk=k2mpUePYQeOmW0dDY5k%2bUWre7crqB0F9GKbNuKlf1Rs%3d&risl=&pid=ImgRaw&r=0',
              ),
            ),
            const SizedBox(height: 20),

            // Nama Mahasiswa
            const Text(
              'Ilham Wahyu Firmansyah',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Deskripsi
            const SizedBox(height: 5),
            const Text(
              'Mahasiswa Informatika',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),

            // Tombol Lihat Detail
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.info_outline, color: Colors.white),
              label: const Text('Lihat Detail'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
