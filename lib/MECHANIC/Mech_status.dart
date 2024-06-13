import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Mech_bottom.dart';
import 'Mech_RequestAccepted.dart';

class Mech_status extends StatefulWidget {
  const Mech_status({super.key});

  @override
  State<Mech_status> createState() => _Mech_statusState();
}

class _Mech_statusState extends State<Mech_status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(20),
                height: 100,
                width: double.infinity,
                color: Colors.blue.shade100,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 20,
                      ),
                      CircleAvatar(
                        child: Image.asset("assets/Ellipse 11.png"),
                        radius: 30,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Engine work',
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
                              ' Work',
                              style: TextStyle(color: Colors.black),
                            ),
                          ])
                    ])),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: " Amount"),
              ),
            ),
            SizedBox(
              height: 50,
              width: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mech_bottm()));
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.blue),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
