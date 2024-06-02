import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Mech_bottom.dart';
import 'Mech_request_home.dart';

class Mech_serviceAR extends StatefulWidget {
  const Mech_serviceAR({super.key});

  @override
  State<Mech_serviceAR> createState() => _Mech_serviceARState();
}

class _Mech_serviceARState extends State<Mech_serviceAR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: Image.asset("assets/Ellipse 11.png"),
                radius: 30,
              ),
              Container(
                  width: 250,
                  height: 300,
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'problem:',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ' place:',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ' Time:',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ' date:',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 80,

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Mech_bottm()));
                            },
                            child: Text("Accept"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue),
                          ),
                          SizedBox(
                            height: 15,
                            width: 30,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Reject"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
