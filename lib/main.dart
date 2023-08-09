import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/mobile_screen_layout.dart';
import 'package:instagram_clone/responsive/responsive_layout_screen.dart';
import 'package:instagram_clone/responsive/web_screen_layout.dart';
import 'package:instagram_clone/screens/login_screen.dart';
import 'package:instagram_clone/screens/signup_screen.dart';
import 'package:instagram_clone/utils/colors.dart';

// cloud_firestore = allows us to save our data in firestore_db
// firebase_core = to connect our flutter app with firebase
// firebase_storage = to store images and posts in the app

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures that flutter widgets have been initialized
  if (kIsWeb) {
    // For Web
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: 'AIzaSyDVDYkcVxD-tRIydcDTjbCKZXRKmdOrTgw',
            appId: '1:833061063288:web:fe917598c75c7097edbb8d',
            messagingSenderId: '833061063288',
            projectId: 'instagramclone-5055e',
            storageBucket: 'instagramclone-5055e.appspot.com'));
  } else {
    // For IOS and Android
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const LoginScreen(),
    );
  }
}
