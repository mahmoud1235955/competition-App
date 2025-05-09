import 'package:comp/screen/mizan_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MizanScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/assets/images/logo (2).png")),
        ],
      ),
    );
  }
}
