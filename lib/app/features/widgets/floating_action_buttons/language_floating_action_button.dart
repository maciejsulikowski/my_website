import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_second.dart';
import 'package:my_website/app/features/widgets/contact/contact_widget.dart';
import 'package:my_website/app/features/widgets/footer/footer_widget.dart';
import 'package:my_website/app/features/widgets/navigation/navigation_bar.dart';
import 'package:my_website/app/features/widgets/about_me/personal_widget.dart';
import 'package:my_website/app/features/widgets/portfolio/portfolio_widget.dart';
import 'package:my_website/app/features/widgets/side_bar.dart';


class LanguageFloatingActionButton extends StatelessWidget {
  const LanguageFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              child: const Image(
                image: AssetImage(
                  'images/poland.png',
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'PL',
              style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(
              width: 3,
            ),
            const Icon(
              Icons.keyboard_arrow_up,
              color: Colors.white,
            )
          ],
        ));
  }
}
