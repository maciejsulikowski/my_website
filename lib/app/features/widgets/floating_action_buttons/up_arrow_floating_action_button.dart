import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_second.dart';
import 'package:my_website/app/features/widgets/contact/contact_widget.dart';
import 'package:my_website/app/features/widgets/floating_action_buttons/language_floating_action_button.dart';
import 'package:my_website/app/features/widgets/footer/footer_widget.dart';
import 'package:my_website/app/features/widgets/navigation/navigation_bar.dart';
import 'package:my_website/app/features/widgets/about_me/personal_widget.dart';
import 'package:my_website/app/features/widgets/portfolio/portfolio_widget.dart';
import 'package:my_website/app/features/widgets/side_bar.dart';


class UpArrowFloatingActionButton extends StatelessWidget {
  const UpArrowFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.black,
      shape: const CircleBorder(),
      child: const Icon(
        Icons.arrow_upward,
        color: Colors.white,
      ),
    );
  }
}
