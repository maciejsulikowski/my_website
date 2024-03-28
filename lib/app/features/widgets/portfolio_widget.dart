import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/app_widget.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class PortfolioWidget extends StatelessWidget {
  PortfolioWidget({
    super.key,
  });

  final firstLink = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.maciejsulikowskii.lifediary_project');
  final secondLink = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.maciejsulikowski.day_quote');
  final thirdLink = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.maciejsulikowski.quiz_quest');
  final fourthLink = Uri.parse('https://github.com/maciejsulikowski');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppWidget(
                link: firstLink,
                packages:
                    'Technology used: BloC/Cubit, Firebase, Rest API, Dio, Freezed, Retrofit, GetIt, Injectable, and Unit Tests',
                image: 'images/icon.png',
                text: 'LifeDiary',
                secondText:
                    'A great app for writing your own diaries and for planning your workouts along with organizing them. The app has more features such as a day planner, calculating how much water to drink or a to do list.'),
            AppWidget(
                link: thirdLink,
                packages:
                    'Technology used: BloC/Cubit, Firebase, Rest API, Dio, Freezed, Retrofit, GetIt, Injectable, and Unit Tests',
                image: 'images/quizzz.png',
                text: 'QuizQuest',
                secondText:
                    'An application where you can test your knowledge, develop it in many interesting areas such as science, sports or many others, and have fun on top of that.'),
          ],
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppWidget(
                link: secondLink,
                packages:
                    'Technology used: BloC/Cubit, Firebase, Rest API, Dio, Freezed, Retrofit, GetIt, Injectable, and Unit Tests',
                image: 'images/dayquote.png',
                text: 'DayQuote',
                secondText:
                    'An app to generate quotes and get inspired! You can search for an author and see what citations he or she has been assigned.'),
            AppWidget(
                link: fourthLink,
                packages:
                    'Technology used: BloC/Cubit, Firebase, Rest API, Dio, Freezed, Retrofit, GetIt, Injectable, and Unit Tests',
                image: 'images/clouyde.png',
                text: 'WeatherApp',
                secondText:
                    'Advanced weather app with search engine for each city and 5-day forecasts. You can check it whenever you want.'),
          ],
        ),
        SizedBox(height: 50),
        SizedBox(
            width: double.infinity,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'All my projects are on my Github Profile  ⮕',
                  style: GoogleFonts.aBeeZee(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  width: 10,
                ),
                GitHubButton()
              ],
            )),
      ],
    );
  }
}

class GitHubButton extends StatelessWidget {
  GitHubButton({
    super.key,
  });
  final webSiteUri = Uri.parse('https://github.com/maciejsulikowski');

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launcher.launchUrl(webSiteUri);
      },
      child: const Image(
        image: AssetImage(
          'images/github.png',
        ),
        width: 50,
        height: 50,
      ),
    );
  }
}
