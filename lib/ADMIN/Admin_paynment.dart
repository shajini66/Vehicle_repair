import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Admin_pay extends StatefulWidget {
  const Admin_pay({super.key});

  @override
  State<Admin_pay> createState() => _Admin_payState();
}

class _Admin_payState extends State<Admin_pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: ClipOval(
            child: Image.asset("assets/Ellipse2.jpg",height: 40,width: 40,fit: BoxFit.cover,),
          ),
        ),
      ),
      backgroundColor: Colors.blue.shade100,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("Name"),
              trailing: Text("11/05/2000"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("5000"),
                  Text("Service"),
                  Text("Mechanic name"),
                ],
              ),
            ),
          );
        },
        itemCount: 6,
      ),
    );
  }
}
