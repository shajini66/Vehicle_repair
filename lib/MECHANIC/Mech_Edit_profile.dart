import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Mech_Profile.dart';
import 'Mech_bottom.dart';

class Mech_editProfile extends StatefulWidget {
  const Mech_editProfile({super.key});

  @override
  State<Mech_editProfile> createState() => _Mech_editProfileState();
}

class _Mech_editProfileState extends State<Mech_editProfile> {
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
  final formkey = GlobalKey<FormState>();

  var Phonenumber = TextEditingController();
  var email = TextEditingController();
  var workexperience = TextEditingController();
  var shopename = TextEditingController();

  var location = TextEditingController();

  Future<dynamic> Mechedit() async {
    await FirebaseFirestore.instance.collection("mech Register").doc(ID).update({

      "Phone number": Phonenumber.text,
      "Email": email.text,
      "Work experience": workexperience.text,
      "Work shopename": shopename.text,
      "Location": location.text,

    });

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>  Mech_profiles()));
    print("done");
  }
  @override
  Widget build(BuildContext context) {
    return Form(key: formkey,
      child: Scaffold(
        appBar: AppBar(
          ),

        backgroundColor: Colors.blue.shade100,
          body:

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                  child: Column(
                      children: [
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 200,
                              width: 20,
                            ),
                            CircleAvatar(
                              child: Image.asset("assets/Rectangle 13.png"),
                              radius: 40,
                            ),

                          ],
                        ),


                        TextFormField(
                          controller: Phonenumber,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Empty";
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: "Phone Number"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: email,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Empty";
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: "Email"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: workexperience,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Empty";
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: "Work experience"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: shopename,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Empty";
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: "Work shope name"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: location,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Empty";
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: " location"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                    ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()){
                          Mechedit();
                        }

                      },
                      child: Text("Update"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.blue),
                    ),
                    SizedBox(
                              height: 15,
                              width: 30,
                            ),

                          ],

                        ),
                      ))),
    );

  }
}






