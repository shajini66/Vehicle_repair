import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Admin_mechanic extends StatefulWidget {
  const Admin_mechanic({super.key});

  @override
  State<Admin_mechanic> createState() => _Admin_mechanicState();
}

class _Admin_mechanicState extends State<Admin_mechanic> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue.shade100,
          body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(CupertinoIcons.back)),
                    ],
                  ),
                  CircleAvatar(
                    child: Image.asset("assets/Rectangle 13.png"),
                    radius: 40,
                  ),
                  SizedBox(
                    height: 1,
                  ),

                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          ' Location',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "User Name"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Phone Number"),
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
                              border: OutlineInputBorder(),
                              labelText: "Work experience"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Work shope name"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Your location"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Accept"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue),
                            ),
                            SizedBox(
                              height: 15,
                              width: 30,
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Reject"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                            ),
                          ],
                        ),
                      ])
                ]),
              ))),
    );
  }
}
