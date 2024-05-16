import 'package:exam_to_modul7/pages/main_page.dart';
import 'package:exam_to_modul7/pages/page_two.dart';
import 'package:exam_to_modul7/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
