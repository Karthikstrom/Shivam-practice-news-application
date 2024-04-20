import 'package:flutter/material.dart';
import 'package:flutter_color_models/flutter_color_models.dart';

class HomePageDivider extends StatelessWidget {
  const HomePageDivider({super.key, required this.header});
  final String header;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Text(header,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              )),
          const Spacer(flex: 1),
          const Text('View all',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: RgbColor(99, 129, 148))),
          const Icon(Icons.arrow_forward,
              size: 17, color: RgbColor(99, 129, 148))
        ],
      ),
    );
  }
}
