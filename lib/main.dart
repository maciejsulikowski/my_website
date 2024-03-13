import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainLayout(),
    );
  }
}

class MainLayout extends StatelessWidget {
  const MainLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavigationBar(),
          SizedBox(
            height: 50,
          ),
          PersonalWidget(),
        ],
      ),
    );
  }
}

class PersonalWidget extends StatelessWidget {
  const PersonalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 500, width: 600, color: Colors.amber),
        const SizedBox(width: 50),
        Container(height: 500, width: 600, color: Colors.amber),
      ],
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(
        left: 100,
        right: 100,
        bottom: 10,
        top: 10,
      ),
      child: Row(
        children: [
          const Image(
            image: AssetImage('images/logito.png'),
            width: 80,
            height: 80,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                    child: Text(
                  'Home',
                  style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 24),
                )),
                const SizedBox(
                  width: 50,
                ),
                Center(
                    child: Text(
                  'Portfolio',
                  style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 24),
                )),
                const SizedBox(
                  width: 50,
                ),
                Center(
                    child: Text(
                  'About Me',
                  style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 24),
                )),
                const SizedBox(
                  width: 50,
                ),
                Center(
                    child: Text(
                  'Contact',
                  style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 24),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
