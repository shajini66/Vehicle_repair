import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Admin_homeM extends StatefulWidget {
  const Admin_homeM({super.key});

  @override
  State<Admin_homeM> createState() => _Admin_homeMState();
}

class _Admin_homeMState extends State<Admin_homeM> {
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

                  child: Image.asset("assets/Ellipse2.jpg",height: 70,width: 70,fit: BoxFit.cover,),
                )
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
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(20),
                      height: 100,
                      width: 200,
                      color: Colors.white,
                      child:  Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            child: Image.asset("assets/Rectangle 13.png"),
                            radius: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(color: Colors.black),
                              ),

                              Text(
                                ' Mobile Number',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                ' Service',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: 6,
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}