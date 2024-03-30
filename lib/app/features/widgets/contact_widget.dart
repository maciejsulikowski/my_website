import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/app_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/email_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/message_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/name_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/phone_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/surname_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({
    super.key,
  });

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget>
    with TickerProviderStateMixin {
  bool isHovered = false;
  bool isShowed = false;
  late final AnimationController _animationController = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );

  late final Animation<Offset> _textAnimation = Tween<Offset>(
    begin: const Offset(-1, 0),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
  );

  late final AnimationController _rightAnimationController =
      AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );

  late final Animation<Offset> _rightAnimation = Tween<Offset>(
    begin: const Offset(0.2, 0),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(parent: _rightAnimationController, curve: Curves.easeIn),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VisibilityDetector(
          key: const Key('contactWidget'),
          onVisibilityChanged: (visibilityInfo) {
            if (visibilityInfo.visibleFraction == 1) {
              _animationController.forward();
            } else {
              _animationController.reverse();
            }
          },
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return SlideTransition(
                position: _textAnimation,
                child: Text(
                  'Do you have any questions? Feel free to ask! ',
                  style: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const LeftContactWidget(),
            VisibilityDetector(
              key: const Key('RightContactContainer'),
              onVisibilityChanged: (visibilityInfo) {
                if (visibilityInfo.visibleFraction == 1) {
                  _rightAnimationController.forward();
                } else {
                  _rightAnimationController.reverse();
                }
              },
              child: AnimatedBuilder(
                animation: _rightAnimationController,
                builder: (context, child) {
                  return SlideTransition(
                    position: _rightAnimation,
                    child: Container(
                      height: 600,
                      width: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(0, 0, 0, 1),
                            Color.fromRGBO(0, 0, 0, 1),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              NameTextField(),
                              SizedBox(
                                width: 10,
                              ),
                              SurnameTextField(),
                            ],
                          ),
                          const Row(
                            children: [
                              EmailTextField(),
                              SizedBox(
                                width: 10,
                              ),
                              PhoneTextField(),
                            ],
                          ),
                          const MessageTextField(),
                          Padding(
                            padding: const EdgeInsets.all(10),
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
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: isHovered
                                          ? Colors.grey
                                          : Colors.white),
                                  onPressed: () {},
                                  child: Text(
                                    'Send the message',
                                    style: GoogleFonts.aBeeZee(
                                        color: isHovered
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}

class LeftContactWidget extends StatefulWidget {
  const LeftContactWidget({
    super.key,
  });

  @override
  State<LeftContactWidget> createState() => _LeftContactWidgetState();
}

class _LeftContactWidgetState extends State<LeftContactWidget>
    with TickerProviderStateMixin {
  late final AnimationController _leftAnimationController = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );

  late final Animation<Offset> _leftAnimation = Tween<Offset>(
    begin: const Offset(-0.2, 0),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(parent: _leftAnimationController, curve: Curves.easeIn),
  );

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('LeftContact'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction == 1) {
          _leftAnimationController.forward();
        } else {
          _leftAnimationController.reverse();
        }
      },
      child: AnimatedBuilder(
        animation: _leftAnimationController,
        builder: (context, child) {
          return SlideTransition(
            position: _leftAnimation,
            child: Container(
              height: 600,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [Color.fromARGB(255, 59, 57, 57), Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: Icon(Icons.phone, color: Colors.black),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Phone',
                              style: GoogleFonts.aBeeZee(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              )),
                          const SizedBox(height: 10),
                          Text('+48 793-744-201',
                              style: GoogleFonts.aBeeZee(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: Icon(Icons.description, color: Colors.black),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Form',
                              style: GoogleFonts.aBeeZee(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              )),
                          const SizedBox(height: 10),
                          Text('Fill out the form ➡️',
                              style: GoogleFonts.aBeeZee(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: Icon(Icons.email, color: Colors.black),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email',
                              style: GoogleFonts.aBeeZee(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              )),
                          const SizedBox(height: 10),
                          Text('maciejsulikowski99@gmail.com',
                              style: GoogleFonts.aBeeZee(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
