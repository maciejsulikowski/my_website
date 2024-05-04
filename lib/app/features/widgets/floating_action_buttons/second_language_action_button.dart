import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondLanguageActionButton extends StatefulWidget {
  const SecondLanguageActionButton({
    super.key,
  });

  @override
  State<SecondLanguageActionButton> createState() =>
      SecondLanguageActionButtonState();
}

class SecondLanguageActionButtonState
    extends State<SecondLanguageActionButton> {
  bool isClicked = false;

  void toogleButton() {
    isClicked = !isClicked;
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          setState(() {
            toogleButton();
          });
        },
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              child: Image(
                image: AssetImage(
                  isClicked ? 'images/great_britain.png' : 'images/poland.png',
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              isClicked ? 'EN' : 'PL',
              style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(
              width: 3,
            ),
            const Icon(
              Icons.keyboard_arrow_up,
              color: Colors.white,
            )
          ],
        ));
  }
}
