import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Center(
            child: Text(
              'BuntNL',
              style: TextStyle(fontSize: 40),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          pageMarkerCategories(),
        ],
      ),
    );
  }

  Widget pageMarkerCategories() {
    return Stack(children: [
      Container(
        height: 300,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 52, 111, 55),
          borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
        ),
      ),
      Positioned(
        left: 150,
        top: 150,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Get Started'),
        ),
      ),
    ]);
  }
}
