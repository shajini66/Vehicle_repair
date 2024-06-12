// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// import 'Admin_bottom.dart';
// import 'Admin_tabBar.dart';
//
// class Admin_user extends StatefulWidget {
//   const Admin_user({super.key, required this. id});
//   final id;
//
//   @override
//   State<Admin_user> createState() => _Admin_userState();
// }
//
// class _Admin_userState extends State<Admin_user> {
//   DocumentSnapshot?useraccept;
//
//   getFirebase() async {
//     useraccept = await FirebaseFirestore.instance
//         .collection("user Register")
//         .doc(widget.id)
//         .get();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: getFirebase(),
//       builder: (context, snapshot) {
//
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Center(child: CircularProgressIndicator());
//         }
//         if (snapshot.hasError) {
//           return Text("Error${snapshot.error}");
//         }
//         return SafeArea(
//           child:  Scaffold(
//               backgroundColor: Colors.blue.shade100,
//               body: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         IconButton(onPressed: (){
//                           Navigator.pop(context);
//                         }, icon: Icon(CupertinoIcons.back)),
//                       ],
//                     ),
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height * .03,
//                     ),
//                     CircleAvatar(
//                       child: Image.asset("assets/Rectangle 13.png"),
//                       radius: 40,
//                     ),
//                     Text(
//                      useraccept!["User Name"],
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     Text(
//                       useraccept!["Location"],
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Text("Username"),
//                           Padding(
//                             padding: const EdgeInsets.all(5),
//                             child: Container(
//
//                               height: MediaQuery.of(context).size.height*.06,
//                               width:MediaQuery.of(context).size.width*.6,
//                               decoration: BoxDecoration(color: Colors.white),
//                               child:Text ( useraccept!["User Name"],),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Text("Phone number"),
//                           Padding(
//                             padding: const EdgeInsets.all(5),
//                             child: Container(
//
//                               height: MediaQuery.of(context).size.height*.06,
//                               width:MediaQuery.of(context).size.width*.6,
//                               decoration: BoxDecoration(color: Colors.white),
//                               child:Text ( useraccept!["Phone Number"],),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//
//
//                           Text("Email"),
//                           Padding(
//                             padding: const EdgeInsets.all(5),
//                             child: Container(
//
//                               height: MediaQuery.of(context).size.height*.06,
//                               width:MediaQuery.of(context).size.width*.6,
//                               decoration: BoxDecoration(color: Colors.white),
//                               child:Text ( useraccept!["Email"],),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 90),
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   FirebaseFirestore.instance.collection("user Register").doc(widget.id).delete();
//                                 });
//                               },
//                               child: Text("Delete"),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.red,foregroundColor: Colors.white,),
//                             ),
//                           ),
//                         ])
//                   ]))
//           ),
//         );
//       },
//     );
//   }
// }
