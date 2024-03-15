import 'package:flutter/material.dart';
import 'package:my_website/app/features/widgets/about_app_widget.dart';
import 'package:my_website/app/features/widgets/contact_widget.dart';
import 'package:my_website/app/features/widgets/footer_widget.dart';
import 'package:my_website/app/features/widgets/navigation_bar.dart';
import 'package:my_website/app/features/widgets/personal_widget.dart';
import 'package:my_website/app/features/widgets/portfolio_widget.dart';
import 'package:my_website/app/features/widgets/side_bar.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: ListView(
          children: const [
            NavigatorBar(),
            SizedBox(
              height: 50,
            ),
            PersonalWidget(),
            SizedBox(
              height: 50,
            ),
            SideBar(text: 'About Me'),
            SizedBox(height: 50),
            AboutAppWidget(),
            SizedBox(height: 50),
            SideBar(text: 'Portfolio'),
            SizedBox(height: 50),
            PortfolioWidget(),
            SizedBox(
              height: 50,
            ),
            SideBar(text: 'Contact'),
            SizedBox(
              height: 50,
            ),
            ContactWidget(),
            SizedBox(
              height: 50,
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
