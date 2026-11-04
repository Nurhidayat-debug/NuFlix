import 'package:flutter/material.dart';
import 'package:nuflix/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const List<_Founder> _founders = [
    _Founder(name: 'Nurhidayat', initials: 'NH'),
    _Founder(name: 'Muhammad Ikhsan', initials: 'MI'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset('assets/logo.png', height: 96),
                  const SizedBox(height: 12),
                  const Text(
                    'NUFLIX',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 6,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Streaming Everywhere',
                    style: TextStyle(color: MColors.primary, fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 36),
            const Text(
              'Pendiri & Pengembang',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            for (final founder in _founders) ...[
              _FounderCard(founder: founder),
              const SizedBox(height: 12),
            ],
            const SizedBox(height: 24),
            const Text(
              'Tentang Nuflix',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Nuflix adalah aplikasi film dan serial TV yang dibangun dengan '
              'Flutter, dengan antarmuka yang nyaman untuk menjelajahi tayangan '
              'populer, melihat detail film, dan menonton kapan saja.',
              style: TextStyle(color: MColors.grey, height: 1.5),
            ),
            const SizedBox(height: 24),
            const Text(
              'Produk ini menggunakan API TMDB tetapi tidak didukung atau '
              'disertifikasi oleh TMDB.',
              style: TextStyle(color: MColors.darkGrey, fontSize: 12),
            ),
            const SizedBox(height: 8),
            const Text(
              '© 2026 Nuflix. Dikembangkan oleh Nurhidayat dan Muhammad Ikhsan.',
              style: TextStyle(color: MColors.darkGrey, fontSize: 12),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class _Founder {
  final String name;
  final String initials;

  const _Founder({required this.name, required this.initials});
}

class _FounderCard extends StatelessWidget {
  final _Founder founder;

  const _FounderCard({required this.founder});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: MColors.searchColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: MColors.primaryGradient,
            ),
            child: Text(
              founder.initials,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  founder.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  'Pendiri & Pengembang',
                  style: TextStyle(color: MColors.grey, fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
