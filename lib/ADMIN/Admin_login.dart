import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vehicle_repair/ADMIN/Admin_bottom.dart';

class Admin_log extends StatefulWidget {
  const Admin_log({super.key});

  @override
  State<Admin_log> createState() => _Admin_logState();
}

class _Admin_logState extends State<Admin_log> {
  Adlogin() {
    if (Email.text == 'admin@gmail.com' && Password.text == '1234') {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return Admin_bottom();
        },
      ));
    }
  }
  final formkey=GlobalKey<FormState>();
  var Email=TextEditingController();
  var Password=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Form(key: formkey,
      child: Scaffold(
          backgroundColor: Colors.blue.shade100,
          body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
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
                        controller: Email,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty";
                          }
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "User name"),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      TextFormField(
                        controller: Password,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Password"),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(formkey.currentState!.validate())
                          Adlogin();
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ))),
    );
  }
}
