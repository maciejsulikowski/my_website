import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/about_me/about_me_widget.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutAppWidgetNarrowUltra extends StatefulWidget {
  const AboutAppWidgetNarrowUltra({
    super.key,
  });

  @override
  State<AboutAppWidgetNarrowUltra> createState() =>
      _AboutAppWidgetNarrowStateUltra();
}

class _AboutAppWidgetNarrowStateUltra extends State<AboutAppWidgetNarrowUltra>
    with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
      duration: const Duration(milliseconds: 500), vsync: this);

  double pixels = 0.0;

  late final Animation<double> _animation = CurvedAnimation(
    parent: _animationController,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('aboutAppVisibilityKey'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction == 1) {
          _animationController.forward();
        } else {
          _animationController.reverse();
        }
      },
      child: FadeTransition(
        opacity: _animation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(20),
                height: 450,
                width: 350,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            '-${AppLocalizations.of(context)!.i_am_student}',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                          height: 40,
                          child: Image(image: AssetImage('images/student.png')),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            '-${AppLocalizations.of(context)!.i_am_student_1}',
                            style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                          height: 40,
                          child:
                              Image(image: AssetImage('images/engineer.png')),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            '-${AppLocalizations.of(context)!.i_am_student_2}',
                            style: GoogleFonts.aBeeZee(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                          height: 40,
                          child: Image(image: AssetImage('images/flutter.png')),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            '-${AppLocalizations.of(context)!.i_am_student_3}',
                            style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                          height: 40,
                          child: Image(image: AssetImage('images/cashm.png')),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            '-${AppLocalizations.of(context)!.i_am_student_4}',
                            style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                          height: 40,
                          child:
                              Image(image: AssetImage('images/football.png')),
                        ),
                      ],
                    ),
                  ],
                )),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
