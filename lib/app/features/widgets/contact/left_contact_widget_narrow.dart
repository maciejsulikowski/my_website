import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/portfolio/app_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/email_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/message_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/name_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/subject_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/surname_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LeftContactWidgetNarrow extends StatefulWidget {
  const LeftContactWidgetNarrow({
    super.key,
  });

  @override
  State<LeftContactWidgetNarrow> createState() =>
      _LeftContactWidgetNarrowState();
}

class _LeftContactWidgetNarrowState extends State<LeftContactWidgetNarrow>
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
      key: const Key('LeftContact'),
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
              height: 250,
              width: 400,
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
                        radius: 30,
                        child: Icon(Icons.phone, color: Colors.black),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppLocalizations.of(context)!.phone,
                              style: GoogleFonts.aBeeZee(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              )),
                          const SizedBox(height: 10),
                          Text('+48 793-744-201',
                              style: GoogleFonts.aBeeZee(
                                color: Colors.white,
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Icon(Icons.description, color: Colors.black),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppLocalizations.of(context)!.form,
                              style: GoogleFonts.aBeeZee(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              )),
                          const SizedBox(height: 10),
                          Text('${AppLocalizations.of(context)!.form_text}➡️',
                              style: GoogleFonts.aBeeZee(
                                color: Colors.white,
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
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
                                fontSize: 22,
                              )),
                          const SizedBox(height: 10),
                          Text('maciejsulikowski99@gmail.com',
                              style: GoogleFonts.aBeeZee(
                                color: Colors.white,
                                fontSize: 14,
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
