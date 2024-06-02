import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vehicle_repair/MECHANIC/Mech_Profile.dart';
import 'package:vehicle_repair/MECHANIC/Mech_ServiceAR.dart';

import 'Mech_status.dart';

class Mech_requestH extends StatefulWidget {
  const Mech_requestH({super.key});

  @override
  State<Mech_requestH> createState() => _Mech_requestHState();
}

class _Mech_requestHState extends State<Mech_requestH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Mech_serviceAR()));
              },
              leading: CircleAvatar(
                child: Image.asset("assets/Ellipse 11.png"),
                radius: 30,
              ),
              subtitle:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'fuel leaking',
                    style: TextStyle(color: Colors.black),
                  ),

                  Text(
                    ' date',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    ' Time',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    ' Place',
                    style: TextStyle(color: Colors.black),
                  ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(

                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Mech_status()));
                        }, child: Text("Payment pending"))),
                  ],
              ),
              ],
            ),
          ));
        },
      ));


  }

}



