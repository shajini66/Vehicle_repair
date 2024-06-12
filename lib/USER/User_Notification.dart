import 'package:cloud_firestore/cloud_firestore.dart';
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
        appBar: AppBar(
          title: Text("Notification"),
          toolbarHeight: 70,
          backgroundColor: Colors.blue.shade100,
        ),
        body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("Admin Notification").get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Text("Error${snapshot.error}");
            }
            final usernoti=snapshot.data?.docs ?? [];
            return ListView.builder(
              itemCount:usernoti.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                        ,
                        boxShadow: [BoxShadow(offset: Offset(0, 2),spreadRadius: 4,blurRadius: 2,color: Colors.grey)]),
                    width: double.infinity,
                    height: 150,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Admin Notification",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Column(
                              children: [
                                Text(usernoti[index]["date"]),
                                Text(usernoti[index]["Time"]),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(usernoti[index]["Content"]),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}
