import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pragati/MainScreens/chat_screen.dart';
import 'package:pragati/MainScreens/financialScreen.dart';
import 'package:pragati/MainScreens/gamesScreen.dart';
import 'package:pragati/MainScreens/sideScreen.dart';
import 'package:pragati/MainScreens/contactScreen.dart';
import 'package:pragati/MainScreens/videoRecommendation.dart';
import 'package:pragati/ProgressTracker/progressTrack.dart';
import 'package:quickalert/quickalert.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatefulWidget {
  static const String idScreen = "mainscreen";
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void showAlert() {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
      text: 'Transaction Completed Successfully!',
      autoCloseDuration: const Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Scaffold(
            key: scaffoldKey,
            drawer: sideNavigationDrawer(),
            backgroundColor: const Color(0xFFFFFFFF),
            body: SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 48,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "pragati".tr,
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 35.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF062833),
                                    letterSpacing: 3),
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  width: 12,
                                ),
                                GestureDetector(
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFF27444D),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: const Icon(
                                      Icons.info_outline_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                        title: const Text("Information Guide"),
                                        content: const Text(
                                            "You have various features to make your education stronger"),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(ctx).pop();
                                            },
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 195, 126, 85),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(8))),
                                              padding: const EdgeInsets.all(14),
                                              child: const Text("Okay",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 233, 233, 233))),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      CarouselSlider(
                        items: [
                          GestureDetector(
                            child: Container(
                              // ignore: sort_child_properties_last
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 48,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "schlor".tr,
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 40, 38, 38))),
                                      ),
                                      const SizedBox(
                                        width: 45,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          height: 35,
                                        ),
                                        Text(
                                          "More  ",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF0D3C4B))),
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            SizedBox(
                                              width: 19,
                                            ),
                                            Icon(Icons.arrow_circle_right),
                                            SizedBox(
                                              width: 100,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 220,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              height: 200,
                              width: 315,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/scholarship.jpg"),
                                    fit: BoxFit.fill),
                                // color: Color(0xFFA7C5CE),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 14.0,
                                      color: Color.fromARGB(255, 198, 194, 194),
                                      offset: Offset(
                                        0,
                                        0,
                                      )),
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                          Container(
                            height: 200,
                            width: 315,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromARGB(255, 243, 181, 185),
                                  Color.fromARGB(255, 236, 166, 221),
                                ],
                              ),
                              // image: const DecorationImage(
                              //   image: AssetImage(
                              //     "",
                              //   ),
                              //   fit: BoxFit.fill,
                              // ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 14.0,
                                  color: Color.fromARGB(255, 198, 194, 194),
                                  offset: Offset(
                                    0,
                                    0,
                                  ),
                                ),
                              ],

                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFFB1AD37),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      "Government\nJobs",
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 26,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 62,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          "Know More",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      height: 30,
                                      width: 120,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF9A4988),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 14.0,
                                            color: Color.fromARGB(
                                                255, 172, 176, 178),
                                            offset: Offset(
                                              10,
                                              10,
                                            ),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // ignore: sort_child_properties_last
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "Loan's & \nIncentives",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          "Know More",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      height: 30,
                                      width: 120,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color(0xFF5AAAC3),
                                            Color(0xFF316271),
                                          ],
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 14.0,
                                              color: Color.fromARGB(
                                                  255, 172, 176, 178),
                                              offset: Offset(
                                                10,
                                                10,
                                              )),
                                        ],
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            height: 200,
                            width: 315,
                            decoration: const BoxDecoration(
                              // image: DecorationImage(
                              //   image: AssetImage(
                              //     "",
                              //   ),
                              //   fit: BoxFit.fill,
                              // ),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromARGB(255, 230, 232, 234),
                                  Color.fromARGB(255, 74, 177, 193),
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 14.0,
                                    color: Color.fromARGB(255, 198, 194, 194),
                                    offset: Offset(
                                      0,
                                      0,
                                    )),
                              ],
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 154.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(context,
                              RecommendationScreen.idScreen, (route) => false);
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                          child: Container(
                            height: 60,
                            width: 350,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                top: BorderSide(
                                    color: Color.fromARGB(233, 36, 35, 35)),
                                left: BorderSide(
                                    color: Color.fromARGB(233, 36, 35, 35)),
                                right: BorderSide(
                                    color: Color.fromARGB(233, 36, 35, 35)),
                                bottom: BorderSide(
                                    color: Color.fromARGB(233, 36, 35, 35)),
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
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  Icon(Icons.search),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("searc_video".tr)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Explore more",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(25),
                                    child: Row(
                                      children: [
                                        Icon(Icons.bookmark_border),
                                        Text("Tests"),
                                      ],
                                    ),
                                  ),
                                  height: 70,
                                  width: 145,
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 14.0,
                                          color: Color.fromARGB(
                                              255, 198, 194, 194),
                                          offset: Offset(
                                            10,
                                            10,
                                          )),
                                    ],
                                    color: Color(0xFFFFF4CC),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        RecommendationScreen.idScreen,
                                        (route) => false);
                                  },
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.bookmark_border),
                                          Text("Assignment"),
                                        ],
                                      ),
                                    ),
                                    height: 70,
                                    width: 145,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 14.0,
                                            color: Color.fromARGB(
                                                255, 198, 194, 194),
                                            offset: Offset(
                                              10,
                                              10,
                                            )),
                                      ],
                                      color: Color(0xFFBFE5D5),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                                  Color.fromARGB(255, 145, 226, 238),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 0, 0),
                                      child: Text(
                                        "Meet Sakhi",
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
                                      "images/bot.png",
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
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 8, 8),
                                      child: Text(
                                        "A personalized chatbot",
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
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
                              ChatPage.idScreen,
                              (route) => false); //chanegs to be made
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //start from her
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Image.asset("images/game.png"),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Play Educative Games",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    GamesScreen.idScreen, (route) => false);
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "Start",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                height: 48,
                                width: 300,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color(0xFF5AAAC3),
                                      Color(0xFF316271),
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 14.0,
                                        color:
                                            Color.fromARGB(255, 172, 176, 178),
                                        offset: Offset(
                                          10,
                                          10,
                                        )),
                                  ],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.centerLeft,
                            colors: [
                              Color.fromARGB(255, 252, 252, 252),
                              Color.fromARGB(255, 235, 248, 228),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "Attempt to Score Coins",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Color.fromARGB(255, 102, 97, 97),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Container(
                            height: 100,
                            width: 350,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromARGB(255, 221, 230, 238),
                                  Color.fromARGB(255, 237, 220, 136),
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
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 0, 0),
                                      child: Text(
                                        "Progress Tracker",
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    //add image
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
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 8, 8),
                                      child: Text(
                                        "Track you data",
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
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
                              ProgressTracker.idScreen,
                              (route) => false); //chanegs to be made
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(context,
                              FinancialPlan.idScreen, (route) => false);
                        },
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12.0, 12, 12, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "BLOGS",
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 40,
                                          color: Color(0xFF4B126E),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12.0, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "on finance",
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Color(0xFF9A4988),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(6.0, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      " Learn more about\n stocks, jobs and\n money maintainence",
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: Color(0xFF4C2C45),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      FinancialPlan.idScreen, (route) => false);
                                },
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          "Start",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      height: 48,
                                      width: 150,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color(0xFF5AAAC3),
                                            Color(0xFF9E28E6),
                                          ],
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 14.0,
                                              color: Color.fromARGB(
                                                  255, 172, 176, 178),
                                              offset: Offset(
                                                10,
                                                10,
                                              )),
                                        ],
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          height: 300,
                          width: 500,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.centerLeft,
                              colors: [
                                Color.fromARGB(255, 252, 252, 252),
                                Color.fromARGB(255, 236, 219, 244),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: SizedBox(
              height: 78,
              child: BottomNavigationBar(
                backgroundColor: Color.fromARGB(255, 139, 199, 219),
                selectedItemColor: Colors.green,
                items: [
                  BottomNavigationBarItem(
                      icon: IconButton(
                        icon: const Icon(
                          Icons.home,
                          color: Color(0xFF062833),
                          size: 30,
                        ),
                        onPressed: () => {
                          Navigator.pushNamedAndRemoveUntil(
                              context, MainScreen.idScreen, (route) => false),
                        },
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: IconButton(
                        icon: const Icon(
                          Icons.graphic_eq_rounded,
                          color: Color(0xFF062833),
                          size: 30,
                        ),
                        onPressed: () => {
                          Navigator.pushNamedAndRemoveUntil(
                              context, ChatPage.idScreen, (route) => false),
                          // scaffoldKey.currentState?.openDrawer(),
                        },
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: IconButton(
                        icon: const Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 30,
                        ),
                        onPressed: () => {
                          scaffoldKey.currentState?.openDrawer(),
                        },
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: IconButton(
                        icon: const Icon(
                          Icons.compare_arrows_sharp,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 30,
                        ),
                        onPressed: () => {
                          scaffoldKey.currentState?.openDrawer(),
                        },
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: IconButton(
                        icon: const Icon(
                          Icons.radio_button_on_rounded,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 30,
                        ),
                        onPressed: () => {
                          scaffoldKey.currentState?.openDrawer(),
                        },
                      ),
                      label: ''),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
