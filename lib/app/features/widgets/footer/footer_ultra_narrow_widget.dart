import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/footer/footer_widget.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FooterUltraNarrowWidget extends StatelessWidget {
  const FooterUltraNarrowWidget({
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Maciej Sulikowski',
            style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 16),
          ),
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GitHubButton(),
              SizedBox(
                width: 10,
              ),
              InstagramButton(),
              SizedBox(
                width: 10,
              ),
              FacebookButton(),
              SizedBox(
                width: 10,
              ),
              LinekdInButton(),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            AppLocalizations.of(context)!.rights,
            style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
