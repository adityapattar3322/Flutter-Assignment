import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialMediaPostCard extends StatelessWidget {
  const SocialMediaPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  'Assignment 7: Social Media Post',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF4A00E0),
                  ),
                ),
                const SizedBox(height: 4),
                Container(height: 2, width: 60, color: const Color(0xFF8E2DE2)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Color(0xFFFFCCBC),
                      child: Text('🧑‍💻', style: TextStyle(fontSize: 20)),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Aditya Pattar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2 hours ago',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  'Just finished building my first Flutter app! The widgets system is incredible 🚀',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 12),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [Color(0xFFB2FEFA), Color(0xFFDFD5FE)],
                    ),
                  ),
                  child: const Center(
                    child: Text('📱', style: TextStyle(fontSize: 30)),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.red, size: 18),
                        SizedBox(width: 4),
                        Text('24 likes', style: TextStyle(fontSize: 13)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.comment, color: Colors.grey, size: 18),
                        SizedBox(width: 4),
                        Text('8 comments', style: TextStyle(fontSize: 13)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
