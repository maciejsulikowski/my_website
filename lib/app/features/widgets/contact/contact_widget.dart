import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/contact/left_contact_widget.dart';
import 'package:http/http.dart' as http;
import 'package:my_website/app/features/widgets/text_fields/email_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/message_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/name_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/subject_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/surname_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({
    super.key,
  });

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

bool isHovered = false;
final nameController = TextEditingController();
final surnameController = TextEditingController();
final emailController = TextEditingController();
final subjectController = TextEditingController();
final messageController = TextEditingController();

Future sendEmail() async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  const serviceId = 'service_x3rrh49';
  const templateId = 'template_83su3ct';
  const userId = 'AmsrRpY6J4rchbJow';
  final response = await http.post(url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_subject': subjectController.text,
          'user_name': nameController.text,
          'user_surname': surnameController.text,
          'user_message': messageController.text,
          'user_email': emailController.text,
        }
      }));

  return response.statusCode;
}

class _ContactWidgetState extends State<ContactWidget>
    with TickerProviderStateMixin {
  void wrongMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          padding: const EdgeInsets.all(10),
          behavior: SnackBarBehavior.fixed,
          backgroundColor: Colors.red,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              AppLocalizations.of(context)!.wrong_message_1,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }

  void wrongMessage2() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          padding: const EdgeInsets.all(10),
          behavior: SnackBarBehavior.fixed,
          backgroundColor: Colors.red,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              AppLocalizations.of(context)!.wrong_message_2,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }

  void correctMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          padding: const EdgeInsets.all(10),
          behavior: SnackBarBehavior.fixed,
          backgroundColor: Colors.green,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              AppLocalizations.of(context)!.correct_message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }

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
                  AppLocalizations.of(context)!.questions,
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
          height: 35,
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
                      height: 500,
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
                          Row(
                            children: [
                              NameTextField(
                                nameController: nameController,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SurnameTextField(
                                surnameController: surnameController,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              EmailTextField(
                                emailController: emailController,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SubjectTextField(
                                subjectController: subjectController,
                              ),
                            ],
                          ),
                          MessageTextField(
                            messageController: messageController,
                          ),
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
                                  onPressed: () {
                                    if (emailController.text.isEmpty ||
                                        messageController.text.isEmpty ||
                                        subjectController.text.isEmpty ||
                                        nameController.text.isEmpty ||
                                        surnameController.text.isEmpty) {
                                      wrongMessage();
                                    } else if (!emailController.text
                                        .contains('@')) {
                                      wrongMessage2();
                                    } else {
                                      sendEmail();
                                      correctMessage();
                                      emailController.clear();
                                      messageController.clear();
                                      subjectController.clear();
                                      nameController.clear();
                                      surnameController.clear();
                                    }
                                  },
                                  child: Text(
                                    AppLocalizations.of(context)!.send_message,
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
