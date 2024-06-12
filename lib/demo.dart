import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mech_serviceee extends StatefulWidget {
  const Mech_serviceee({super.key});

  @override
  State<Mech_serviceee> createState() => _Mech_serviceeeState();
}

class _Mech_serviceeeState extends State<Mech_serviceee> {
  final TextEditingController _serviceController = TextEditingController();
  final List<String> _services = [];

  void _addService(String service) {
    setState(() {
      _services.add(service);
    });
  }

  void _removeService(int index) {
    setState(() {
      _services.removeAt(index);
    });
  }

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
              Text("Service"),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: _services.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                ListTile(
                  title: Text(_services[index]),
                  trailing: IconButton(
                    onPressed: () => _removeService(index),
                    icon: Icon(CupertinoIcons.delete),
                  ),
                ),
                Divider(color: Colors.black, thickness: 1),
                SizedBox(height: 10),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
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
                      if (_serviceController.text.isNotEmpty) {
                        _addService(_serviceController.text);
                        _serviceController.clear();
                      }
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
