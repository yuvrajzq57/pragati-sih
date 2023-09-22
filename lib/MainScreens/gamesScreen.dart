import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pragati/GameComponentsFlash/start_page.dart';
import 'package:pragati/GameComponentsQuiz/gameScreens/start_screen.dart';
import 'package:pragati/MainScreens/mainPage.dart';
import 'package:pragati/MainScreens/ticTacToe.dart';

class GamesScreen extends StatefulWidget {
  static const String idScreen = "games Screen";
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 9, 9),
        leading: BackButton(
          onPressed: () => Navigator.pushNamedAndRemoveUntil(
              context, MainScreen.idScreen, (route) => false),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 154,
                  width: 350,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 221, 230, 238),
                        Color.fromARGB(255, 244, 181, 158),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 14.0,
                          color: Color.fromARGB(255, 198, 194, 194),
                          offset: Offset(
                            10,
                            10,
                          )),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              "Tic Tac Toe",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Image.asset(
                            "images/tictac.png",
                            height: 100,
                            width: 100,
                          ), //add image
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 13,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 8, 8),
                            child: Text(
                              "To Refresh yourself",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, TicTacToe.idScreen,
                    (route) => false); //chanegs to be made
              },
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 154,
                  width: 350,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 221, 230, 238),
                        Color.fromARGB(255, 233, 244, 158),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 14.0,
                          color: Color.fromARGB(255, 198, 194, 194),
                          offset: Offset(
                            10,
                            10,
                          )),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              "Questionaire",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          // Image.asset(
                          //   "images/tictac.png",
                          //   height: 100,
                          //   width: 100,
                          // ), //add image
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 13,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 8, 8),
                            child: Text(
                              "To Refresh yourself",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, StartScreen.idScreen,
                    (route) => false); //chanegs to be made
              },
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 154,
                  width: 350,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 221, 230, 238),
                        Color.fromARGB(255, 194, 158, 244),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 14.0,
                          color: Color.fromARGB(255, 198, 194, 194),
                          offset: Offset(
                            10,
                            10,
                          )),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              "Flash Card",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          // Image.asset(
                          //   "images/tictac.png",
                          //   height: 100,
                          //   width: 100,
                          // ), //add image
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 13,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 8, 8),
                            child: Text(
                              "To Refresh yourself",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context,
                    FlashCardGame.idScreen,
                    (route) => false); //chanegs to be made
              },
            ),
          ],
        ),
      ),
    );
  }
}
