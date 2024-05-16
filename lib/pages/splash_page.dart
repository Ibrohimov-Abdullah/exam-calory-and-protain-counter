import 'package:exam_to_modul7/pages/main_page.dart';
import 'package:exam_to_modul7/pages/page_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    time();
    super.initState();
  }
  Future<void> time() async{
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF91C788),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              width: 200,
              height: 50,
              child: Image.asset("assets/images/kcal.png"),
            ),
            const SizedBox(height: 270,),
            const Text("ZUAMICA",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 22,color: Color(0xFFCFE7CB)),),
            const SizedBox(height: 120,),
          ],
        ),
      ),
    );
  }
}

