import 'package:flutter/material.dart';
import 'package:my_website/app/app.dart';

void main() {
  runApp(const MyApp());
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


