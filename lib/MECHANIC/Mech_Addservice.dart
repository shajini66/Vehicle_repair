// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Mech_addservice extends StatefulWidget {
//   const Mech_addservice({super.key});
//
//   @override
//   State<Mech_addservice> createState() => _Mech_addserviceState();
// }
//
// class _Mech_addserviceState extends State<Mech_addservice> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:Colors.blue.shade100 ,
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.only(top: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "Service",
//               ),
//             ],
//           ),
//         ),
//       ),
//
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 30,
//               ),
//
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
//               ),
//               Container(
//                   width: 500,
//                   height: 350,
//                   color: Colors.white,
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 20,
//                       ),
//
//                       ListTile(
//                         title: Text('Type picture service'),
//                         trailing: IconButton(
//                             onPressed: () {},
//                             icon: Icon(CupertinoIcons.delete)),
//                       ),
//                       Divider(
//                         color: Colors.black,
//                         thickness: 1,
//                       ),
//                       ListTile(
//                         title: Text('Engine service'),
//                         trailing: IconButton(
//                             onPressed: () {},
//                             icon: Icon(CupertinoIcons.delete)),
//                       ),
//                       Divider(
//                         color: Colors.black,
//                         thickness: 1,
//                       ),
//                       ListTile(
//                         title: Text('Ac service'),
//                         trailing: IconButton(
//                             onPressed: () {},
//                             icon: Icon(CupertinoIcons.delete)),
//                       ),
//                       Divider(
//                         color: Colors.black,
//                         thickness: 1,
//                       ),
//                       ListTile(
//                         title: Text(' Electronic service'),
//                         trailing: IconButton(
//                             onPressed: () {},
//                             icon: Icon(CupertinoIcons.delete)),
//                       ),
//
//
//                     ],
//                   )),
//               SizedBox(
//                 height: 10,
//               ),
//               ElevatedButton(onPressed: () {
//
//               }, child: Text('Book'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
