import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_narrow.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_second.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_second_narrow.dart';
import 'package:my_website/app/features/widgets/about_me/narrow_personal_widget.dart';
import 'package:my_website/app/features/widgets/contact/contact_widget.dart';
import 'package:my_website/app/features/widgets/contact/contact_widget_narrow.dart';

import 'package:my_website/app/features/widgets/floating_action_buttons/second_language_action_button.dart';
import 'package:my_website/app/features/widgets/floating_action_buttons/up_arrow_floating_action_button.dart';
import 'package:my_website/app/features/widgets/footer/footer_widget.dart';
import 'package:my_website/app/features/widgets/navigation/narrow_navigaton_bar.dart';
import 'package:my_website/app/features/widgets/navigation/navigation_bar.dart';
import 'package:my_website/app/features/widgets/about_me/personal_widget.dart';
import 'package:my_website/app/features/widgets/portfolio/portfolio_widget.dart';
import 'package:my_website/app/features/widgets/portfolio/portfolio_widget_narrow.dart';
import 'package:my_website/app/features/widgets/side_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NarrowMainLayout extends StatefulWidget {
  const NarrowMainLayout({
    super.key,
    required this.setLocale,
    required this.sectionKeys,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final Function(Locale) setLocale;
  final ScrollController _scrollController;
  final List<GlobalKey> sectionKeys;

  @override
  State<NarrowMainLayout> createState() => _NarrowMainLayoutState();
}

class _NarrowMainLayoutState extends State<NarrowMainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.list_rounded));
          },
        ),
      ),
      drawer: Drawer(
        child: NarrowNavigatorBar(
            listOfKeys: widget.sectionKeys,
            scrollController: widget._scrollController),
      ),
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
                listOfKeys: widget.sectionKeys,
                scrollController: widget._scrollController,
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
              controller: widget._scrollController,
              child: Column(
                children: [
                  SizedBox(
                    key: widget.sectionKeys[0],
                    height: 50,
                  ),
                  NarrowPersonalWidget(
                      listOfKeys: widget.sectionKeys,
                      scrollController: widget._scrollController),
                  const SizedBox(
                    height: 50,
                  ),
                  SideBar(
                    text: AppLocalizations.of(context)!.about_me,
                    key: widget.sectionKeys[1],
                  ),
                  const SizedBox(height: 50),
                  const AboutAppWidgetNarrow(),
                  const SizedBox(height: 50),
                  const AboutAppWidgetSecondNarrow(),
                  const SizedBox(height: 50),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 350,
                    width: 400,
                    child: const Image(
                      image: AssetImage('images/cesar.png'),
                    ),
                  ),
                  const SizedBox(height: 50),
                  SideBar(
                    text: AppLocalizations.of(context)!.portfolio,
                    key: widget.sectionKeys[2],
                  ),
                  const SizedBox(height: 50),
                  PortfolioWidgetNarrow(),
                  const SizedBox(
                    height: 50,
                  ),
                  SideBar(
                    text: AppLocalizations.of(context)!.contact,
                    key: widget.sectionKeys[3],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const ContactWidgetNarrow(),
                  const SizedBox(
                    height: 50,
                  ),
                  const FooterWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
