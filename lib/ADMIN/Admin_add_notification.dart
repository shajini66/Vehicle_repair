import 'package:flutter/material.dart';

class Admin_Addnotifi extends StatefulWidget {
  const Admin_Addnotifi({super.key});

  @override
  State<Admin_Addnotifi> createState() => _Admin_AddnotifiState();
}

class _Admin_AddnotifiState extends State<Admin_Addnotifi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        )
        ,
        backgroundColor: Colors.blue.shade100,
        body: Container(

            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(

            ),

            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(
                      height: 20,
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                      ],
                    ),
                    SizedBox(
                      height: 30,
                      width: 12,
                    ),
                    Text('Enter matter'),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: ""),
                    ),
                    SizedBox(
                      width: 40,
                      height: 30,
                    ),
                    Text('Enter content'),
                    TextField(
                      decoration: InputDecoration(

                          border: OutlineInputBorder(), ),
                      maxLines: 10,
                    ),
                    SizedBox(
                      height:50,
                    ),
                    ElevatedButton(
                      onPressed: () {},


                      child: Text('Submit',style: TextStyle(color: Colors.white),),

                      style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,backgroundColor: Colors.blue),

                    ),
                  ],
                  ),
                ))));
  }


}



