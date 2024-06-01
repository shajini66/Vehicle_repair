import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_repair/MECHANIC/Mech_Rating.dart';
import 'package:vehicle_repair/MECHANIC/Mech_Service.dart';
import 'package:vehicle_repair/MECHANIC/Mech_request_home.dart';
import 'package:vehicle_repair/MECHANIC/Mech_service_home.dart';
import 'package:vehicle_repair/MECHANIC/tab_mech.dart';

class Mech_bottm extends StatefulWidget {
  const Mech_bottm({super.key});

  @override
  State<Mech_bottm> createState() => _Mech_bottmState();
}

class _Mech_bottmState extends State<Mech_bottm> {
  int currentindex = 0;
  final pages = [
    const Mech_serviceH(),
    const Mech_service(),
    const Mech_rate(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (newIndex) {
          setState(() {
            currentindex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              label: 'Request'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_repair_service,
                color: Colors.black,
              ),
              label: 'Service'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.generating_tokens_outlined,
                color: Colors.black,
              ),
              label: 'Rating'),
        ],
        selectedItemColor: Color.fromRGBO(191, 68, 116, 1),

        unselectedItemColor: Color.fromRGBO(143, 154, 163, 1),
        selectedLabelStyle: TextStyle(color: Color.fromRGBO(191, 68, 116, 1)),

      ),
    );
  }
}



