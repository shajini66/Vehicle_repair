import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Admin_add_notification.dart';

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
    floatingActionButton: FloatingActionButton(onPressed: (){Navigator.push(context,
        MaterialPageRoute(builder: (context) => Admin_Addnotifi()));},child: Icon(Icons.add),),

    body:   FutureBuilder(
      future: FirebaseFirestore.instance.collection("Admin Notification").get(),
      builder: (context, snapshot) {

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Text("Error${snapshot.error}");
        }
        final notify=snapshot.data?.docs ?? [];
        return ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                trailing: IconButton(onPressed: (){setState(() {
                  FirebaseFirestore.instance.collection("Admin Notification").doc(notify[index].id).delete();
                });}, icon: Icon(Icons.delete)),
                title: Text(notify[index]["Matter"]),
                subtitle: Text(notify[index]["Content"]),
              ),
            );
          },
          itemCount: notify.length,
        );
      },

    ),

    );
  }
}
