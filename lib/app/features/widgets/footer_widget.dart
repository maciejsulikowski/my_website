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
      child: Column(
        children: [
          Text(
            'Maciej Sulikowski',
            style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 24),
          ),
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialMediaAvatar(
                text: 'images/github.png',
              ),
              SocialMediaAvatar(
                text: 'images/linkedin.png',
              ),
              SocialMediaAvatar(
                text: 'images/fb.png',
              ),
              SocialMediaAvatar(
                text: 'images/insta.png',
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            '2024 All rights are reserved ©',
            style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class SocialMediaAvatar extends StatelessWidget {
  const SocialMediaAvatar({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Image(
        image: AssetImage(text),
      ),
    );
  }
}
