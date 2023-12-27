// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA7emDqGi_XqiT79aG-deYZnV55mQiI8fQ',
    appId: '1:271459223628:web:3cec428b6533b85196cce9',
    messagingSenderId: '271459223628',
    projectId: 'chathub-4523c',
    authDomain: 'chathub-4523c.firebaseapp.com',
    storageBucket: 'chathub-4523c.appspot.com',
    measurementId: 'G-4GSQ9D29N6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBZffzuEetbmSIDCTtu6CbrF8fPDHqJNg',
    appId: '1:271459223628:android:76d76a27d9c2aca596cce9',
    messagingSenderId: '271459223628',
    projectId: 'chathub-4523c',
    storageBucket: 'chathub-4523c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBJPcH8VUS2hHA9HnZeTOBm5YbWndZGbpo',
    appId: '1:271459223628:ios:1dbeea1c3b4e8e1696cce9',
    messagingSenderId: '271459223628',
    projectId: 'chathub-4523c',
    storageBucket: 'chathub-4523c.appspot.com',
    iosBundleId: 'com.example.chathub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBJPcH8VUS2hHA9HnZeTOBm5YbWndZGbpo',
    appId: '1:271459223628:ios:b2d82e68e0b8f33f96cce9',
    messagingSenderId: '271459223628',
    projectId: 'chathub-4523c',
    storageBucket: 'chathub-4523c.appspot.com',
    iosBundleId: 'com.example.chathub.RunnerTests',
  );
}
