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
    apiKey: 'AIzaSyCEV-rwiUczEoayKC7fps-7cN13qIWPUUU',
    appId: '1:988180790380:web:15a56a47041e3842522c49',
    messagingSenderId: '988180790380',
    projectId: 'firstproject-fce1f',
    authDomain: 'firstproject-fce1f.firebaseapp.com',
    storageBucket: 'firstproject-fce1f.appspot.com',
    measurementId: 'G-RM7WQNBWHY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAgblHT8Z0wWm__0DJzRxopIcVI3SWuB-0',
    appId: '1:988180790380:android:5257834164e5761b522c49',
    messagingSenderId: '988180790380',
    projectId: 'firstproject-fce1f',
    storageBucket: 'firstproject-fce1f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQ4W4F44nutsifysj0wV6GwpxlRMzSCOU',
    appId: '1:988180790380:ios:be3a470717ed6f23522c49',
    messagingSenderId: '988180790380',
    projectId: 'firstproject-fce1f',
    storageBucket: 'firstproject-fce1f.appspot.com',
    iosBundleId: 'com.example.firebasedemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQ4W4F44nutsifysj0wV6GwpxlRMzSCOU',
    appId: '1:988180790380:ios:be3a470717ed6f23522c49',
    messagingSenderId: '988180790380',
    projectId: 'firstproject-fce1f',
    storageBucket: 'firstproject-fce1f.appspot.com',
    iosBundleId: 'com.example.firebasedemo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCEV-rwiUczEoayKC7fps-7cN13qIWPUUU',
    appId: '1:988180790380:web:9b1d6850af23cc8c522c49',
    messagingSenderId: '988180790380',
    projectId: 'firstproject-fce1f',
    authDomain: 'firstproject-fce1f.firebaseapp.com',
    storageBucket: 'firstproject-fce1f.appspot.com',
    measurementId: 'G-7GNW9MBBY8',
  );

}