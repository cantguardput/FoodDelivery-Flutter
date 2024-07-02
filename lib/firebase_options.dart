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
    apiKey: 'AIzaSyAnAfpF_ivRFIYe47oUDsAQ_ivZnNB5fAs',
    appId: '1:908811460896:web:91edcf74de382709df7745',
    messagingSenderId: '908811460896',
    projectId: 'alessio-70211',
    authDomain: 'alessio-70211.firebaseapp.com',
    storageBucket: 'alessio-70211.appspot.com',
    measurementId: 'G-WE1C9B361C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOKeUpsN2T--YQCt9Ut8tUnxRks-FZn78',
    appId: '1:908811460896:android:cbf0ca9ba0e436cadf7745',
    messagingSenderId: '908811460896',
    projectId: 'alessio-70211',
    storageBucket: 'alessio-70211.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCceCfmEX395e_LVap3DJqnxLaBU8wnUig',
    appId: '1:908811460896:ios:3d889f629f0913aadf7745',
    messagingSenderId: '908811460896',
    projectId: 'alessio-70211',
    storageBucket: 'alessio-70211.appspot.com',
    iosBundleId: 'com.example.fooddelevery',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCceCfmEX395e_LVap3DJqnxLaBU8wnUig',
    appId: '1:908811460896:ios:3d889f629f0913aadf7745',
    messagingSenderId: '908811460896',
    projectId: 'alessio-70211',
    storageBucket: 'alessio-70211.appspot.com',
    iosBundleId: 'com.example.fooddelevery',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAnAfpF_ivRFIYe47oUDsAQ_ivZnNB5fAs',
    appId: '1:908811460896:web:4a0b1bb3551d6fb1df7745',
    messagingSenderId: '908811460896',
    projectId: 'alessio-70211',
    authDomain: 'alessio-70211.firebaseapp.com',
    storageBucket: 'alessio-70211.appspot.com',
    measurementId: 'G-X8Q4YBPNFW',
  );
}
