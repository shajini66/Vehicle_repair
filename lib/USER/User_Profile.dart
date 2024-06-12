import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vehicle_repair/USER/user%20profile%20edit.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;


import '../landing_page.dart';

class User_profile extends StatefulWidget {
  const User_profile({super.key});

  @override
  State<User_profile> createState() => _User_profileState();
}

class _User_profileState extends State<User_profile> {

  var ID;

  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    setState(() {
      ID = spref.getString('id');
    });
    print('Shared Prefernce data get');
  }

  DocumentSnapshot? user;

  getFirebase() async {
    user = await FirebaseFirestore.instance
        .collection("user Register")
        .doc(ID)
        .get();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getFirebase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Text("Error${snapshot.error}");
        }
        return Stack(
          children: [
            Scaffold(
                appBar: AppBar(


                ),

                backgroundColor: Colors.blue.shade100,
                body:

                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => UserProfileEdit()));
                            }, icon: Icon(Icons.edit))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            ClipOval(

                              child: Image.network(user!["path"], height: 70,
                                width: 70,
                                fit: BoxFit.cover,),
                            ),


                          ],
                        ),
                        SizedBox(height: 30,),
                        Text(user!["User Name"]),
                        SizedBox(
                          height: 30,
                        ),
                        Text(user!["Phone Number"]),
                        SizedBox(
                          height: 30,
                        ),
                        Text(user!["Email"]),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35, top: 260),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => LandingPage()));
                            },
                            child: Text("Logout"),
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(300, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Colors.red.shade900,
                                foregroundColor: Colors.white),
                          ),
                        ),
                      ],

                    ),
                  ),
                )),
            Positioned(
                top: 175, left: 230,

                child: IconButton(
                    onPressed: () {}, icon: Icon(CupertinoIcons.camera)))
          ],

        );
      },
    );
  }
}









