



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mech_service extends StatefulWidget {
  const Mech_service({super.key});

  @override
  State<Mech_service> createState() => _Mech_serviceState();
}

class _Mech_serviceState extends State<Mech_service> {
  final TextEditingController _serviceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Service",
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: 3,
itemBuilder: (context, index) {

  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


        SizedBox(
          height: 20,
        ),
        ListTile(
          title: Text('Type picture service'),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.delete)),
        ),
        Divider(
          color: Colors.black,
          thickness: 1,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ),
  );
},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show alert dialog with text form field
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Add New Service'),
                content: TextField(
                  controller: _serviceController,
                  decoration: InputDecoration(
                    labelText: 'Enter service name',
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle saving the new service (logic not provided)
                      String newService = _serviceController.text;
                      // Add new service to the list (implementation omitted)
                      Navigator.of(context).pop();
                    },
                    child: Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}