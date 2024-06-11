import 'package:flutter/material.dart';
import 'package:vehicle_repair/ADMIN/Admin_bottom.dart';
import 'package:vehicle_repair/ADMIN/Admin_login.dart';
import 'package:vehicle_repair/MECHANIC/Mech_Login.dart';
import 'package:vehicle_repair/USER/User_Log.dart';
import 'package:vehicle_repair/USER/User_Notification.dart';
import 'package:vehicle_repair/USER/User_Signup.dart';
import 'package:vehicle_repair/USER/User_mechanicbill.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vehicle_repair/splash_page.dart';
import 'MECHANIC/Mech_Notification.dart';
import 'MECHANIC/Mech_Signup.dart';
import 'firebase_options.dart';
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

// void main(){
//   runApp(const MyApp());
// }
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
      home: Splash(),
    );
  }
}
