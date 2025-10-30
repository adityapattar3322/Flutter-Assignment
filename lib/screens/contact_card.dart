import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

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
            'Assignment 9: Contact Card',
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
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.orangeAccent,
                  child: Text('👨‍💼', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Aditya Pattar',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 16),
                Row(
                  children: const [
                    Icon(Icons.phone, color: Colors.pink),
                    SizedBox(width: 10),
                    Text('(+91) 9421697781'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(Icons.email_outlined, color: Colors.indigo),
                    SizedBox(width: 10),
                    Text('adityapattar02@gmail.com'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(Icons.location_on, color: Colors.red),
                    SizedBox(width: 10),
                    Text('Kothrud, Pune'),
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
