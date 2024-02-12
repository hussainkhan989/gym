import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gym/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyAJkuhQoJpHZHV2cOKLcwtbfjmPLV0I6TE',
          appId: '1:71188142690:android:9fe7e028ab8d10b9344f3b',
          messagingSenderId: '71188142690',
          projectId: 'gym-application-33c8b',
          storageBucket: 'gym-application-33c8b.appspot.com'));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black, foregroundColor: Colors.white),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const splashscreen(),
    );
  }
}
