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
    apiKey: 'AIzaSyCXaUlTaxM8M5xtCsd6E87SuT2iQ1FEtF4',
    appId: '1:445668709053:web:64351a8a337980e582ddd4',
    messagingSenderId: '445668709053',
    projectId: 'portfolioapp-1dde4',
    authDomain: 'portfolioapp-1dde4.firebaseapp.com',
    storageBucket: 'portfolioapp-1dde4.appspot.com',
    measurementId: 'G-L8P64W07HC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSR2Du_OF-2IqyIo0ZIw21kRZoNDa1_5M',
    appId: '1:445668709053:android:19bc25a8e5822aa182ddd4',
    messagingSenderId: '445668709053',
    projectId: 'portfolioapp-1dde4',
    storageBucket: 'portfolioapp-1dde4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApyfYkzDcQWKe2uNZ3ozhBV7IX7Vkhp6Q',
    appId: '1:445668709053:ios:217b53af4c8077e182ddd4',
    messagingSenderId: '445668709053',
    projectId: 'portfolioapp-1dde4',
    storageBucket: 'portfolioapp-1dde4.appspot.com',
    iosClientId: '445668709053-uavs448gbsq8fja52snuhlra3c1quh78.apps.googleusercontent.com',
    iosBundleId: 'com.example.mobileappdw',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyApyfYkzDcQWKe2uNZ3ozhBV7IX7Vkhp6Q',
    appId: '1:445668709053:ios:bb989bac63f9d34382ddd4',
    messagingSenderId: '445668709053',
    projectId: 'portfolioapp-1dde4',
    storageBucket: 'portfolioapp-1dde4.appspot.com',
    iosClientId: '445668709053-j8oc1vp5m39k8luv14s38897m778e87o.apps.googleusercontent.com',
    iosBundleId: 'com.example.mobileappdw.RunnerTests',
  );
}
