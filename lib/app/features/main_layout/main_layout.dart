import 'package:flutter/material.dart';
import 'package:my_website/app/features/widgets/navigation_bar.dart';
import 'package:my_website/main.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
        children: [
          NavigatorBar(),
          SizedBox(
            height: 50,
          ),
          PersonalWidget(),
        ],
      ),
    );
  }
}
