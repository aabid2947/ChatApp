import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDRlUBY7Ex0Kc9j51OZhEe3MmwdYYHJ6Gw",
            authDomain: "chatapp-4f5ee.firebaseapp.com",
            projectId: "chatapp-4f5ee",
            storageBucket: "chatapp-4f5ee.appspot.com",
            messagingSenderId: "973254386278",
            appId: "1:973254386278:web:fcbeb41c3031adb17f43a7",
            measurementId: "G-TVB5EHCMCR"));
  } else {
    await Firebase.initializeApp();
  }
}
