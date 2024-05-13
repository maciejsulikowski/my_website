import 'package:flutter/material.dart';
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(20),
                height: 300,
                width: 1000,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.i_am_student,
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '👋',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 140, color: Colors.amber),
                    )
                  ],
                )),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
