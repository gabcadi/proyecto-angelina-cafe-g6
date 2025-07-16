import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDMhgasGNX_QHDA-UVo8jrQXzvSyzi-F40",
            authDomain: "angelina-cafe.firebaseapp.com",
            projectId: "angelina-cafe",
            storageBucket: "angelina-cafe.firebasestorage.app",
            messagingSenderId: "781901703850",
            appId: "1:781901703850:web:7aacacc6785fe00b57bed3",
            measurementId: "G-QHLKPJPEP0"));
  } else {
    await Firebase.initializeApp();
  }
}
