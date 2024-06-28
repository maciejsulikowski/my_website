import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_second_container.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_second_container_narrow.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_second_container_ultra_narrow.dart';
import 'package:my_website/app/features/widgets/about_me/about_me_widget.dart';
import 'package:my_website/app/features/widgets/about_me/advantage_widget.dart';
import 'package:my_website/app/features/widgets/about_me/advantage_widget_ultra_narrow.dart';
import 'package:my_website/app/features/widgets/about_me/advantage_widget_wide.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutAppWidgetSecondNarrowUltra extends StatelessWidget {
  const AboutAppWidgetSecondNarrowUltra({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 100),
          height: 400,
          width: 350,
          child: const Image(
            image: AssetImage('images/smilemaciej.jpg'),
          ),
        ),
        Container(
            padding: const EdgeInsets.all(20),
            height: 100,
            width: 500,
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
            AdvantageWidgetUltraNarrow(
              text: AppLocalizations.of(context)!.mobile,
              image: 'images/mobile.png',
              secondText: AppLocalizations.of(context)!.flutter_mobile,
            ),
            SizedBox(
              height: 30,
            ),
            AdvantageWidgetUltraNarrow(
              text: AppLocalizations.of(context)!.web,
              image: 'images/web.png',
              secondText: AppLocalizations.of(context)!.flutter_web,
            ),
            SizedBox(
              height: 30,
            ),
            AdvantageWidgetUltraNarrow(
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
        const AboutAppSecondWidgetContainerUltraNarrow(),
      ],
    );
  }
}
