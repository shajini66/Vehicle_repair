import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'landing_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.blue.shade100,
      body: Container(
        color: Colors.white70,
        child: Center(
            child:
            Column(
              children: [
                SizedBox(
                  height:250
                ),
          InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LandingPage()));},
              child: Image.asset(
                "assets/tow 1.png",
                height:250,
                width: 130,
                fit: BoxFit.fitWidth,
              ),
         )]))));

}
}










