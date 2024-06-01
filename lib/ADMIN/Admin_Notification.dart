import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Admin_notific extends StatefulWidget {
  const Admin_notific({super.key});

  @override
  State<Admin_notific> createState() => _Admin_notificState();
}

class _Admin_notificState extends State<Admin_notific> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

    backgroundColor: Colors.blue.shade100,

    body:   ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("Heading"),
              subtitle: Text("Lorem ipsum is a placeholder text commonly \n used to demonstrate the visual form of a document or a typeface without relying  . . . . ."),
            ),
          );
        },
        itemCount: 6,
      ),

    );
  }
}
