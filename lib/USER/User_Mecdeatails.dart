import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User_needservice extends StatefulWidget {
  const User_needservice({super.key});

  @override
  State<User_needservice> createState() => _User_needserviceState();
}

class _User_needserviceState extends State<User_needservice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          backgroundColor: Colors.blue.shade100,
          title: Center(
              child: Text(
                "Needed Service",
                style: TextStyle(color: Colors.black),
              )),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRect(
                child: Image.asset(
                  "assets/bussiness-man 1.png",
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
              Text("Name"),
              SizedBox(height: 20),
              Text("Contact Number"),
              Text(
                '2+ year experience',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () {}, child: Text("Available"),style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade400,foregroundColor: Colors.white),),
              SizedBox(
height: 15,              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Add Needed service"),
                      ),
                      
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
