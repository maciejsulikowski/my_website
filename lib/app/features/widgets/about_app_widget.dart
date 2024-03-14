import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/about_me_widget.dart';
import 'package:my_website/app/features/widgets/app_widget.dart';

class AboutAppWidget extends StatelessWidget {
  const AboutAppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
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
                    '''Hi, I am 24 years old IT student and in my programming journey, I have already created 4 applications and 1 website in Flutter, of which I have already published 2 applications in the Google Play Store. I am currently improving my skills by  creating another application and trying to upgrade skills and be better every day''',
                    style:
                        GoogleFonts.aBeeZee(color: Colors.black, fontSize: 24),
                  ),
                ),
                Text(
                  '👋',
                  style: GoogleFonts.aBeeZee(fontSize: 140),
                )
              ],
            )),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AboutMeWidget(
                image: 'images/icon.png',
                text: 'LifeDiary',
                secondText:
                    'A great app for writing your own diaries and for planning your workouts along with organizing them. The app has more features such as a day planner, calculating how much water to drink or a to do list.'),
            AboutMeWidget(
                image: 'images/quizzz.png',
                text: 'QuizQuest',
                secondText:
                    'An application where you can test your knowledge, develop it in many interesting areas such as science, sports or many others, and have fun on top of that.'),
          ],
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
