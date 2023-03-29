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
    apiKey: 'AIzaSyDvNPA_MD_zVO7l5zncH-mqIqznxpVaF_U',
    appId: '1:12279736362:web:f4656fc3bd55bfc4c63b53',
    messagingSenderId: '12279736362',
    projectId: 'flutter-tonetrainer',
    authDomain: 'flutter-tonetrainer.firebaseapp.com',
    storageBucket: 'flutter-tonetrainer.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_RXWUhPrTrxNYdYLgcsdSGUh_yIJdLXE',
    appId: '1:12279736362:android:880e76a97cde960fc63b53',
    messagingSenderId: '12279736362',
    projectId: 'flutter-tonetrainer',
    storageBucket: 'flutter-tonetrainer.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD87bOd_HY9Y0OPulNPXqxFhr-0ixXemek',
    appId: '1:12279736362:ios:3fad2a19b6ab3055c63b53',
    messagingSenderId: '12279736362',
    projectId: 'flutter-tonetrainer',
    storageBucket: 'flutter-tonetrainer.appspot.com',
    iosClientId:
        '12279736362-8hl04gu25gturiv7gf2j478oq2mop5ba.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterTonetrainer',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD87bOd_HY9Y0OPulNPXqxFhr-0ixXemek',
    appId: '1:12279736362:ios:c3a7b5c0baa63455c63b53',
    messagingSenderId: '12279736362',
    projectId: 'flutter-tonetrainer',
    storageBucket: 'flutter-tonetrainer.appspot.com',
    iosClientId:
        '12279736362-j483atb6h0lq0f2abmktrcrev8k0um54.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterTonetrainer.RunnerTests',
  );
}
