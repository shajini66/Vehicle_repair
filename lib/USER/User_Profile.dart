import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User_profile extends StatefulWidget {
  const User_profile({super.key});

  @override
  State<User_profile> createState() => _User_profileState();
}

class _User_profileState extends State<User_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                      ClipOval(

                        child: Image.asset("assets/Ellipse2.jpg",height: 70,width: 70,fit: BoxFit.cover,),
                      ),
                      
                      Text("Name"),Align(alignment: Alignment.bottomCenter,)
                    ],
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "User Name"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Phone Number"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Email"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Done"),

                    style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,backgroundColor: Colors.blue),),
                  SizedBox(
                    height: 15,
                    width: 30,
                  ),

                ],

              ),
            )));

  }
}









