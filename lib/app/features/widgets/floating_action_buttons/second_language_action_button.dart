import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondLanguageActionButton extends StatefulWidget {
  SecondLanguageActionButton({
    required this.setLocale,
    super.key,
  });

  final Function(Locale) setLocale;

  @override
  State<SecondLanguageActionButton> createState() =>
      SecondLanguageActionButtonState();
}

class SecondLanguageActionButtonState
    extends State<SecondLanguageActionButton> {
  bool isExpanded = false;
  String selectedLanguage = 'PL';

  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  void selectLanguage(String language) {
    setState(() {
      if (selectedLanguage != language) {
        selectedLanguage = language;
        isExpanded = false;
        widget.setLocale(Locale(language.toLowerCase()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isExpanded && selectedLanguage == 'PL') ...[
          const SizedBox(height: 5),
          SizedBox(
            height: 40,
            width: 100,
            child: FloatingActionButton(
              onPressed: () => selectLanguage('EN'),
              backgroundColor: Colors.black,
              shape: const RoundedRectangleBorder(),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Image(
                      image: AssetImage(
                        'images/great_britain.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'EN',
                    style:
                        GoogleFonts.aBeeZee(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
        ],
        if (isExpanded && selectedLanguage == 'EN') ...[
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 40,
            width: 100,
            child: FloatingActionButton(
              onPressed: () => selectLanguage('PL'),
              backgroundColor: Colors.black,
              shape: const RoundedRectangleBorder(),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: const Image(
                      image: AssetImage(
                        'images/poland.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'PL',
                    style:
                        GoogleFonts.aBeeZee(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
        SizedBox(
          height: 40,
          width: 100,
          child: FloatingActionButton(
              onPressed: () {
                toggleExpansion();
              },
              backgroundColor: Colors.black,
              shape: const RoundedRectangleBorder(),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Image(
                      image: AssetImage(
                        selectedLanguage == 'EN'
                            ? 'images/great_britain.png'
                            : 'images/poland.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    selectedLanguage,
                    style:
                        GoogleFonts.aBeeZee(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_up,
                    color: Colors.white,
                  )
                ],
              )),
        ),
      ],
    );
  }
}
