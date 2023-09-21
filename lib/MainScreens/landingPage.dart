import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pragati/MainScreens/getStartedPage.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Splash extends StatefulWidget {
  static const String idScreen = "splashScreen";

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 5500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => GetStartedScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage('images/splashScreen.png'),
              ),
              SizedBox(
                height: 100,
              ),
              Image.asset("images/logo.png"),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'Pragati',
                    textStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF062833),
                        letterSpacing: 3,
                      ),
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                  TyperAnimatedText(
                    'प्रगति',
                    textStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF062833),
                        letterSpacing: 3,
                      ),
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                  TyperAnimatedText(
                    'ಪ್ರಗತಿ',
                    textStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF062833),
                        letterSpacing: 3,
                      ),
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              )),
            ],
          ),
        ));
  }
}
