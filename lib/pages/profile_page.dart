import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/profile_image.png"),
            const Text("Shambhavi Mishra",style: TextStyle(color: Color(0xff272727),fontSize: 25),),
            const Text("Food Blogger",style: TextStyle(color: Color(0xffA1A1A1),fontSize: 16),)
          ],
        ),
      ),
    );
  }
}
