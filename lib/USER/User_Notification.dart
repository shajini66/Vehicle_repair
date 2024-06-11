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
   return Scaffold(
      appBar: AppBar(title: Text("Notification"),toolbarHeight: 70,backgroundColor: Colors.blue.shade100,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Container(
          height: MediaQuery.of(context).size.height*.13,
          width: MediaQuery.of(context).size.width*.6,
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),boxShadow:[BoxShadow(color: Colors.grey,offset:Offset(0,2),spreadRadius: 2,blurRadius: 3 )],border: Border.all(color: Colors.grey)),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Admin Notification"),
                  Spacer(),
                  Text("1:00pm"),
                ],
              ),
              SizedBox( height: MediaQuery.of(context).size.height*.05,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("06/12/2024")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
