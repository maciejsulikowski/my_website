import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  bool isVisible = false;

  void scrollListener() {
    if (widget.scrollController.position.pixels > 500) {
      if (!isVisible) {
        setState(() {
          isVisible = true;
        });
      }
    } else {
      if (isVisible) {
        setState(() {
          isVisible = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(scrollListener);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(scrollListener);
    super.dispose();
  }

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

    return Opacity(
      opacity: isVisible ? 1.0 : 0.05,
      child: FloatingActionButton(
        onPressed: () {
          scrollToSection(0);
        },
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.arrow_upward,
          color: Colors.white,
        ),
      ),
    );
  }
}
