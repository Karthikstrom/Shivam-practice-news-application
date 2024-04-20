import 'package:flutter/material.dart';
import 'package:flutter_color_models/flutter_color_models.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Bunt',
          style: TextStyle(
            color: RgbColor(35, 61, 77),
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        Text('NL',
            style: TextStyle(
                color: RgbColor(254, 127, 45),
                fontWeight: FontWeight.bold,
                fontSize: 25))
      ],
    );
  }
}
