import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vehicle_repair/USER/User_Signup.dart';
import 'package:vehicle_repair/USER/User_requestmechaniclist.dart';

class User_login extends StatefulWidget {
  const User_login({super.key});

  @override
  State<User_login> createState() => _User_loginState();
}

class _User_loginState extends State<User_login> {
  final formkey = GlobalKey<FormState>();
  var username = TextEditingController();
  var Password = TextEditingController();
  String id = "";
  String name = "";
  void Userlog() async {
    final user = await FirebaseFirestore.instance
        .collection('user Register')
        .where('User Name', isEqualTo: username.text)
        .where('Password', isEqualTo: Password.text)
        .get();
    if (user.docs.isNotEmpty) {
      id = user.docs[0].id;
      name = user.docs[0]['User Name'];

      SharedPreferences data = await SharedPreferences.getInstance();
      data.setString('id', id);
      data.setString('User Name', name);

      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return User_requestmeclist();
        },
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
        "username and password invalid",
        style: TextStyle(color: Colors.red),
      )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Scaffold(
          body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(color: Colors.blue.shade100),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Image.asset("assets/tow 1.png"),
                      SizedBox(
                        height: 30,
                      ),
                      Text('LOGIN'),
                      SizedBox(
                        height: 80,
                      ),
                      TextFormField(
                        controller: username,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty";
                          }
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "User name"),
                      ),
                      SizedBox(
                        height: 20,
                        width: 10,
                      ),
                      TextFormField(
                        controller: Password,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Password"),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // Text(textAlign: TextAlign.end,
                          //   'forget password',
                          // ),
                          SizedBox(
                            height: 20,
                            width: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                Userlog();
                              }
                            },
                            child: Text(
                              'LOGIN',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Colors.blue),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => User_signup()));
                          },
                          child: Text("Do you have account?Sign Up"))
                    ],
                  ),
                ),
              ))),
    );
  }
}
