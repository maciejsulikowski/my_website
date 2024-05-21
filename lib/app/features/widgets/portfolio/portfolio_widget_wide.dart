import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget_wide.dart';
import 'package:my_website/app/features/widgets/portfolio/github_button.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PortfolioWidgetWide extends StatelessWidget {
  PortfolioWidgetWide({
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
            AppWidgetWide(
              link: firstLink,
              packages:
                  '${AppLocalizations.of(context)!.tech_used} BloC/Cubit, Firebase, Rest API, Dio, Freezed, Retrofit, GetIt, Injectable, and Unit Tests',
              image: 'images/icon.png',
              text: 'LifeDiary',
              secondText: AppLocalizations.of(context)!.life_diary,
            ),
            AppWidgetWide(
              link: thirdLink,
              packages:
                  '${AppLocalizations.of(context)!.tech_used} BloC/Cubit, Firebase, Rest API, Dio, Freezed, Retrofit, GetIt, Injectable, and Unit Tests',
              image: 'images/quizzz.png',
              text: 'QuizQuest',
              secondText: AppLocalizations.of(context)!.quiz_quest,
            ),
          ],
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppWidgetWide(
              link: secondLink,
              packages:
                  '${AppLocalizations.of(context)!.tech_used} BloC/Cubit, Firebase, Rest API, Dio, Freezed, Retrofit, GetIt, Injectable, and Unit Tests',
              image: 'images/dayquote.png',
              text: 'DayQuote',
              secondText: AppLocalizations.of(context)!.day_quote,
            ),
            AppWidgetWide(
              link: fourthLink,
              packages:
                  '${AppLocalizations.of(context)!.tech_used} BloC/Cubit, Firebase, Rest API, Dio, Freezed, Retrofit, GetIt, Injectable, and Unit Tests',
              image: 'images/clouyde.png',
              text: 'WeatherApp',
              secondText: AppLocalizations.of(context)!.weather_app,
            ),
          ],
        ),
        const SizedBox(height: 50),
        SizedBox(
            width: double.infinity,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.github_projects,
                  style: GoogleFonts.aBeeZee(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  width: 10,
                ),
                const GitHubButton()
              ],
            )),
      ],
    );
  }
}
