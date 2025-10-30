import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalProfileScreen extends StatelessWidget {
  const PersonalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 300,
      //padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      width: 320,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Assignment 2: Personal Profile',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF4A00E0),
            ),
          ),
          const SizedBox(height: 4),
          Container(height: 2, width: 50, color: const Color(0xFF8E2DE2)),
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 40,
            backgroundColor: Color(0xFFff9a9e),
            child: Text('👩‍💻', style: TextStyle(fontSize: 40)),
          ),
          const SizedBox(height: 16),
          const Text(
            'Aditya Pattar',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Flutter developer passionate about creating beautiful mobile experiences',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              _StatItem(label: 'Followers', value: '1.2K'),
              _StatItem(label: 'Following', value: '856'),
              _StatItem(label: 'Posts', value: '42'),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  const _StatItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(label),
      ],
    );
  }
}
