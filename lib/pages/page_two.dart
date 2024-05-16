import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/basket.png"),
            const SizedBox(height: 15,),
            const Text("No Results Found",style: TextStyle(fontSize: 22,color: Color(0xFF696969),fontWeight: FontWeight.w500),),
            const Text("Try searching for a different keywork\n       or tweek your search a little",style: TextStyle(color: Color(0xFFA9A9A9)),)

          ],
        ),
      ),
    );
  }
}
