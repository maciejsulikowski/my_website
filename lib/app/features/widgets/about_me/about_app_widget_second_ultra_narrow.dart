import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_second_container.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_second_container_narrow.dart';
import 'package:my_website/app/features/widgets/about_me/about_me_widget.dart';
import 'package:my_website/app/features/widgets/about_me/advantage_widget.dart';
import 'package:my_website/app/features/widgets/about_me/advantage_widget_wide.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutAppWidgetSecondNarrow extends StatelessWidget {
  const AboutAppWidgetSecondNarrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.all(20),
            height: 100,
            width: 1000,
            child: Text(
              AppLocalizations.of(context)!.why,
              style: GoogleFonts.aBeeZee(
                color: Colors.black,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            )),
        const SizedBox(height: 50),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdvantageWidget(
              text: AppLocalizations.of(context)!.mobile,
              image: 'images/mobile.png',
              secondText: AppLocalizations.of(context)!.flutter_mobile,
            ),
            SizedBox(
              height: 30,
            ),
            AdvantageWidget(
              text: AppLocalizations.of(context)!.web,
              image: 'images/web.png',
              secondText: AppLocalizations.of(context)!.flutter_web,
            ),
            SizedBox(
              height: 30,
            ),
            AdvantageWidget(
              text: AppLocalizations.of(context)!.ux,
              image: 'images/ux.png',
              secondText: AppLocalizations.of(context)!.flutter_ux,
            ),
          ],
        ),
        const SizedBox(height: 100),
        Text(
          AppLocalizations.of(context)!.help,
          style: GoogleFonts.aBeeZee(
            color: Colors.black,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 100),
        const AboutAppSecondWidgetContainerNarrow(),
      ],
    );
  }
}
