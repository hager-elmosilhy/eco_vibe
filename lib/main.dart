import 'package:eco_vibe/Screens/Splach/splach.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     /* options: const FirebaseOptions(
          apiKey: "AIzaSyAbtcIxtQIn5Lfw3vWQCLTZBRJfaREasMQ",
          messagingSenderId: '1061435502499',
          appId: '1061435502499:android:19adaf589d7987522a7416',
          projectId: 'eco-vibe-b061f')*/
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

