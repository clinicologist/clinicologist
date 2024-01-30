import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyALZ5engAyJIfq51HL4y1M3NnUNjRn2JKE",
            authDomain: "clinicologistx1.firebaseapp.com",
            projectId: "clinicologistx1",
            storageBucket: "clinicologistx1.appspot.com",
            messagingSenderId: "1017215734546",
            appId: "1:1017215734546:web:aa974e09c5d7a77eecd9cb",
            measurementId: "G-20DKJS3NJM"));
  } else {
    await Firebase.initializeApp();
  }
}
