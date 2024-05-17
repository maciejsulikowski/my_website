import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/app/features/main_layout/ultra_wide_main_layout.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget.dart';
import 'package:my_website/app/features/widgets/about_me/about_app_widget_second.dart';
import 'package:my_website/app/features/widgets/contact/contact_widget.dart';

import 'package:my_website/app/features/widgets/floating_action_buttons/second_language_action_button.dart';
import 'package:my_website/app/features/widgets/floating_action_buttons/up_arrow_floating_action_button.dart';
import 'package:my_website/app/features/widgets/footer/footer_widget.dart';
import 'package:my_website/app/features/widgets/navigation/navigation_bar.dart';
import 'package:my_website/app/features/widgets/about_me/personal_widget.dart';
import 'package:my_website/app/features/widgets/portfolio/portfolio_widget.dart';
import 'package:my_website/app/features/widgets/side_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_website/core/responsive_layout.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({
    required this.setLocale,
    super.key,
  });

  final Function(Locale) setLocale;

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> sectionKeys = List.generate(7, (_) => GlobalKey());

  @override
  Widget build(
    BuildContext context,
  ) {
    return ResponsiveLayout(
      ultrawide: UltraWideMainLayout(
        setLocale: widget.setLocale,
        scrollController: _scrollController,
        sectionKeys: sectionKeys,
      ),
      wide: UltraWideMainLayout(
        setLocale: widget.setLocale,
        scrollController: _scrollController,
        sectionKeys: sectionKeys,
      ),
      narrow: UltraWideMainLayout(
        setLocale: widget.setLocale,
        scrollController: _scrollController,
        sectionKeys: sectionKeys,
      ),
    );
  }
}
