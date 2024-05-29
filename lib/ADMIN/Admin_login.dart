import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Admin_log extends StatefulWidget {
  const Admin_log({super.key});

  @override
  State<Admin_log> createState() => _Admin_logState();
}

class _Admin_logState extends State<Admin_log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(

              ),
              child:
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
    child: SingleChildScrollView(

                child:
                Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Image.asset("assets/tow 1.png"),
                    SizedBox(
                      height: 30,
                    ),

                 Text('LOGIN'),
                    SizedBox(
                      height: 80,
                    ),

                    TextFormField(

                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "User name"),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    TextFormField(

                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Password"),
                    ),
                    SizedBox(
                      height: 50,
                    ),
      SizedBox(
        height: MediaQuery.of(context).size.height*.01,

                    ),

                     ElevatedButton(

                      onPressed: () {},

                      child: Text('LOGIN',style: TextStyle(color: Colors.white),),

                       style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,backgroundColor: Colors.blue),

                    ),


                  ],
                ),
              ),


            )));
    }
}





