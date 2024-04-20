import 'package:flutter/material.dart';
import 'package:shivam_newsapp_tutorial/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:shivam_newsapp_tutorial/pages/landing_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.fjallaOne().fontFamily,
      ),
      home: const Home(),
    );
  }
}