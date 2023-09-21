import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pragati/GameComponentsFlash/start_page.dart';
import 'package:pragati/GameComponentsQuiz/gameScreens/quizScreen.dart';
import 'package:pragati/GameComponentsQuiz/gameScreens/score_screen.dart';
import 'package:pragati/GameComponentsQuiz/gameScreens/start_screen.dart';
import 'package:pragati/MainScreens/chat_screen.dart';
import 'package:pragati/MainScreens/contactScreen.dart';
import 'package:pragati/MainScreens/gamesScreen.dart';
import 'package:pragati/MainScreens/getStartedPage.dart';
import 'package:pragati/MainScreens/landingPage.dart';
import 'package:pragati/MainScreens/loginScreen.dart';
import 'package:pragati/MainScreens/mainPage.dart';
import 'package:pragati/MainScreens/registrationScreen.dart';
import 'package:pragati/MainScreens/ticTacToe.dart';
import 'package:pragati/MainScreens/videoRecommendation.dart';
import 'package:pragati/ProgressTracker/progressTrack.dart';
import 'package:pragati/utilities/forgotPasswordPage.dart';
import 'package:pragati/utilities/localeStrings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await Hive.initFlutter();
  await Hive.openBox("Habit_Database");
  runApp(MyApp());
}

DatabaseReference userRef = FirebaseDatabase.instance.ref().child("users");

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocaleString(),
      locale: Locale('en', 'US'),
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
        ChatPage.idScreen: (context) => ChatPage(),
        ForgotPasswordPage.idScreen: (context) => ForgotPasswordPage(),
        GamesScreen.idScreen: (context) => GamesScreen(),
        ContactScreen.idScreen: (context) => ContactScreen(),
        TicTacToe.idScreen: (context) => TicTacToe(),
        StartScreen.idScreen: (context) => StartScreen(),
        QuizScreen.idScreen: (context) => QuizScreen(),
        ScoreScreen.idScreen: (context) => ScoreScreen(),
        FlashCardGame.idScreen: (context) => FlashCardGame(),
        ProgressTracker.idScreen: (context) => ProgressTracker(),
        VideoRecommendationScreen.idScreen: (context) =>
            VideoRecommendationScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
