import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mech_notific extends StatefulWidget {
  const Mech_notific({super.key});

  @override
  State<Mech_notific> createState() => _Mech_notificState();
}

class _Mech_notificState extends State<Mech_notific> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child:
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text("add notific",style: const TextStyle(fontSize: 16.0)),
          ),
          const SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Text(DateFormat('HH:mm').format(DateTime.now()),
              //     style: const TextStyle(fontSize: 12.0, color: Colors.grey)),
              // Text(DateFormat('EEEE, MMMM d, yyyy').format(DateTime.now()),
              //     style: const TextStyle(fontSize: 12.0, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );

  }
}



