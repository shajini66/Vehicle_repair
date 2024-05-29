import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Mech_rate extends StatefulWidget {
  const Mech_rate({super.key});

  @override
  State<Mech_rate> createState() => _Mech_rateState();
}

class _Mech_rateState extends State<Mech_rate> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(20),
              height: 100,
              width: 50,
              color: Colors.blue.shade100,
              child:  Row(
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

                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("rating"),
                      RatingBar.builder(
                          initialRating: 3,
                          itemCount: 5,
                          itemSize: 10,
                          direction: Axis.horizontal,
                          itemBuilder: (Context, _) => Icon(Icons.star,color: Colors.amber),
                          onRatingUpdate: (rating) {

                          }),

                      Text("4/5"),
                    ],
                  ),
                ],
              ),
            );
          },
          itemCount: 1,
        ),
            );




  }
}