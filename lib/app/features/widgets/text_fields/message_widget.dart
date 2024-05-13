import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class MessageTextField extends StatelessWidget {
  const MessageTextField({
    required this.messageController,
    super.key,
  });

  final TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
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
              controller: messageController,
              maxLines: null,
              style: GoogleFonts.aBeeZee(fontSize: 16),
              decoration:  InputDecoration(
                border: InputBorder.none,
                hintText: AppLocalizations.of(context)!.mess,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
