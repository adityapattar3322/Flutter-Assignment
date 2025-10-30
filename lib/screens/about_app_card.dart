import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutAppCard extends StatelessWidget {
  const AboutAppCard({super.key});

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
        children: [
          Text(
            'Assignment 10: App About Page',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF4A00E0),
            ),
          ),
          const SizedBox(height: 4),
          Container(height: 2, width: 60, color: const Color(0xFF8E2DE2)),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  radius: 35,
                  child: Icon(Icons.apps, color: Colors.orangeAccent, size: 35),
                ),
                const SizedBox(height: 14),
                const Text(
                  'MyFlutterApp',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Version 1.0.0',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                const SizedBox(height: 14),
                const Text(
                  'A beautiful mobile application built with Flutter. This app demonstrates clean UI design and smooth user experience with modern Material Design principles.',
                  style: TextStyle(fontSize: 13.5, color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Divider(color: Colors.grey.shade300),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Developer Information',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.business, color: Colors.deepPurple),
                    SizedBox(width: 10),
                    Text('ABC Tech Solutions'),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(Icons.email_outlined, color: Colors.indigo),
                    SizedBox(width: 10),
                    Text('support@abctech.com'),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(Icons.language, color: Colors.blue),
                    SizedBox(width: 10),
                    Text('www.abctech.com'),
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
