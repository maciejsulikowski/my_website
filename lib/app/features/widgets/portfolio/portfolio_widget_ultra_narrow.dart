import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget_narrow.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget_ultra_narrow.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget_wide.dart';
import 'package:my_website/app/features/widgets/portfolio/github_button.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PortfolioWidgetUltraNarrow extends StatelessWidget {
  PortfolioWidgetUltraNarrow({
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 50),
        AppWidgetUltraNarrow(
          link: firstLink,
          packages:
              '${AppLocalizations.of(context)!.tech_used} BloC/Cubit, Firebase, Rest API, Dio, Freezed, Retrofit, GetIt, Injectable, and Unit Tests',
          image: 'images/icon.png',
          text: 'LifeDiary',
          secondText: AppLocalizations.of(context)!.life_diary,
        ),
        const SizedBox(height: 50),
        AppWidgetUltraNarrow(
          link: thirdLink,
          packages:
              '${AppLocalizations.of(context)!.tech_used} BloC/Cubit, Firebase, Rest API, Dio, Freezed, Retrofit, GetIt, Injectable, and Unit Tests',
          image: 'images/quizzz.png',
          text: 'QuizQuest',
          secondText: AppLocalizations.of(context)!.quiz_quest,
        ),
        const SizedBox(height: 50),
        AppWidgetUltraNarrow(
          link: secondLink,
          packages:
              '${AppLocalizations.of(context)!.tech_used} BloC/Cubit, Firebase, Rest API, Dio, Freezed, Retrofit, GetIt, Injectable, and Unit Tests',
          image: 'images/dayquote.png',
          text: 'DayQuote',
          secondText: AppLocalizations.of(context)!.day_quote,
        ),
        const SizedBox(height: 50),
        AppWidgetUltraNarrow(
          link: fourthLink,
          packages:
              '${AppLocalizations.of(context)!.tech_used} BloC/Cubit, Firebase, Rest API, Dio, Freezed, Retrofit, GetIt, Injectable, and Unit Tests',
          image: 'images/clouyde.png',
          text: 'WeatherApp',
          secondText: AppLocalizations.of(context)!.weather_app,
        ),
        const SizedBox(height: 50),
        SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppLocalizations.of(context)!.github_projects,
                    style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
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
