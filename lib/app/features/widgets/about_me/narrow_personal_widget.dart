import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_website/app/features/widgets/footer/footer_widget.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class NarrowPersonalWidget extends StatefulWidget {
  const NarrowPersonalWidget({
    required this.listOfKeys,
    required this.scrollController,
    super.key,
  });

  final ScrollController scrollController;
  final List<GlobalKey> listOfKeys;

  @override
  State<NarrowPersonalWidget> createState() => _NarrowPersonalWidgetState();
}

class _NarrowPersonalWidgetState extends State<NarrowPersonalWidget>
    with TickerProviderStateMixin {
  bool isHoveredFirst = false;
  bool isHoveredSecond = false;
  late AnimationController animationController;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  final webSiteUri = Uri.parse(
      'https://drive.google.com/file/d/1As9S5O8EOXsk1APjk2jRct4SWt3515Rw/view?usp=drive_link');
  @override
  Widget build(BuildContext context) {
    void scrollToSection(int sectionIndex) {
      final RenderBox renderBox =
          widget.listOfKeys[sectionIndex].currentContext!.findRenderObject()
              as RenderBox;
      final position = renderBox.localToGlobal(Offset.zero).dy;
      final currentOffset = widget.scrollController.offset;
      final targetPosition = position + currentOffset + 75;
      widget.scrollController.animateTo(
        targetPosition,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 450,
          width: 500,
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.hi_there,
                      style: GoogleFonts.aBeeZee(
                          color: Colors.black, fontSize: 24),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      width: 40,
                      height: 40,
                      child: Lottie.asset('images/heyAnimation.json'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  '${AppLocalizations.of(context)!.my_name} Maciej Sulikowski',
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 30),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.one,
                      style: GoogleFonts.aBeeZee(
                          color: Colors.black, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    AnimatedTextKit(
                      isRepeatingAnimation: true,
                      repeatForever: true,
                      animatedTexts: [
                        TyperAnimatedText(
                          'Flutter Developer',
                          textStyle: GoogleFonts.aBeeZee(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        TyperAnimatedText(
                          'Mobile Developer',
                          textStyle: GoogleFonts.aBeeZee(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        TyperAnimatedText(
                          'Web Developer',
                          textStyle: GoogleFonts.aBeeZee(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        TyperAnimatedText(
                          'Salesman',
                          textStyle: GoogleFonts.aBeeZee(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  AppLocalizations.of(context)!.guy,
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          isHoveredFirst = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          isHoveredFirst = false;
                        });
                      },
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                isHoveredFirst ? Colors.black : Colors.white,
                          ),
                          onPressed: () {
                            scrollToSection(1);
                          },
                          child: Text(
                            AppLocalizations.of(context)!.who,
                            style: GoogleFonts.aBeeZee(
                                color: isHoveredFirst
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          isHoveredSecond = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          isHoveredSecond = false;
                        });
                      },
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                isHoveredSecond ? Colors.black : Colors.white,
                          ),
                          onPressed: () {
                            launcher.launchUrl(webSiteUri);
                          },
                          child: Text(
                            AppLocalizations.of(context)!.my_cv,
                            style: GoogleFonts.aBeeZee(
                                color: isHoveredSecond
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GitHubButton(),
                    const SizedBox(
                      width: 20,
                    ),
                    InstagramButton(),
                    const SizedBox(
                      width: 20,
                    ),
                    FacebookButton(),
                    const SizedBox(
                      width: 20,
                    ),
                    LinekdInButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 50),
          height: 500,
          width: 400,
          child: ScaleTransition(
            scale: animation,
            child: const Image(
              image: AssetImage('images/maj.png'),
              width: 80,
              height: 80,
            ),
          ),
        ),
      ],
    );
  }
}
