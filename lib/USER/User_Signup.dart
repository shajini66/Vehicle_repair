import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User_signup extends StatefulWidget {
  const User_signup({super.key});

  @override
  State<User_signup> createState() => _User_signupState();
}

class _User_signupState extends State<User_signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.blue.shade100,
        body:

        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
                child: Column(
                    children: [
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
                          Text('LOGIN'),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),

                      TextFormField(

                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: " Enter User Name"),
                      ),
                      SizedBox(
                        height: 20,
                        width: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: " Enter Phone Number"),
                      ),
                      SizedBox(
                        height: 20,
                        width: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Enter your Email"),
                      ),
                      SizedBox(
                        height: 30,
                      ),


                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: " Enter Your password"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(onPressed: () {}, child: Text('Sign Up',style: TextStyle(color: Colors.white),),

                            style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,backgroundColor: Colors.blue),),

                          SizedBox(
                            height: 10,
                            width: 30,
                          ),

                        ],

                      ),
                    ]))));

  }
}






