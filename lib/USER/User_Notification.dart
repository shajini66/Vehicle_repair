import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User_notification extends StatefulWidget {
  const User_notification({super.key});

  @override
  State<User_notification> createState() => _User_notificationState();
}

class _User_notificationState extends State<User_notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      backgroundColor:Colors.blue.shade100 ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                width: 20,
              ),
            ],
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(20),
                height: 300,
                width: 200,
                color: Colors.white,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text(
                          'Name',
                          style: TextStyle(color: Colors.black),

                        ),

                        Text(
                          ' Location',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          ' Service',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          ' Mechanic name',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
            itemCount: 1,

          ),
        ],

      ),

    );
  }
}



