import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mech_notific extends StatefulWidget {
  const Mech_notific({super.key});

  @override
  State<Mech_notific> createState() => _Mech_notificState();
}

class _Mech_notificState extends State<Mech_notific> {
  @override
  Widget build(BuildContext context) {
return
  Container(
    height: 30,
    width: 20,
    alignment: Alignment.topRight,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          DateTime.now().toString().substring(11, 16),
          style: TextStyle(
            fontSize: 12, // Adjust font size as needed
          ),
        ),
        Text(
          DateTime.now().toString().substring(0, 10),
          style: TextStyle(
            fontSize: 10, // Adjust font size as needed
          ),
        ),
      ],
    ),


    );
  }
}


