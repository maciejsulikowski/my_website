import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/about_me_widget.dart';
import 'package:my_website/app/features/widgets/advantage_widget.dart';
import 'package:my_website/app/features/widgets/app_widget.dart';

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
        Container(
            padding: const EdgeInsets.all(20),
            height: 300,
            width: 1000,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(255, 255, 255, 1),
                    Color.fromRGBO(246, 246, 246, 1),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Text(
                    '''My dream is to create the best possible value for people and improve their lives. Thanks to Flutter, I know this is possible and I want to become a master in this area. In contrast, my current goal is to get my first job as a junior.''',
                    style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '💪',
                  style:
                      GoogleFonts.aBeeZee(fontSize: 140, color: Colors.amber),
                )
              ],
            )),
      ],
    );
  }
}
