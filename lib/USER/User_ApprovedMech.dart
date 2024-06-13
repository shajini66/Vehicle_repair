import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ADMIN/Admin_User.dart';
import '../MECHANIC/Mech_ServiceAR.dart';
import 'User_Neededservice.dart';

class Tabusers extends StatefulWidget {
  const Tabusers({super.key});

  @override
  State<Tabusers> createState() => _TabusersState();
}

class _TabusersState extends State<Tabusers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: FutureBuilder(
          future: FirebaseFirestore.instance.collection("userRequest").where("status",isEqualTo: 1).get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Text("Error${snapshot.error}");
            }
            final request=snapshot.data?.docs ?? [];
            return ListView.builder(
              itemCount: request.length,
              itemBuilder: (context, index) {
                return Card(
                    child: ListTile(
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(
                                request[index]["Mechname"],
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                request[index]["date"],
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                request[index]["Time"],
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                request[index]["service"],
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Approved",
                                    style: TextStyle(color: Colors.blue),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ));
              },
            );

          },
        ));
  }
}
