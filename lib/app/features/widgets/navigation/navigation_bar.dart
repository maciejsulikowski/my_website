import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigatorBar extends StatefulWidget {
  const NavigatorBar({
    required this.listOfKeys,
    required this.scrollController,
    super.key,
  });

  final ScrollController scrollController;
  final List<GlobalKey> listOfKeys;

  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;

  void onEntered(int index, bool isSelected) {
    setState(() {
      if (index == 1) {
        isSelected1 = isSelected;
      } else if (index == 2) {
        isSelected2 = isSelected;
      } else if (index == 3) {
        isSelected3 = isSelected;
      } else if (index == 4) {
        isSelected4 = isSelected;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    void scrollToSection(int sectionIndex) {
      final RenderBox renderBox =
          widget.listOfKeys[sectionIndex].currentContext!.findRenderObject()
              as RenderBox;
      final position = renderBox.localToGlobal(Offset.zero).dy;
      final currentOffset = widget.scrollController.offset;
      final targetPosition = position + currentOffset + 30;
      widget.scrollController.animateTo(
        targetPosition,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(247, 250, 252, 1),
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
      padding: const EdgeInsets.only(
        left: 100,
        right: 100,
        bottom: 10,
        top: 10,
      ),
      child: Row(
        children: [
          const Image(
            image: AssetImage('images/eagle.jpg'),
            width: 80,
            height: 80,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 50,
                ),
                MouseRegion(
                  onEnter: (event) => onEntered(1, true),
                  onExit: (event) => onEntered(1, false),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isSelected1 ? Colors.black : Colors.white,
                      ),
                      onPressed: () {
                        scrollToSection(1);
                      },
                      child: Center(
                          child: Text(
                        'About me',
                        style: GoogleFonts.aBeeZee(
                            color: isSelected1 ? Colors.white : Colors.black,
                            fontSize: 24),
                      )),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                MouseRegion(
                  onEnter: (event) => onEntered(2, true),
                  onExit: (event) => onEntered(2, false),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isSelected2 ? Colors.black : Colors.white,
                      ),
                      onPressed: () {
                        scrollToSection(2);
                      },
                      child: Center(
                          child: Text(
                        'Portfolio',
                        style: GoogleFonts.aBeeZee(
                            color: isSelected2 ? Colors.white : Colors.black,
                            fontSize: 24),
                      )),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                MouseRegion(
                  onEnter: (event) => onEntered(3, true),
                  onExit: (event) => onEntered(3, false),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isSelected3 ? Colors.black : Colors.white,
                      ),
                      onPressed: () {
                        scrollToSection(3);
                      },
                      child: Center(
                          child: Text(
                        'Contact',
                        style: GoogleFonts.aBeeZee(
                            color: isSelected3 ? Colors.white : Colors.black,
                            fontSize: 24),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
