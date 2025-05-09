import 'package:comp/screen/login_screen.dart';
import 'package:flutter/material.dart';

class MizanScreen extends StatefulWidget {
  const MizanScreen({super.key});

  @override
  State<MizanScreen> createState() => _MizanScreenState();
}

class _MizanScreenState extends State<MizanScreen> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
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
        children: [Image(image: AssetImage("assets/assets/images/mizan.png"))],
      ),
    );
  }
}
