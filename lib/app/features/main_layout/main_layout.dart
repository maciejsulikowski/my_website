import 'package:flutter/material.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_second.dart';
import 'package:my_website/app/features/widgets/contact/contact_widget.dart';
import 'package:my_website/app/features/widgets/footer/footer_widget.dart';
import 'package:my_website/app/features/widgets/navigation/navigation_bar.dart';
import 'package:my_website/app/features/widgets/about_me/personal_widget.dart';
import 'package:my_website/app/features/widgets/portfolio/portfolio_widget.dart';
import 'package:my_website/app/features/widgets/side_bar.dart';

class MainLayout extends StatelessWidget {
  MainLayout({
    super.key,
  });

  final ScrollController scrollController = ScrollController();
  final List<GlobalKey> listOfKeys = List.generate(4, (_) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(255, 255, 255, 1),
                Color.fromRGBO(255, 255, 255, 1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 4,
                blurRadius: 10,
                offset: const Offset(0, 3),
              )
            ]),
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  PersonalWidget(
                      listOfKeys: listOfKeys,
                      scrollController: scrollController),
                  const SizedBox(
                    height: 50,
                  ),
                  SideBar(
                    text: 'About Me',
                    key: listOfKeys[1],
                  ),
                  const SizedBox(height: 50),
                  const AboutAppWidget(),
                  const SizedBox(height: 50),
                  const AboutAppWidgetSecond(),
                  const SizedBox(height: 50),
                  SideBar(
                    text: 'Portfolio',
                    key: listOfKeys[2],
                  ),
                  const SizedBox(height: 50),
                  PortfolioWidget(),
                  const SizedBox(
                    height: 50,
                  ),
                  SideBar(
                    text: 'Contact',
                    key: listOfKeys[3],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const ContactWidget(),
                  const SizedBox(
                    height: 50,
                  ),
                  const FooterWidget(),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: NavigatorBar(
                  listOfKeys: listOfKeys, scrollController: scrollController),
            ),
          ],
        ),
      ),
    );
  }
}
