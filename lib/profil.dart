import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String nama;

  const ProfilePage({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 16),
            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.orange.shade100,
              child: const Icon(
                Icons.person,
                size: 50,
                color: Color.fromARGB(255, 34, 152, 255),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              nama.toUpperCase(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text('Pelanggan Resto', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 24),

            _infoCard(
              icon: Icons.restaurant_menu,
              judul: 'Menu Resto',
              subjudul: 'Kelola stok dan harga barang dagangan Anda',
            ),
            const SizedBox(height: 12),
            _infoCard(
              icon: Icons.receipt_long,
              judul: 'Barang Unggulan',
              subjudul: 'Pulpen, Buku Tulis, dan Pensil',
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoCard({
    required IconData icon,
    required String judul,
    required String subjudul,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.orange.shade100,
          child: Icon(icon, color: Color.fromARGB(255, 34, 152, 255)),
        ),
        title: Text(judul, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subjudul),
      ),
    );
  }
}
