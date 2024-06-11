import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_repair/ADMIN/tab_user.dart';
import 'package:vehicle_repair/USER/User_Mechlist.dart';
import 'package:vehicle_repair/USER/User_Notification.dart';
import 'package:vehicle_repair/USER/User_Profile.dart';

import 'User_requestmechlist.dart';

class User_requestmeclist extends StatefulWidget {
  const User_requestmeclist({super.key});

  @override
  State<User_requestmeclist> createState() => _User_requestmeclistState();
}

class _User_requestmeclistState extends State<User_requestmeclist> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>User_profile()));},
                  child: ClipOval(
                    child: Image.asset(
                      "assets/Ellipse2.jpg",
                      height: 70,
                      width: 70,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 20,
                ),

                SizedBox(width: MediaQuery.of(context).size.width*.5,),
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>User_notification()));
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 150, 178),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications,color: Colors.white,)
                        ],
                      )),
                    ))
              ],
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Color.fromARGB(0, 255, 255, 255),
                  indicator: BoxDecoration(
                      color: Color.fromARGB(255, 0, 150, 178),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelColor: Color.fromARGB(255, 255, 255, 255),
                  unselectedLabelColor: Color.fromARGB(255, 0, 150, 178),
                  tabs: [Text('Mechanic'), Text('Request')]),
            ),
            Expanded(
              child: TabBarView(children: [
                Mech_userlist(),
                Tabusers(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
