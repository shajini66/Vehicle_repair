import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Admin_user extends StatefulWidget {
  const Admin_user({super.key});

  @override
  State<Admin_user> createState() => _Admin_userState();
}

class _Admin_userState extends State<Admin_user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        body:

        Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
    child: SingleChildScrollView(
    child: Column(
    children: [
     Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SizedBox(
    height: 100,
    width: 10,
    ),
    CircleAvatar(
      child: Image.asset("assets/Rectangle 13.png"),
    radius: 40,
    ),
    ],
    ),
      SizedBox(
        height: 5,
      ),
    Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Name',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                ' Location',
                style: TextStyle(color: Colors.black),
              ),
SizedBox(
  height: 30,

),
            TextFormField(

              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Mech Username"),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Phone Number"),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email"),
            ),
            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Accept"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),),

                SizedBox(
                  height: 15,
                  width: 30,
                ),
                SizedBox(
                  height: 60,
                ),
                ElevatedButton(
                    onPressed: () {},

                    child: Text("Reject"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),),
    ],

            ),
    ])]))));
  }
}



