import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAD6S9vfH6kpeHywMxe6lEePqXyjzMdVis",
            authDomain: "agro-avenija---firebase.firebaseapp.com",
            projectId: "agro-avenija---firebase",
            storageBucket: "agro-avenija---firebase.appspot.com",
            messagingSenderId: "897745720785",
            appId: "1:897745720785:web:ead2b8b37b7d948ffa7cf0",
            measurementId: "G-VEDWJYPJDM"));
  } else {
    await Firebase.initializeApp();
  }
}
