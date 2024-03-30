import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_second_container.dart';
import 'package:my_website/app/features/widgets/about_me/about_me_widget.dart';
import 'package:my_website/app/features/widgets/about_me/advantage_widget.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget.dart';

class AboutAppWidgetSecond extends StatelessWidget {
  const AboutAppWidgetSecond({
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
              '''Why am I using Flutter?''',
              style: GoogleFonts.aBeeZee(
                color: Colors.black,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            )),
        const SizedBox(height: 50),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdvantageWidget(
              text: 'Mobile Development',
              image: 'images/mobile.png',
              secondText:
                  'Flutter is great for building mobile apps. With it, we can write one code for Android and IOS without losing too much performance. It saves a lot of time and money. ',
            ),
            SizedBox(
              width: 50,
            ),
            AdvantageWidget(
              text: 'Web Development',
              image: 'images/web.png',
              secondText:
                  'Flutter is also great for websites. With the power of this framework, you can create a site like this one and many, many other, more advanced web applications.',
            ),
            SizedBox(
              width: 50,
            ),
            AdvantageWidget(
              text: 'UX & UI',
              image: 'images/ux.png',
              secondText:
                  'Flutter allows you to create advanced views and beautiful User interfaces and User experiences that will delight any user, and on top of that, everything runs very smoothly. Flutter is the future!',
            ),
          ],
        ),
        const SizedBox(height: 100),
        Text(
          'What I want to achieve?',
          style: GoogleFonts.aBeeZee(
            color: Colors.black,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 100),
        const AboutAppSecondWidgetContainer(),
      ],
    );
  }
}


