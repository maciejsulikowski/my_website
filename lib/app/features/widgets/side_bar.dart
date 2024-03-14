import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: 100,
        right: 100,
        bottom: 40,
        top: 40,
      ),
      child: Center(
          child: Text(
        text,
        style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 24),
      )),
    );
  }
}
