import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'User_Profile.dart';

class UserProfileEdit extends StatefulWidget {
  const UserProfileEdit({super.key});

  @override
  State<UserProfileEdit> createState() => _UserProfileEditState();
}

class _UserProfileEditState extends State<UserProfileEdit> {
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

  var email = TextEditingController();
  var phone = TextEditingController();
  Future<dynamic> Useredit() async {
    await FirebaseFirestore.instance.collection("user Register").doc(ID).update({

      "Email": email.text,
      "Phone Number":phone.text,


    });
    print("done");

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => User_profile()));
  }

  @override
  Widget build(BuildContext context) {
    return Form(key: formkey,
      child: Scaffold(
          appBar: AppBar(),
          backgroundColor: Colors.blue.shade100,
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(children: [
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

                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: phone,
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

                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()){
                    Useredit();}
                  },
                  child: Text("update"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.blue),
                ),
              ]),
            ),
          )),
    );
  }
}
