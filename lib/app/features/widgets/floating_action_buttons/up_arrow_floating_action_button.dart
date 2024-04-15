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

class UpArrowFloatingActionButton extends StatefulWidget {
  const UpArrowFloatingActionButton({
    required this.scrollController,
    required this.listOfKeys,
    super.key,
  });

  final List<GlobalKey> listOfKeys;
  final ScrollController scrollController;

  @override
  State<UpArrowFloatingActionButton> createState() =>
      _UpArrowFloatingActionButtonState();
}

class _UpArrowFloatingActionButtonState
    extends State<UpArrowFloatingActionButton> {
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

    return FloatingActionButton(
      onPressed: () {
        scrollToSection(0);
      },
      backgroundColor: Colors.black,
      shape: const CircleBorder(),
      child: const Icon(
        Icons.arrow_upward,
        color: Colors.white,
      ),
    );
  }
}
