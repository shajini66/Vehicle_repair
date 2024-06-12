import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vehicle_repair/MECHANIC/Mech_ServiceAR.dart';

import 'Mech_bottom.dart';

class Mech_tab extends StatefulWidget {
  const Mech_tab({super.key});

  @override
  State<Mech_tab> createState() => _Mech_tabState();
}

class _Mech_tabState extends State<Mech_tab> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("userRequest").where('status',isEqualTo: 0).get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text("Error${snapshot.error}");
          }
          final mechrequest=snapshot.data?.docs ?? [];
          return  ListView.builder(
            itemCount: mechrequest.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  // onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Mech_serviceAR()));
                  // },
                  leading: CircleAvatar(
                    child: Image.asset("assets/Ellipse 11.png"),
                    radius: 30,
                  ),
                  subtitle:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mechrequest[index]["service"],
                        style: TextStyle(color: Colors.black),
                      ),

                      Text(
                        mechrequest[index]["date"],
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        mechrequest[index]["Time"],
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        mechrequest[index]["Place"],
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(height: 30,),
                      Row(

                        children: [
                          ElevatedButton(
                            onPressed: () {
                             setState(() {
                               FirebaseFirestore.instance.collection("userRequest").doc(mechrequest[index].id).update(
                                   {
                                     "status":1
                                   });
                             });
                            },
                            child: Text("Accept"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,foregroundColor: Colors.white),
                          ),
                          SizedBox(
                            height: 15,
                            width: 30,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                FirebaseFirestore.instance.collection("userRequest").doc(mechrequest[index].id).update(
                                    {
                                      "status":2
                                    });
                              });
                            },
                            child: Text("Reject"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,foregroundColor: Colors.white),
                          ),
                        ],
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



