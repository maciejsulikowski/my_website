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

class GitHubNarrowButton extends StatefulWidget {
  GitHubNarrowButton({
    super.key,
  });

  @override
  State<GitHubNarrowButton> createState() => _GitHubNarrowButtonState();
}

class _GitHubNarrowButtonState extends State<GitHubNarrowButton> {
  final webSiteUri = Uri.parse('https://github.com/maciejsulikowski');
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        launcher.launchUrl(webSiteUri);
      },
      child: Image(
        image: const AssetImage(
          'images/github.png',
        ),
        color: isHovered ? Colors.black.withOpacity(0.5) : null,
        width: 30,
        height: 30,
      ),
    );
  }
}

class InstagramNarrowButton extends StatefulWidget {
  InstagramNarrowButton({
    super.key,
  });

  @override
  State<InstagramNarrowButton> createState() => _InstagramNarrowButtonState();
}

class _InstagramNarrowButtonState extends State<InstagramNarrowButton> {
  final webSiteUri = Uri.parse('https://www.instagram.com/suleymani_99/');

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launcher.launchUrl(webSiteUri);
      },
      child: Image(
        image: const AssetImage(
          'images/insta.png',
        ),
        color: isHovered ? Colors.pink.withOpacity(0.5) : null,
        width: 30,
        height: 30,
      ),
    );
  }
}

class FacebookNarrowButton extends StatefulWidget {
  FacebookNarrowButton({
    super.key,
  });

  @override
  State<FacebookNarrowButton> createState() => _FacebookNarrowButtonState();
}

class _FacebookNarrowButtonState extends State<FacebookNarrowButton> {
  final webSiteUri =
      Uri.parse('https://www.facebook.com/maciek.sulikowski.58/');

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launcher.launchUrl(webSiteUri);
      },
      child: Image(
        image: const AssetImage(
          'images/ffb.png',
        ),
        color: isHovered ? Colors.blue.withOpacity(0.5) : null,
        width: 30,
        height: 30,
      ),
    );
  }
}

class LinekdInNarrowButton extends StatefulWidget {
  LinekdInNarrowButton({
    super.key,
  });

  @override
  State<LinekdInNarrowButton> createState() => _LinekdInNarrowButtonState();
}

class _LinekdInNarrowButtonState extends State<LinekdInNarrowButton> {
  final webSiteUri =
      Uri.parse('https://www.linkedin.com/in/maciej-sulikowski-703542286/');

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launcher.launchUrl(webSiteUri);
      },
      child: Image(
        image: const AssetImage(
          'images/linki.png',
        ),
        color: isHovered ? Colors.blue.withOpacity(0.5) : null,
        width: 30,
        height: 30,
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
          color: isHovered ? Colors.black.withOpacity(0.5) : null,
          width: 50,
          height: 50,
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
          color: isHovered ? Colors.pink.withOpacity(0.5) : null,
          width: 50,
          height: 50,
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
            'images/ffb.png',
          ),
          color: isHovered ? Colors.blue.withOpacity(0.5) : null,
          width: 50,
          height: 50,
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
            'images/linki.png',
          ),
          color: isHovered ? Colors.blue.withOpacity(0.5) : null,
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
