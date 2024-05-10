import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_second.dart';
import 'package:my_website/app/features/widgets/contact/contact_widget.dart';

import 'package:my_website/app/features/widgets/floating_action_buttons/second_language_action_button.dart';
import 'package:my_website/app/features/widgets/floating_action_buttons/up_arrow_floating_action_button.dart';
import 'package:my_website/app/features/widgets/footer/footer_widget.dart';
import 'package:my_website/app/features/widgets/navigation/navigation_bar.dart';
import 'package:my_website/app/features/widgets/about_me/personal_widget.dart';
import 'package:my_website/app/features/widgets/portfolio/portfolio_widget.dart';
import 'package:my_website/app/features/widgets/side_bar.dart';

class MainLayout extends StatefulWidget {
  MainLayout({
    super.key,
    required this.setLocale,
  });

  final Function(Locale) setLocale;

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final ScrollController scrollController = ScrollController();

  final List<GlobalKey> listOfKeys = List.generate(4, (_) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SecondLanguageActionButton(
                  setLocale: widget.setLocale,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              UpArrowFloatingActionButton(
                listOfKeys: listOfKeys,
                scrollController: scrollController,
              ),
            ],
          ),
        ],
      ),
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
                  SizedBox(
                    key: listOfKeys[0],
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

// class ButtonWidget extends StatelessWidget {
//   const ButtonWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 40,
//       width: 100,
//       child: SecondLanguageActionButton(),
//     );
//   }
// }
