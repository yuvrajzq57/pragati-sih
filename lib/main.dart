import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:pragati/MainScreens/getStartedPage.dart';
import 'package:pragati/MainScreens/landingPage.dart';
import 'package:pragati/MainScreens/loginScreen.dart';
import 'package:pragati/MainScreens/mainPage.dart';
import 'package:pragati/MainScreens/registrationScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

DatabaseReference userRef = FirebaseDatabase.instance.ref().child("users");

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            fontFamily: 'Brand Bold',
            primarySwatch: Colors.orange,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        initialRoute: FirebaseAuth.instance.currentUser == null
            ? Splash.idScreen
            : MainScreen.idScreen,
        routes: {
          Splash.idScreen: (context) => Splash(),
          GetStartedScreen.idScreen: (context) => GetStartedScreen(),
          LoginScreen.idScreen: (context) => LoginScreen(),
          RegistrationScreen.idScreen: (context) => RegistrationScreen(),
          MainScreen.idScreen: (context) => MainScreen(),
        });
  }
}
