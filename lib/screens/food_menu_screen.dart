import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      width: 320,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Assignment 3: Food Menu\nItem',
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
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFF7971E), Color(0xFFFF5858)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              //borderRadius: BorderRadius.circular(10),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: const Center(
              child: Text("🍕", style: TextStyle(fontSize: 40)),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.pinkAccent.withOpacity(0.1)),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Margherita Pizza",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Fresh tomatoes, mozzarella cheese, basil\nleaves on crispy thin crust",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "\$12.99",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
