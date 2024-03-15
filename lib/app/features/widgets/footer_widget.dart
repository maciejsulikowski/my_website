import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

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
        'Maciej Sulikowski',
        style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 24),
      )),
    );
  }
}
