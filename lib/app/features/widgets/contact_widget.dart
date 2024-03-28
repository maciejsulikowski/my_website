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
        SizedBox(
            width: double.infinity,
            height: 100,
            child: Text(
              'Do you have any questions? Feel free to ask! ',
              style: GoogleFonts.aBeeZee(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
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
            Container(
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
