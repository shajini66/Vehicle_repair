import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_repair/ADMIN/Admin_Notification.dart';
// import 'package:vehicle_repair/ADMIN/Admin_home%20user.dart';
import 'package:vehicle_repair/ADMIN/Admin_paynment.dart';


import 'Admin_tabBar.dart';

class Admin_bottom extends StatefulWidget {
  const Admin_bottom({super.key});

  @override
  State<Admin_bottom> createState() => _Admin_bottomState();
}

class _Admin_bottomState extends State<Admin_bottom> {
  int currentindex = 0;
  final pages = [
    const Admin_homeU(),
    const Admin_pay(),
    const Admin_notific(),

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
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.payments,
                color: Colors.black,
              ),
              label: 'Payment'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              label: 'Notification'),
        ],
        selectedItemColor: Color.fromRGBO(191, 68, 116, 1),

        unselectedItemColor: Color.fromRGBO(143, 154, 163, 1),
        selectedLabelStyle: TextStyle(color: Color.fromRGBO(191, 68, 116, 1)),

      ),
    );
  }
}


