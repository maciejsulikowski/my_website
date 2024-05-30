import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class NarrowNavigatorBar extends StatefulWidget {
  const NarrowNavigatorBar({
    required this.listOfKeys,
    required this.scrollController,
    super.key,
  });

  final ScrollController scrollController;
  final List<GlobalKey> listOfKeys;

  @override
  State<NarrowNavigatorBar> createState() => _NarrowNavigatorBarState();
}

class _NarrowNavigatorBarState extends State<NarrowNavigatorBar> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;

  void onEntered(int index, bool isSelected) {
    setState(() {
      if (index == 1) {
        isSelected1 = isSelected;
      } else if (index == 2) {
        isSelected2 = isSelected;
      } else if (index == 3) {
        isSelected3 = isSelected;
      } else if (index == 4) {
        isSelected4 = isSelected;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    void scrollToSection(int sectionIndex) {
      final RenderBox renderBox =
          widget.listOfKeys[sectionIndex].currentContext!.findRenderObject()
              as RenderBox;
      final position = renderBox.localToGlobal(Offset.zero).dy;
      final currentOffset = widget.scrollController.offset;
      final targetPosition = position + currentOffset + 75;
      widget.scrollController.animateTo(
        targetPosition,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(247, 250, 252, 1),
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
      padding: const EdgeInsets.only(
        left: 50,
        right: 50,
        bottom: 10,
        top: 10,
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              html.window.location.reload();
            },
            child: const Image(
              image: AssetImage('images/eagle.jpg'),
              width: 80,
              height: 80,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          MouseRegion(
            onEnter: (event) => onEntered(1, true),
            onExit: (event) => onEntered(1, false),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              constraints: BoxConstraints(maxWidth: 200),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSelected1 ? Colors.black : Colors.white,
                ),
                onPressed: () {
                  scrollToSection(1);
                },
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.about_me,
                    style: GoogleFonts.aBeeZee(
                        color: isSelected1 ? Colors.white : Colors.black,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          MouseRegion(
            onEnter: (event) => onEntered(2, true),
            onExit: (event) => onEntered(2, false),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSelected2 ? Colors.black : Colors.white,
                ),
                onPressed: () {
                  scrollToSection(2);
                },
                child: Center(
                    child: Text(
                  AppLocalizations.of(context)!.portfolio,
                  style: GoogleFonts.aBeeZee(
                      color: isSelected2 ? Colors.white : Colors.black,
                      fontSize: 20),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          MouseRegion(
            onEnter: (event) => onEntered(3, true),
            onExit: (event) => onEntered(3, false),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSelected3 ? Colors.black : Colors.white,
                ),
                onPressed: () {
                  scrollToSection(3);
                },
                child: Center(
                    child: Text(
                  AppLocalizations.of(context)!.contact,
                  style: GoogleFonts.aBeeZee(
                      color: isSelected3 ? Colors.white : Colors.black,
                      fontSize: 20),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
