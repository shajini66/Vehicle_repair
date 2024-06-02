import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Admin_bottom.dart';
import 'Admin_home user.dart';

class Admin_user extends StatefulWidget {
  const Admin_user({super.key});

  @override
  State<Admin_user> createState() => _Admin_userState();
}

class _Admin_userState extends State<Admin_user> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue.shade100,
          body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(CupertinoIcons.back)),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                CircleAvatar(
                  child: Image.asset("assets/Rectangle 13.png"),
                  radius: 40,
                ),
                Text(
                  'Name',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  ' Location',
                  style: TextStyle(color: Colors.black),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Mech Username"),
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
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Admin_bottom()));
                            },
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
              ]))),
    );
  }
}
