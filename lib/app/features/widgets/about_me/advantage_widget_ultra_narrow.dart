import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/about_me/about_me_widget.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget.dart';

class AdvantageWidgetUltraNarrow extends StatefulWidget {
  const AdvantageWidgetUltraNarrow({
    required this.text,
    required this.secondText,
    required this.image,
    super.key,
  });

  final String text;
  final String secondText;
  final String image;

  @override
  State<AdvantageWidgetUltraNarrow> createState() =>
      _AdvantageWidgetUltraNarrowState();
}

class _AdvantageWidgetUltraNarrowState
    extends State<AdvantageWidgetUltraNarrow> {
  bool isHovered = true;
  double rotationAngle = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 450,
      width: 300,
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('images/flutter.png'),
                width: 100,
                height: 100,
              ),
              Text(
                '+',
                style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 22),
              ),
              const SizedBox(
                width: 10,
              ),
              Image(
                image: AssetImage(widget.image),
                width: 60,
                height: 60,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            widget.text,
            style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 22),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              widget.secondText,
              style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
