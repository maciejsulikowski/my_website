import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/app_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/email_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/message_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/name_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/phone_widget.dart';
import 'package:my_website/app/features/widgets/text_fields/surname_widget.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 600,
              width: 600,
              color: Colors.amber,
            ),
            Container(
              height: 600,
              width: 600,
              color: Colors.amber,
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
                  MessageTextField(),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Send the message',
                          style: GoogleFonts.aBeeZee(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
