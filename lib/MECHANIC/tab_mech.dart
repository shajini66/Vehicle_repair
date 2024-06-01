import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_repair/MECHANIC/Mech_ServiceAR.dart';

class Mech_tab extends StatefulWidget {
  const Mech_tab({super.key});

  @override
  State<Mech_tab> createState() => _Mech_tabState();
}

class _Mech_tabState extends State<Mech_tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: ListView.builder(
        itemCount: 3,
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Fuel leaking',
                    style: TextStyle(color: Colors.black),
                  ),

                  Text(
                    ' Date',
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}



