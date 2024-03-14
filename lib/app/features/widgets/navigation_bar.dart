import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: 100,
        right: 100,
        bottom: 10,
        top: 10,
      ),
      child: Row(
        children: [
          const Image(
            image: AssetImage('images/eagle.jpg'),
            width: 80,
            height: 80,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                    child: Text(
                  'Home',
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 24),
                )),
                const SizedBox(
                  width: 50,
                ),
                Center(
                    child: Text(
                  'About me',
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 24),
                )),
                const SizedBox(
                  width: 50,
                ),
                Center(
                    child: Text(
                  'Portfolio',
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 24),
                )),
                const SizedBox(
                  width: 50,
                ),
                Center(
                    child: Text(
                  'Contact',
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 24),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
