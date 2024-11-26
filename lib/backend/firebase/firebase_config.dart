import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDzPbBKr6KRjE-GWQ8dbAM6qSofPKs9FdE",
            authDomain: "glua-health-app-templat-70ts67.firebaseapp.com",
            projectId: "glua-health-app-templat-70ts67",
            storageBucket: "glua-health-app-templat-70ts67.firebasestorage.app",
            messagingSenderId: "421796401743",
            appId: "1:421796401743:web:283e1e835d1caa8963903a"));
  } else {
    await Firebase.initializeApp();
  }
}
