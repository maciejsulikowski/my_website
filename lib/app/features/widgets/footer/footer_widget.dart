import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            AppLocalizations.of(context)!.rights,
            style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class GitHubButton extends StatefulWidget {
  GitHubButton({
    super.key,
  });

  @override
  State<GitHubButton> createState() => _GitHubButtonState();
}

class _GitHubButtonState extends State<GitHubButton> {
  final webSiteUri = Uri.parse('https://github.com/maciejsulikowski');
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: InkWell(
        onTap: () {
          launcher.launchUrl(webSiteUri);
        },
        child: Image(
          image: const AssetImage(
            'images/github.png',
          ),
          width: isHovered ? 70 : 50,
          height: isHovered ? 70 : 50,
        ),
      ),
    );
  }
}

class InstagramButton extends StatefulWidget {
  InstagramButton({
    super.key,
  });

  @override
  State<InstagramButton> createState() => _InstagramButtonState();
}

class _InstagramButtonState extends State<InstagramButton> {
  final webSiteUri = Uri.parse('https://www.instagram.com/suleymani_99/');

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: InkWell(
        onTap: () {
          launcher.launchUrl(webSiteUri);
        },
        child: Image(
          image: const AssetImage(
            'images/insta.png',
          ),
          width: isHovered ? 70 : 50,
          height: isHovered ? 70 : 50,
        ),
      ),
    );
  }
}

class FacebookButton extends StatefulWidget {
  FacebookButton({
    super.key,
  });

  @override
  State<FacebookButton> createState() => _FacebookButtonState();
}

class _FacebookButtonState extends State<FacebookButton> {
  final webSiteUri =
      Uri.parse('https://www.facebook.com/maciek.sulikowski.58/');

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: InkWell(
        onTap: () {
          launcher.launchUrl(webSiteUri);
        },
        child: Image(
          image: const AssetImage(
            'images/fb.png',
          ),
          width: isHovered ? 70 : 50,
          height: isHovered ? 70 : 50,
        ),
      ),
    );
  }
}

class LinekdInButton extends StatefulWidget {
  LinekdInButton({
    super.key,
  });

  @override
  State<LinekdInButton> createState() => _LinekdInButtonState();
}

class _LinekdInButtonState extends State<LinekdInButton> {
  final webSiteUri =
      Uri.parse('https://www.linkedin.com/in/maciej-sulikowski-703542286/');

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: InkWell(
        onTap: () {
          launcher.launchUrl(webSiteUri);
        },
        child: Image(
          image: const AssetImage(
            'images/linkedin.png',
          ),
          width: isHovered ? 70 : 50,
          height: isHovered ? 70 : 50,
        ),
      ),
    );
  }
}
