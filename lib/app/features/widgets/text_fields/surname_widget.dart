import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SurnameTextField extends StatelessWidget {
  const SurnameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.grey[200]!,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              style: GoogleFonts.aBeeZee(fontSize: 16),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Surname...',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
