import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vehicle_repair/MECHANIC/Mech_bottom.dart';

import 'Mech_Signup.dart';
import 'Mech_service_home.dart';

class Mech_login extends StatefulWidget {
  const Mech_login({super.key});

  @override
  State<Mech_login> createState() => _Mech_loginState();
}

class _Mech_loginState extends State<Mech_login> {
  final formkey = GlobalKey<FormState>();
  var username = TextEditingController();
  var Password = TextEditingController();
  String id = "";
  String name = "";
  void Mech_login() async {
    final user = await FirebaseFirestore.instance
        .collection('mech Register')
        .where('UserName', isEqualTo: username.text)
        .where('Password', isEqualTo: Password.text)
        .get();
    if (user.docs.isNotEmpty) {
      id = user.docs[0].id;
      name = user.docs[0]['UserName'];

      SharedPreferences data = await SharedPreferences.getInstance();
      data.setString('id', id);
      data.setString('UserName', name);

      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return Mech_bottm();
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
    return Form(key: formkey,
      child: Scaffold(

          body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color:  Colors.blue.shade100
              ),
              child: SingleChildScrollView(
                child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:30),

                  child:
                  Column(
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
                            border: OutlineInputBorder(), labelText: "User name"),
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
                            border: OutlineInputBorder(), labelText: "Password"),
                      ),
                      SizedBox(
                        height: 50,

                      ),

                      Column(
                        crossAxisAlignment:CrossAxisAlignment.end ,

                        children: [
                          // Text(textAlign: TextAlign.end,
                          //   'forget password',
                          // ),
                          SizedBox(
                            height:20,
                            width: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if(formkey.currentState!.validate()){
                                Mech_login();
                              }
      },

                            child: Text('LOGIN',style: TextStyle(color: Colors.white),),

                            style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,backgroundColor: Colors.blue),
                          )

                        ],

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Mech_signup()));},
                          child: Text("Do you have account?Sign Up"))
                    ],
                  ),
                ),


              ))),
    );
  }
}













