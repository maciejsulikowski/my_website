import 'package:flutter/material.dart';
import 'package:my_website/app/features/widgets/app_widget.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppWidget(
                image: 'images/icon.png',
                text: 'LifeDiary',
                secondText:
                    'A great app for writing your own diaries and for planning your workouts along with organizing them. The app has more features such as a day planner, calculating how much water to drink or a to do list.'),
            AppWidget(
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
                image: 'images/dayquote.png',
                text: 'DayQuote',
                secondText:
                    'An app to generate quotes and get inspired! You can search for an author and see what citations he or she has been assigned.'),
            AppWidget(
                image: 'images/clouyde.png',
                text: 'WeatherApp',
                secondText:
                    'Advanced weather app with search engine for each city and 5-day forecasts. You can check it whenever you want.'),
          ],
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
