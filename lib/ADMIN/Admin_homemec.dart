import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_repair/ADMIN/Admin_Mechanic.dart';

class Admin_homeM extends StatefulWidget {
  const Admin_homeM({super.key});

  @override
  State<Admin_homeM> createState() => _Admin_homeMState();
}

class _Admin_homeMState extends State<Admin_homeM> {
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Admin_mechanic()));
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
                    ' Service',
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