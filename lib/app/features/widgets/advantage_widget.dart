import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/about_me_widget.dart';
import 'package:my_website/app/features/widgets/app_widget.dart';

class AdvantageWidget extends StatefulWidget {
  const AdvantageWidget({
    required this.text,
    required this.secondText,
    required this.image,
    super.key,
  });

  final String text;
  final String secondText;
  final String image;

  @override
  State<AdvantageWidget> createState() => _AdvantageWidgetState();
}

class _AdvantageWidgetState extends State<AdvantageWidget> {
  bool isHovered = true;
  double rotationAngle = 0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
          rotationAngle = 1;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
          rotationAngle = 0;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 500,
        width: 400,
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
            ],
            border: Border.all(
              color: isHovered ? Colors.black : Colors.grey,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12)),
        transform:
            Matrix4.rotationZ((isHovered ? rotationAngle * 3.14 / 180 : 0)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/flutter.png'),
                  width: 100,
                  height: 100,
                ),
                Text(
                  '+',
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 22),
                ),
                SizedBox(
                  width: 10,
                ),
                Image(
                  image: AssetImage(widget.image),
                  width: 80,
                  height: 80,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              widget.text,
              style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 36),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                widget.secondText,
                style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
