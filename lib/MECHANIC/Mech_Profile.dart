import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Mech_Edit_profile.dart';
import 'Mech_bottom.dart';

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

                      ),
                      Center(
                        child: CircleAvatar(
                          child: Image.asset("assets/Rectangle 13.png"),
                          radius: 40,
                        ),
                      ),

                     Padding(
                       padding: const EdgeInsets.only(left: 150,bottom: 90),
                       child: IconButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Mech_editProfile()));
                       }, icon: Icon(Icons.edit)),
                     )
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

                  ElevatedButton(onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Mech_bottm()));
                  }, child: Text("Done"),
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









