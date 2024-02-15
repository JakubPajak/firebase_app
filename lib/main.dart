import 'package:firebase_app/features/app/splash_screen/splash_screen.dart';
import 'package:firebase_app/features/user_auth/presentation/pages/home_page.dart';
import 'package:firebase_app/features/user_auth/presentation/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => const SplashScreen(
              child: LoginPage(),
            ),
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        // Add other routes here if needed
      },
    );
  }
}
