import 'package:flutter/material.dart';

import 'User_TabBar.dart';

class Usersuccess extends StatefulWidget {
  const Usersuccess({super.key});

  @override
  State<Usersuccess> createState() => _UsersuccessState();
}

class _UsersuccessState extends State<Usersuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: InkWell(onTap: (){Navigator.push(
        context, MaterialPageRoute(builder: (context) => User_requestmeclist()));
    },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Successfully",style: TextStyle(fontSize: 35,color: Colors.white),),
              Icon(Icons.check_circle_outline_rounded,color: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }
}
