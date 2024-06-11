import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Mech_Login.dart';

class Mech_signup extends StatefulWidget {
  const Mech_signup({super.key});

  @override
  State<Mech_signup> createState() => _Mech_signupState();
}

class _Mech_signupState extends State<Mech_signup> {
  final formkey = GlobalKey<FormState>();
  var name = TextEditingController();
  var Phonenumber = TextEditingController();
  var email = TextEditingController();
  var workexperience = TextEditingController();
  var shopename = TextEditingController();
  var password = TextEditingController();
  var location = TextEditingController();


  Future<dynamic> MechRegister() async {
    await FirebaseFirestore.instance.collection("mech Register").add({
      "UserName": name.text,
      "Phone number": Phonenumber.text,
      "Email": email.text,
      "Work experience": workexperience.text,
      "Work shopename": shopename.text,
      "Password": password.text,
      "Location": location.text,

      "status": 0
    });

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Mech_login(),
        ));
    print("done");
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        child: Scaffold(
            appBar: AppBar(),
            backgroundColor: Colors.blue.shade100,
            body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                    child: Column(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset("assets/tow 1.png"),
                      SizedBox(
                        height: 30,
                      ),
                      Text('SIGNUP'),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: " Enter User Name"),
                  ),
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  TextFormField(
                    controller: location,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: " Enter location"),
                  ),
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: Phonenumber,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: " Enter Phone Number"),
                  ),
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter your Email"),
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
                        border: OutlineInputBorder(),
                        labelText: " Enter your Work experience"),
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
                        border: OutlineInputBorder(),
                        labelText: " Enter Work shope name"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: password,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty";
                      }
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: " Enter Your password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            MechRegister();
                            print("successfully");
                          }
                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.blue),
                      ),
                      SizedBox(
                        height: 10,
                        width: 30,
                      ),
                    ],
                  ),
                ])))));
  }
}
