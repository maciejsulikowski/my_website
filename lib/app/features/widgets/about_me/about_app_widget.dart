import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/about_me/about_me_widget.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutAppWidget extends StatefulWidget {
  const AboutAppWidget({
    super.key,
  });

  @override
  State<AboutAppWidget> createState() => _AboutAppWidgetState();
}

class _AboutAppWidgetState extends State<AboutAppWidget>
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 500,
                  width: 500,
                  child: ScaleTransition(
                    scale: _animation,
                    child: const Image(
                      image: AssetImage('images/smilemaciej.jpg'),
                      width: 600,
                      height: 600,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                    padding: const EdgeInsets.all(20),
                    height: 400,
                    width: 600,
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
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                '-${AppLocalizations.of(context)!.i_am_student}',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                              height: 40,
                              child: Image(
                                  image: AssetImage('images/student.png')),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                '-${AppLocalizations.of(context)!.i_am_student_1}',
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                              height: 40,
                              child: Image(
                                  image: AssetImage('images/engineer.png')),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                '-${AppLocalizations.of(context)!.i_am_student_2}',
                                style: GoogleFonts.aBeeZee(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                              height: 40,
                              child: Image(
                                  image: AssetImage('images/flutter.png')),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                '-${AppLocalizations.of(context)!.i_am_student_3}',
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                              height: 40,
                              child:
                                  Image(image: AssetImage('images/cashm.png')),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                '-${AppLocalizations.of(context)!.i_am_student_4}',
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                              height: 40,
                              child: Image(
                                  image: AssetImage('images/football.png')),
                            ),
                          ],
                        ),
                      ],
                    )),
                const SizedBox(width: 30),
              ],
            ),
            // const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
