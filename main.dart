import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project2/features/app/splash_screen.dart';
import 'package:project2/main_screen/home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(options:
     const FirebaseOptions(
      apiKey: "AIzaSyA9-f3C03EUswDzNwVEvGasBepLMHZJ2q8",
    authDomain: "project-2-e4f38.firebaseapp.com",
    projectId: "project-2-e4f38",
    storageBucket: "project-2-e4f38.appspot.com",
    messagingSenderId: "592333406427",
    appId: "1:592333406427:web:5b556639c764436819ccfe",
    measurementId: "G-E17K4TDBF1"
    )
   );
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const SplashScreen(
        child: HomeScreen(),
      ),
    );
  }
}

