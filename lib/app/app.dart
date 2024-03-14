import 'package:flutter/material.dart';
import 'package:my_website/app/features/main_layout/main_layout.dart';
import 'package:my_website/main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainLayout(),
    );
  }
}
