import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalWidget extends StatelessWidget {
  const PersonalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 600,
          width: 600,
          child: Padding(
            padding: const EdgeInsets.only(top: 180.0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '''Hi there, Welcome to my space 👋''',
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 24),
                ),
                const SizedBox(height: 20),
                Text(
                  '''I'm Maciej Sulikowski''',
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 40),
                ),
                const SizedBox(height: 20),
                Text(
                  '''A Flutter Developer''',
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 24),
                ),
                const SizedBox(height: 20),
                Text(
                  '''I am that guy who loves to create value for others in every possible form. Let's get to know each other better! ''',
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Who am I ?',
                      style: GoogleFonts.aBeeZee(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ),
        const SizedBox(width: 50),
        const SizedBox(
          height: 500,
          width: 600,
          child: Image(
            image: AssetImage('images/eagle.jpg'),
            width: 80,
            height: 80,
          ),
        ),
      ],
    );
  }
}
