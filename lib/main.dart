import 'package:flutter/material.dart';
import 'package:vehicle_repair/ADMIN/Admin_bottom.dart';
import 'package:vehicle_repair/ADMIN/Admin_login.dart';
import 'package:vehicle_repair/MECHANIC/Mech_Login.dart';
import 'package:vehicle_repair/USER/User_Log.dart';
import 'package:vehicle_repair/USER/User_mechanicbill.dart';

import 'firebase_options.dart';
import 'package:vehicle_repair/landing_page.dart';

import 'ADMIN/Admin_homemec.dart';
import 'USER/User_Mecdeatails.dart';
import 'USER/User_Mechlist.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: User_Mechbill(),
    );
  }
}
