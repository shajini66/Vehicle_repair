import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Mech_Edit_profile.dart';
import 'Mech_bottom.dart';
import 'Mech_TabBar.dart';

class Mech_profiles extends StatefulWidget {
  const Mech_profiles({super.key});

  @override
  State<Mech_profiles> createState() => _Mech_profilesState();
}

class _Mech_profilesState extends State<Mech_profiles> {
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

  DocumentSnapshot? Mechanic;

  getFirebase() async {
    Mechanic = await FirebaseFirestore.instance
        .collection("mech Register")
        .doc(ID)
        .get();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:getFirebase(),
      builder:(context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Text("Error${snapshot.error}");
        }
        return Scaffold(
            backgroundColor: Colors.blue.shade100,
            body: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 90,
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Mech_bottm()));
                                  },
                                  icon: Icon(Icons.arrow_back)),
                              SizedBox(width:270,),
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Mech_editProfile()));
                                  },
                                  icon: Icon(Icons.edit))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                child: Image.asset("assets/Rectangle 13.png"),
                                radius: 40,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 150, top: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text( Mechanic!["UserName"]),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(Mechanic!["Phone number"]),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(Mechanic!["Email"]),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(Mechanic!["Work experience"]),
                                SizedBox(

                                  height: 30,
                                ),
                                Text(Mechanic!["Work shopename"]),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(Mechanic!["Location"]),
                                SizedBox(
                                  height: 15,
                                  width: 30,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                Positioned(
                    top: 140,
                    left: 210,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(CupertinoIcons.camera)))
              ],
            ));
      });
      }

  }

