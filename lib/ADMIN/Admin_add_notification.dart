import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_repair/ADMIN/Admin_Notification.dart';

class Admin_Addnotifi extends StatefulWidget {
  const Admin_Addnotifi({super.key});

  @override
  State<Admin_Addnotifi> createState() => _Admin_AddnotifiState();
}

class _Admin_AddnotifiState extends State<Admin_Addnotifi> {
  final formkey=GlobalKey<FormState>();
  String dateselect = '';
  final date = new DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  var matter=TextEditingController();
  var content=TextEditingController();
  Future<dynamic> Noti() async {
    await FirebaseFirestore.instance.collection("Admin Notification").add({
      "Matter":matter.text,
      "Content":content.text,
      'date': date.toString(),
      'Time': time.format(context),

    });
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Admin_notific()));
  }
  @override
  Widget build(BuildContext context) {
    return Form(key: formkey,
      child: Scaffold(
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
                      Padding(
                        padding: const EdgeInsets.only(right: 190),
                        child: Text('Enter matter'),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                        ],
                      ),
                      TextFormField(
                        controller: matter,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty";
                          }
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: "Matter"),
                      ),
                      SizedBox(
                        width: 40,
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 190),
                        child: Text('Enter content'),
                      ),
                      TextFormField(
                        controller: content,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty";
                          }
                        },
                        decoration: InputDecoration(

                            border: OutlineInputBorder(),hintText:"content"),
                        maxLines: 10,
                      ),
                      SizedBox(
                        height:50,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()){
                            Noti();
                          }
                        },


                        child: Text('Submit',style: TextStyle(color: Colors.white),),

                        style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,backgroundColor: Colors.blue),

                      ),
                    ],
                    ),
                  )))),
    );
  }


}



