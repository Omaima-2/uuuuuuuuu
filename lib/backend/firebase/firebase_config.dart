import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBbJPXbK4KgYNS2lCijQ8KQXmPCPoM2sD4",
            authDomain: "final1-ebcc3.firebaseapp.com",
            projectId: "final1-ebcc3",
            storageBucket: "final1-ebcc3.appspot.com",
            messagingSenderId: "553200450494",
            appId: "1:553200450494:web:7063722ade8e732eaed7ef"));
  } else {
    await Firebase.initializeApp();
  }
}
