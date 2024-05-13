
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class GitHubButton extends StatefulWidget {
  const GitHubButton({
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
