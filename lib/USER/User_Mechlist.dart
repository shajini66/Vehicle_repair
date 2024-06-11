import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'User_Mecdeatails.dart';

class Mech_userlist extends StatefulWidget {
  const Mech_userlist({super.key});

  @override
  State<Mech_userlist> createState() => _Mech_userlistState();
}

class _Mech_userlistState extends State<Mech_userlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue.shade100,

      body:   ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(20),
            height: 100,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(

                  child: Image.asset("assets/bussiness-man 1.png",height: 70,width: 70,fit: BoxFit.cover,),
                ),
                SizedBox(
                  height: 150,
                  width: 17,
                ),

                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '+1 year experience',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          ' Battery check',
                          style: TextStyle(color: Colors.black),
                        ),
                        ElevatedButton(onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (context)=>User_needservice()));
                        }, child: Text("Available")),
                      ],
                    ),
                  ],
                ),
          SizedBox(
          width: 5,
          ),
              ],
            ),
          );

        },
        itemCount: 4,
      ),
    );
  }
}





