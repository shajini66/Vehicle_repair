import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mech_statusreject extends StatefulWidget {
  const Mech_statusreject({super.key});

  @override
  State<Mech_statusreject> createState() => _Mech_statusrejectState();
}

class _Mech_statusrejectState extends State<Mech_statusreject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(20),
                height: 100,
                width: double.infinity,
                color: Colors.blue.shade100,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 20,
                      ),
                      CircleAvatar(
                        child: Image.asset("assets/Ellipse 11.png"),
                        radius: 30,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Engine work',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              ' Date',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              ' Time',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              ' Work',
                              style: TextStyle(color: Colors.black),
                            ),
                          ])
                    ])),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                maxLines: 5,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: " Reject reason"),
              ),
            ),
            SizedBox(
              height: 50,
              width: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.blue),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
