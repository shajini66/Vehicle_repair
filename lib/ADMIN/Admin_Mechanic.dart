import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Admin_bottom.dart';

class Admin_mechanic extends StatefulWidget {
  const Admin_mechanic({super.key, required this. id});
  final id;
  

  @override
  State<Admin_mechanic> createState() => _Admin_mechanicState();
}

class _Admin_mechanicState extends State<Admin_mechanic> {
  DocumentSnapshot? mechaccept;

  getFirebase() async {
    mechaccept = await FirebaseFirestore.instance
        .collection("mech Register")
        .doc(widget.id)
        .get();
  }
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(
      future: getFirebase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Text("Error${snapshot.error}");
        }
        return  SafeArea(
          child: Scaffold(
              backgroundColor: Colors.blue.shade100,
              body:
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),

                  child:
                  SingleChildScrollView(
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
                       mechaccept!["UserName"],
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        mechaccept!["Location"],
                        style: TextStyle(color: Colors.black),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text( "Username"),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(

                                height: MediaQuery.of(context).size.height*.06,
                                width:MediaQuery.of(context).size.width*.6,
                                decoration: BoxDecoration(color: Colors.white),
                                child:Text ( mechaccept!["UserName"],),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text("Phone number"),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(

                                height: MediaQuery.of(context).size.height*.06,
                                width:MediaQuery.of(context).size.width*.6,
                                decoration: BoxDecoration(color: Colors.white),
                                child:Text ( mechaccept!["Phone number"],),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text("Email"),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(

                                height: MediaQuery.of(context).size.height*.06,
                                width:MediaQuery.of(context).size.width*.6,
                                decoration: BoxDecoration(color: Colors.white),
                                child:Text ( mechaccept!["Email"],),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text("Work experience"),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(

                                height: MediaQuery.of(context).size.height*.06,
                                width:MediaQuery.of(context).size.width*.6,
                                decoration: BoxDecoration(color: Colors.white),
                                child:Text ( mechaccept!["Work experience"],),
                              ),
                            ),SizedBox(
                              height: 30,
                            ),
                            Text("Shopename"),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(

                                height: MediaQuery.of(context).size.height*.06,
                                width:MediaQuery.of(context).size.width*.6,
                                decoration: BoxDecoration(color: Colors.white),
                                child:Text ( mechaccept!["Work shopename"],),
                              ),
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
                                    backgroundColor: Colors.blue,foregroundColor: Colors.white,),

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
                                    backgroundColor: Colors.red,foregroundColor: Colors.white,),
                                ),
                              ],
                            ),
                          ])
                    ]),
                  ))
          ),
        );
      },
    );
      
  
  }
}
