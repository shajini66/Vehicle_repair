// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCEYG6QiSYyB7UP71GDrq6yfT-XvjHEK2w',
    appId: '1:89347347721:web:543d879d18ed454ecd2fd8',
    messagingSenderId: '89347347721',
    projectId: 'vehicle-79102',
    authDomain: 'vehicle-79102.firebaseapp.com',
    databaseURL: 'https://vehicle-79102-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'vehicle-79102.appspot.com',
    measurementId: 'G-TSCNFWZ78Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAaJc48pP5kdECMdtzCj5ZH1qs5fyI-OBA',
    appId: '1:89347347721:android:3d383c16a05b37e0cd2fd8',
    messagingSenderId: '89347347721',
    projectId: 'vehicle-79102',
    databaseURL: 'https://vehicle-79102-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'vehicle-79102.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzb3Vme3SdXzevQYXn1Ys_q6lGZwJqZyw',
    appId: '1:89347347721:ios:5dde16d97161bc28cd2fd8',
    messagingSenderId: '89347347721',
    projectId: 'vehicle-79102',
    databaseURL: 'https://vehicle-79102-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'vehicle-79102.appspot.com',
    iosBundleId: 'com.example.vehicleRepair',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBzb3Vme3SdXzevQYXn1Ys_q6lGZwJqZyw',
    appId: '1:89347347721:ios:5dde16d97161bc28cd2fd8',
    messagingSenderId: '89347347721',
    projectId: 'vehicle-79102',
    databaseURL: 'https://vehicle-79102-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'vehicle-79102.appspot.com',
    iosBundleId: 'com.example.vehicleRepair',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCEYG6QiSYyB7UP71GDrq6yfT-XvjHEK2w',
    appId: '1:89347347721:web:b7f854861825c3d0cd2fd8',
    messagingSenderId: '89347347721',
    projectId: 'vehicle-79102',
    authDomain: 'vehicle-79102.firebaseapp.com',
    databaseURL: 'https://vehicle-79102-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'vehicle-79102.appspot.com',
    measurementId: 'G-623FFYB3S1',
  );
}
