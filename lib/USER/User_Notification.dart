import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User_notification extends StatefulWidget {
  const User_notification({super.key});

  @override
  State<User_notification> createState() => _User_notificationState();
}

class _User_notificationState extends State<User_notification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Text(_time, style: TextStyle(fontSize: 16.0)),
          // Text(_date, style: TextStyle(fontSize: 12.0)),
        ],
      ),
    );
  }
}

