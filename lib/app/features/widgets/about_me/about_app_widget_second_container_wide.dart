import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutAppSecondWidgetContainerWide extends StatefulWidget {
  const AboutAppSecondWidgetContainerWide({
    super.key,
  });

  @override
  State<AboutAppSecondWidgetContainerWide> createState() =>
      _AboutAppSecondWidgetContainerWideState();
}

class _AboutAppSecondWidgetContainerWideState
    extends State<AboutAppSecondWidgetContainerWide>
    with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
      duration: const Duration(milliseconds: 500), vsync: this);
  late final ScrollController _scrollController;
  double pixels = 0.0;

  late final Animation<double> _animation = CurvedAnimation(
    parent: _animationController,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        pixels = _scrollController.position.pixels;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('aboutAppSecondVisibilityKey'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction == 1) {
          _animationController.forward();
        } else {
          _animationController.reverse();
        }
      },
      child: FadeTransition(
        opacity: _animation,
        child: Container(
            padding: const EdgeInsets.all(20),
            height: 200,
            width: 850,
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
                    Text(
                      '-${AppLocalizations.of(context)!.help_1}',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      width: 40,
                      height: 40,
                      child: Image(image: AssetImage('images/rocket.png')),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '-${AppLocalizations.of(context)!.help_2}',
                      style: GoogleFonts.aBeeZee(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      width: 40,
                      height: 40,
                      child: Image(image: AssetImage('images/poke.png')),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '-${AppLocalizations.of(context)!.help_3}',
                      style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      width: 40,
                      height: 40,
                      child: Image(image: AssetImage('images/weeb.png')),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '-${AppLocalizations.of(context)!.help_4}',
                      style: GoogleFonts.aBeeZee(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      width: 40,
                      height: 40,
                      child: Image(image: AssetImage('images/email.png')),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
