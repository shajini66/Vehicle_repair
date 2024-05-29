import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mech_requestH extends StatefulWidget {
  const Mech_requestH({super.key});

  @override
  State<Mech_requestH> createState() => _Mech_requestHState();
}

class _Mech_requestHState extends State<Mech_requestH> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                CircleAvatar(
                  radius: 30,
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(Icons.doorbell),
                ),
              ],
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromARGB(255, 33, 33, 33),
              ),
              child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Color.fromARGB(0, 255, 255, 255),
                  indicator: BoxDecoration(
                      color: Color.fromARGB(255, 234, 210, 178),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelColor: Color.fromARGB(255, 33, 33, 33),
                  unselectedLabelColor: Color.fromARGB(255, 255, 255, 11),
                  tabs: [Text('Service'), Text('Accepted')]),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              CircleAvatar(
                                radius: 30,
                                child: Image.asset("assets/Ellipse 11.png"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    ' Time',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    ' Place',
                                    style: TextStyle(color: Colors.black),
                                  ),


                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: ElevatedButton(onPressed:(){}, child: Text("Payment pending")),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ]
                              ),
                            ]));
                  },
                  itemCount: 2,
                )
              ]),
            )
          ],
        ),
      ),
    );
  }

}
