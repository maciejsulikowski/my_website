import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutAppSecondWidgetContainer extends StatefulWidget {
  const AboutAppSecondWidgetContainer({
    super.key,
  });

  @override
  State<AboutAppSecondWidgetContainer> createState() =>
      _AboutAppSecondWidgetContainerState();
}

class _AboutAppSecondWidgetContainerState
    extends State<AboutAppSecondWidgetContainer> with TickerProviderStateMixin {
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
                    '''My dream is to create the best possible value for people and improve their lives. Thanks to Flutter, I know this is possible and I want to become a master in this area. In contrast, my current goal is to get my first job as a junior.''',
                    style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '💪',
                  style:
                      GoogleFonts.aBeeZee(fontSize: 140, color: Colors.amber),
                )
              ],
            )),
      ),
    );
  }
}
