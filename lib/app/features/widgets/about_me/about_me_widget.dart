import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({
    required this.text,
    required this.secondText,
    required this.image,
    super.key,
  });

  final String text;
  final String secondText;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(246, 246, 246, 1),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 4,
              blurRadius: 10,
              offset: const Offset(0, 3),
            )
          ]),
      height: 600,
      width: 500,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            text,
            style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 36),
          ),
          const SizedBox(height: 20),
          Image(
            image: AssetImage(image),
            width: 200,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              secondText,
              style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
