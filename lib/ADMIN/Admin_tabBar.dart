import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_repair/ADMIN/Admin_userlist.dart';

import '../landing_page.dart';
import 'Admin_Mechlist.dart';


class Admin_homeU extends StatefulWidget {
  const Admin_homeU({super.key});

  @override
  State<Admin_homeU> createState() => _Admin_homeUState();
}

class _Admin_homeUState extends State<Admin_homeU> {
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
                SizedBox(
                  height: 150,
                  width: 20,
                ),
                ClipOval(
                  child: Image.asset(
                    "assets/Ellipse2.jpg",
                    height: 70,
                    width: 70,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*.5,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LandingPage()));
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
                      Text("Logout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      Icon(Icons.logout,color: Colors.white,)
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
                  tabs: [Text('User'), Text('Mechanic')]),
            ),
            Expanded(
              child: TabBarView(children: [
                TabUser(),
                Admin_homeM(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
