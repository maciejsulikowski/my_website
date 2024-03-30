import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:lottie/lottie.dart';

class PersonalWidget extends StatefulWidget {
  const PersonalWidget({
    required this.listOfKeys,
    required this.scrollController,
    super.key,
  });

  final ScrollController scrollController;
  final List<GlobalKey> listOfKeys;

  @override
  State<PersonalWidget> createState() => _PersonalWidgetState();
}

class _PersonalWidgetState extends State<PersonalWidget> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    void scrollToSection(int sectionIndex) {
      final RenderBox renderBox =
          widget.listOfKeys[sectionIndex].currentContext!.findRenderObject()
              as RenderBox;
      final position = renderBox.localToGlobal(Offset.zero).dy;
      final currentOffset = widget.scrollController.offset;
      final targetPosition = position + currentOffset;
      widget.scrollController.animateTo(
        targetPosition,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 700,
          width: 600,
          child: Padding(
            padding: const EdgeInsets.only(top: 180.0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '''Hi there, Welcome to my space''',
                      style: GoogleFonts.aBeeZee(
                          color: Colors.black, fontSize: 24),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      width: 50,
                      height: 50,
                      child: Lottie.asset('images/heyAnimation.json'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  '''I'm Maciej Sulikowski''',
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 40),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      '''A''',
                      style: GoogleFonts.aBeeZee(
                          color: Colors.black, fontSize: 24),
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
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        TyperAnimatedText(
                          'Mobile Developer',
                          textStyle: GoogleFonts.aBeeZee(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        TyperAnimatedText(
                          'Web Developer',
                          textStyle: GoogleFonts.aBeeZee(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  '''I am that guy who loves to create value for others in every possible form. Let's get to know each other better! ''',
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                MouseRegion(
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
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isHovered ? Colors.black : Colors.white,
                      ),
                      onPressed: () {
                        scrollToSection(1);
                      },
                      child: Text(
                        'Who am I ?',
                        style: GoogleFonts.aBeeZee(
                            color: isHovered ? Colors.white : Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 50),
        Container(
          margin: const EdgeInsets.only(top: 50),
          height: 500,
          width: 600,
          child: const Image(
            image: AssetImage('images/eagle.jpg'),
            width: 80,
            height: 80,
          ),
        ),
      ],
    );
  }
}
