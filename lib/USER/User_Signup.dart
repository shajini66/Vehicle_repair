import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'User_Log.dart';

class User_signup extends StatefulWidget {
  const User_signup({super.key});

  @override
  State<User_signup> createState() => _User_signupState();
}

class _User_signupState extends State<User_signup> {
  final formkey = GlobalKey<FormState>();
  var name = TextEditingController();
  var location=TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var phone=TextEditingController();
  Future<dynamic> UserRegister() async {
    await FirebaseFirestore.instance.collection("user Register").add({
      "User Name": name.text,
      "Email": email.text,
      "Password": password.text,
      "Phone Number":phone.text,
      "Location":location.text,
      "status": 0
    });
    print("done");
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => User_login(),
        ));
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
                      Text('Sign Up'),
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
                    controller: email,
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
                            labelText: "Enter your location"),
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
                            border: OutlineInputBorder(),
                            labelText: "Enter your phone number"),
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
                          if (formkey.currentState!.validate()) UserRegister();
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
