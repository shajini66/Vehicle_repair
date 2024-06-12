import 'package:cloud_firestore/cloud_firestore.dart';
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
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("user Register").get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text("Error${snapshot.error}");
          }
final user=snapshot.data?.docs ?? [];
          return  ListView.builder(
            itemCount: user.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  // onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Admin_user(id:user[index].id)));
                  // },
                  leading: CircleAvatar(
                    child: Image.asset("assets/Rectangle 13.png"),
                    radius: 30,
                  ),
                  subtitle:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user[index]["User Name"],
                        style: TextStyle(color: Colors.black),
                      ),

                      Text(
                          user[index]["Phone Number"],
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        user[index]["Location"],
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        user[index]["Email"],
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: IconButton(onPressed: (){setState(() {
                    FirebaseFirestore.instance.collection("user Register").doc(user[index].id).delete();
                  });}, icon: Icon(Icons.delete)),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
