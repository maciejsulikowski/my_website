import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GitHubButton(),
              InstagramButton(),
              FacebookButton(),
              LinekdInButton(),
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

class GitHubButton extends StatelessWidget {
  GitHubButton({
    super.key,
  });
  final webSiteUri = Uri.parse('https://github.com/maciejsulikowski');

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launcher.launchUrl(webSiteUri);
      },
      child: const Image(
        image: AssetImage(
          'images/github.png',
        ),
        width: 50,
        height: 50,
      ),
    );
  }
}

class InstagramButton extends StatelessWidget {
  InstagramButton({
    super.key,
  });
  final webSiteUri = Uri.parse('https://www.instagram.com/suleymani_99/');

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launcher.launchUrl(webSiteUri);
      },
      child: const Image(
        image: AssetImage(
          'images/insta.png',
        ),
        width: 50,
        height: 50,
      ),
    );
  }
}

class FacebookButton extends StatelessWidget {
  FacebookButton({
    super.key,
  });
  final webSiteUri =
      Uri.parse('https://www.facebook.com/maciek.sulikowski.58/');

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launcher.launchUrl(webSiteUri);
      },
      child: const Image(
        image: AssetImage(
          'images/fb.png',
        ),
        width: 50,
        height: 50,
      ),
    );
  }
}

class LinekdInButton extends StatelessWidget {
  LinekdInButton({
    super.key,
  });
  final webSiteUri =
      Uri.parse('https://www.linkedin.com/in/maciej-sulikowski-703542286/');

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launcher.launchUrl(webSiteUri);
      },
      child: const Image(
        image: AssetImage(
          'images/linkedin.png',
        ),
        width: 50,
        height: 50,
      ),
    );
  }
}
