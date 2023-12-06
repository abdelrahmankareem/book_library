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
    apiKey: 'AIzaSyAZsDO9Z3slkRIz4cscBdOfHyMKmC0xpZY',
    appId: '1:543208286675:web:68475b7b8ae02207a5e726',
    messagingSenderId: '543208286675',
    projectId: 'chat-app-ba847',
    authDomain: 'chat-app-ba847.firebaseapp.com',
    storageBucket: 'chat-app-ba847.appspot.com',
    measurementId: 'G-QGS0HZJ7YL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHZ9SRHNc38MGhgiS_wOHabEVdIihO6vE',
    appId: '1:543208286675:android:e1319b37771b417ba5e726',
    messagingSenderId: '543208286675',
    projectId: 'chat-app-ba847',
    storageBucket: 'chat-app-ba847.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCdmbtYlnAs20eRf_KJEQ_NsWdjhx2YOpc',
    appId: '1:543208286675:ios:92711948e60c1a2ba5e726',
    messagingSenderId: '543208286675',
    projectId: 'chat-app-ba847',
    storageBucket: 'chat-app-ba847.appspot.com',
    iosBundleId: 'com.example.book',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCdmbtYlnAs20eRf_KJEQ_NsWdjhx2YOpc',
    appId: '1:543208286675:ios:bc24e458b6352221a5e726',
    messagingSenderId: '543208286675',
    projectId: 'chat-app-ba847',
    storageBucket: 'chat-app-ba847.appspot.com',
    iosBundleId: 'com.example.book.RunnerTests',
  );
}
