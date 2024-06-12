import 'package:cloud_firestore/cloud_firestore.dart';
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
      body: FutureBuilder(

        future: FirebaseFirestore.instance.collection("mech Register").get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text("Error${snapshot.error}");
          }
          final mech=snapshot.data?.docs ?? [];
          return  ListView.builder(
            itemCount: mech.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Admin_mechanic(id:mech[index].id)));
                  },
                  leading: CircleAvatar(
                    child: Image.asset("assets/Rectangle 13.png"),
                    radius: 30,
                  ),
                  subtitle:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mech[index]["UserName"],
                        style: TextStyle(color: Colors.black),
                      ),

                      Text(
                          mech[index]["Phone number"],
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
          );
        },
      ),
    );
  }
}