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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAxoqR6rj1y0Jq-u0IBHa3cuPRzAHmNzPU',
    appId: '1:1070089009017:android:89f155212d32b3367de1a8',
    messagingSenderId: '1070089009017',
    projectId: 'unique-score',
    storageBucket: 'unique-score.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyByLRUZDFEajOfn4Y8Z3G4x28UDWUgO900',
    appId: '1:1070089009017:ios:2aeb59806592cc7f7de1a8',
    messagingSenderId: '1070089009017',
    projectId: 'unique-score',
    storageBucket: 'unique-score.appspot.com',
    androidClientId: '1070089009017-44801d07bs5ggjd2g2114a70insa6k8l.apps.googleusercontent.com',
    iosClientId: '1070089009017-kl0dkg70abobr001mvsr1cme34hd435r.apps.googleusercontent.com',
    iosBundleId: 'com.kamushek.uniscore',
  );
}
