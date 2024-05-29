import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mech_profiles extends StatefulWidget {
  const Mech_profiles({super.key});

  @override
  State<Mech_profiles> createState() => _Mech_profilesState();
}

class _Mech_profilesState extends State<Mech_profiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue.shade100,
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
                      Text("Name"),
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
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Work experience"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Work shope name"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: " location"),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  ElevatedButton(onPressed: () {}, child: Text("Submit"),
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









