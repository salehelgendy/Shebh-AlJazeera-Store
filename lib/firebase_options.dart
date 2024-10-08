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
    apiKey: 'AIzaSyCV6DyR883gHLYX-UBGlVGoaDVfqe75WHc',
    appId: '1:622551973295:web:b081a7025269f7f1fa035a',
    messagingSenderId: '622551973295',
    projectId: 'shebh-aljazeera-store',
    authDomain: 'shebh-aljazeera-store.firebaseapp.com',
    storageBucket: 'shebh-aljazeera-store.appspot.com',
    measurementId: 'G-PKY2VJMT2T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzMJxGdugiR4QCBHUNKuSIIbvtaTCAP0Q',
    appId: '1:622551973295:android:319cf6b9ff352f41fa035a',
    messagingSenderId: '622551973295',
    projectId: 'shebh-aljazeera-store',
    storageBucket: 'shebh-aljazeera-store.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6kI8kCPxwLEun29mLZAyJt93DuNZU8N8',
    appId: '1:622551973295:ios:31aac4f1708372c2fa035a',
    messagingSenderId: '622551973295',
    projectId: 'shebh-aljazeera-store',
    storageBucket: 'shebh-aljazeera-store.appspot.com',
    iosBundleId: 'com.example.shebhaljazeerastore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6kI8kCPxwLEun29mLZAyJt93DuNZU8N8',
    appId: '1:622551973295:ios:31aac4f1708372c2fa035a',
    messagingSenderId: '622551973295',
    projectId: 'shebh-aljazeera-store',
    storageBucket: 'shebh-aljazeera-store.appspot.com',
    iosBundleId: 'com.example.shebhaljazeerastore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCV6DyR883gHLYX-UBGlVGoaDVfqe75WHc',
    appId: '1:622551973295:web:1dbd4e2dd5e20704fa035a',
    messagingSenderId: '622551973295',
    projectId: 'shebh-aljazeera-store',
    authDomain: 'shebh-aljazeera-store.firebaseapp.com',
    storageBucket: 'shebh-aljazeera-store.appspot.com',
    measurementId: 'G-0FGSMKS1C8',
  );
}
