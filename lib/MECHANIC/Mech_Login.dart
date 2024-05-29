import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mech_login extends StatefulWidget {
  const Mech_login({super.key});

  @override
  State<Mech_login> createState() => _Mech_loginState();
}

class _Mech_loginState extends State<Mech_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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

                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "User name"),
                ),
                SizedBox(
                  height: 20,
                  width: 10,
                ),
                TextFormField(

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
                    Text(textAlign: TextAlign.end,
                      'forget password',
                    ),
                    SizedBox(
                      height:20,
                      width: 15,
                    ),
                ElevatedButton(
                  onPressed: () {},

                  child: Text('LOGIN',style: TextStyle(color: Colors.white),),

                  style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,backgroundColor: Colors.blue),
                )

                ],

                ),
SizedBox(
  height: 20,
),
Text("Do you have account?Sign Up")
              ],
            ),
          ),


        )));
  }
}








