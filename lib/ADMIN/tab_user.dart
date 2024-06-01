import 'package:flutter/material.dart';
import 'package:vehicle_repair/ADMIN/Admin_User.dart';

class TabUser extends StatefulWidget {
  const TabUser({super.key});

  @override
  State<TabUser> createState() => _TabUserState();
}

class _TabUserState extends State<TabUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Admin_user()));
              },
                leading: CircleAvatar(
                  child: Image.asset("assets/Rectangle 13.png"),
                  radius: 30,
                ),
              subtitle:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(color: Colors.black),
                  ),

                  Text(
                    ' Mobile Number',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    ' Location',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    ' Email',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
