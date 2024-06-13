import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'User_request success.dart';
import 'User_ApprovedMech.dart';

class User_needservice extends StatefulWidget {
  const User_needservice({super.key, required this.id});
  final id;

  @override
  State<User_needservice> createState() => _User_needserviceState();
}

class _User_needserviceState extends State<User_needservice> {

  final formkey = GlobalKey<FormState>();
  var place = TextEditingController();
  var service = TextEditingController();
  String select="";
  String dateselect = '';
  final date = new DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  DocumentSnapshot? addrequest;
  getFirebase() async {
    addrequest = await FirebaseFirestore.instance
        .collection("mech Register")
        .doc(widget.id)
        .get();
  }
  Future<dynamic> UserRequest() async {
    await FirebaseFirestore.instance
        .collection("userRequest")
        .add({"Place": place.text, "service": service.text,
      'Time': time.format(context),
      'date': date.toString(),
      "mechanic id":widget.id,
      "Mechname":addrequest!["UserName"],

    "status":0});
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Usersuccess()));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: FutureBuilder(
        future: getFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text("Error${snapshot.error}");
          }
         return Scaffold(
             appBar: AppBar(
               toolbarHeight: 75,
               backgroundColor: Colors.blue.shade100,
               title: Center(
                   child: Text(
                     "Needed Service",
                     style: TextStyle(color: Colors.black),
                   )),
             ),
             backgroundColor: Colors.white,
             body: Center(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   ClipRect(
                     child: Image.asset(
                       "assets/bussiness-man 1.png",
                       height: 70,
                       width: 70,
                       fit: BoxFit.cover,
                     ),
                   ),
                   Text(addrequest!["UserName"]),
                   SizedBox(height: 20),
                   Text(addrequest!["Phone number"]),
                   Text(
                     addrequest!["Work experience"],
                     style: TextStyle(color: Colors.black),
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   ElevatedButton(
                     onPressed: () {},
                     child: Text("Available"),
                     style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.green.shade400,
                         foregroundColor: Colors.white),
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   SingleChildScrollView(
                     child: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(right: 190),
                           child: Text("Add Needed service"),
                         ),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 20),
                           child: TextFormField(
                             controller: service,
                             validator: (value) {
                               if (value!.isEmpty) {
                                 return "Empty";
                               }
                             },
                             decoration: InputDecoration(
                               border: OutlineInputBorder(),
                             ),
                           ),
                         ),
                         SizedBox(
                           height: 15,
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right: 290),
                           child: Text("Place"),
                         ),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 20),
                           child: TextFormField(
                             controller: place,
                             validator: (value) {
                               if (value!.isEmpty) {
                                 return "Empty";
                               }
                             },
                             decoration:
                             InputDecoration(border: OutlineInputBorder()),
                           ),
                         ),
                         SizedBox(
                           height: 45,
                         ),
                         Row(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             ElevatedButton(
                               onPressed: () {
                                 if (formkey.currentState!.validate()) {
                                   UserRequest();
                                 }
                               },
                               child: Text(
                                 'Request',
                                 style: TextStyle(color: Colors.white),
                               ),
                               style: ElevatedButton.styleFrom(
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(10)),
                                   backgroundColor: Colors.blue),
                             ),
                             SizedBox(
                               height: 10,
                               width: 30,
                             ),
                           ],
                         ),
                       ],
                     ),
                   )
                 ],
               ),
             ));
        },
      ),
    );
  }
}
