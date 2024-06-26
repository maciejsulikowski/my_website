import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EmailTextFieldNarrow extends StatelessWidget {
  const EmailTextFieldNarrow({
    required this.emailController,
    super.key,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.grey[200]!,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: emailController,
              style: GoogleFonts.aBeeZee(fontSize: 14),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'E-mail...',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
