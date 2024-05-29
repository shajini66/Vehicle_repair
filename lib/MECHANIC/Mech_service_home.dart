import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  height: 200,
                  width: 20,
                ),
                ClipOval(

                  child: Image.asset("assets/Rectangle 13.png",height: 70,width: 70,fit: BoxFit.cover,),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 18,top: 0),
                  child:Image.asset("assets/notification 1.png"),
                ),
              ],
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromARGB(244, 45, 87, 136),
              ),
              child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Color.fromARGB(0, 255, 255, 255),
                  indicator: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelColor: Color.fromARGB(244, 45, 87, 136),
                  unselectedLabelColor: Color.fromARGB(255, 255, 255, 255),
                  tabs: [Text('Requests'), Text('Accepted')]),
            ),
            Expanded(
              child: TabBarView(children: [
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(20),
                      height: 150,
                      width: 200,
                      color: Colors.white,
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Fuel leaking',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                ' Date',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                '  Time',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                ' Place',
                                style: TextStyle(color: Colors.black),
                              ),



                        ],
                      ),
                    ]));
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


