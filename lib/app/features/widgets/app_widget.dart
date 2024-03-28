import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class AppWidget extends StatefulWidget {
  const AppWidget({
    required this.text,
    required this.secondText,
    required this.image,
    required this.packages,
    required this.link,
    super.key,
  });

  final String text;
  final String secondText;
  final String image;
  final String packages;
  final Uri link;

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launcher.launchUrl(widget.link);
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovered = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: isHovered
              ? BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(53, 53, 53, 1),
                      Color.fromRGBO(41, 41, 41, 1),
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
                    ])
              : BoxDecoration(
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
          height: 700,
          width: 500,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                widget.text,
                style: GoogleFonts.aBeeZee(
                    color: isHovered ? Colors.white : Colors.black,
                    fontSize: 36),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 255, 255, 1),
                        Color.fromRGBO(200, 200, 200, 1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: Image(
                  image: AssetImage(widget.image),
                  width: isHovered ? 210 : 200,
                  height: isHovered ? 210 : 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  widget.secondText,
                  style: GoogleFonts.aBeeZee(
                      color: isHovered ? Colors.white : Colors.black,
                      fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  widget.packages,
                  style: GoogleFonts.aBeeZee(
                      color: isHovered ? Colors.white : Colors.black,
                      fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
