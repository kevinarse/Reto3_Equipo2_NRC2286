import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:reto3_equipo2_nrc2286_cero/interfaz/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDt5gs8B7N6iC4EpwD7giAXHK64YxWg64U",
          authDomain: "reto3-chat-f6c71.firebaseapp.com",
          projectId: "reto3-chat-f6c71",
          storageBucket: "reto3-chat-f6c71.appspot.com",
          messagingSenderId: "899420214243",
          appId: "1:899420214243:web:5594a84e0a864bcd3e46d6",
          measurementId: "G-2WFW0MNR1P"));
  runApp(const MyApp());
}
