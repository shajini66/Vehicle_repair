import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ADMIN/Admin_User.dart';
import '../MECHANIC/Mech_ServiceAR.dart';

class Tabusers extends StatefulWidget {
  const Tabusers({super.key});

  @override
  State<Tabusers> createState() => _TabusersState();
}

class _TabusersState extends State<Tabusers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
                  subtitle:Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
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
                        ' Fuel leaking',
                        style: TextStyle(color: Colors.black),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(

                              padding: const EdgeInsets.only(top: 30),
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text("Approved"))),
                        ],
                      ),
                    ],
                  ),
                ));
          },
        ));


  }

}

