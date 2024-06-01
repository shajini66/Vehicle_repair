import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_repair/MECHANIC/Mech_Edit_profile.dart';
import 'package:vehicle_repair/MECHANIC/Mech_Notification.dart';
import 'package:vehicle_repair/MECHANIC/tab_mech.dart';

import 'Mech_request_home.dart';

class Mech_serviceH extends StatefulWidget {
  const Mech_serviceH({super.key});

  @override
  State<Mech_serviceH> createState() => _Mech_serviceHState();
}

class _Mech_serviceHState extends State<Mech_serviceH> {
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
                    "assets/Ellipse 9.png",
                    height: 70,
                    width: 70,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*.5,),
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Mech_notific()));
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
                  tabs: [Text('Requestes'), Text('Accepted')]),
            ),
            Expanded(
              child: TabBarView(children: [
                Mech_tab(),
                Mech_requestH(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

