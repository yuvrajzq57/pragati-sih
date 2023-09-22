import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pragati/MainScreens/mainPage.dart';

class FinancialPlan extends StatefulWidget {
  static const String idScreen = "financial";
  const FinancialPlan({super.key});

  @override
  State<FinancialPlan> createState() => _FinancialPlanState();
}

class _FinancialPlanState extends State<FinancialPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 240, 240, 240),
          // title: Icon(
          //   Icons.arrow_back,
          //   color: Colors.white,
          // ),
          title: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 1, 0, 0),
            ),
            onPressed: () => {
              Navigator.pushNamedAndRemoveUntil(
                  context, MainScreen.idScreen, (route) => false),
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text("JOBS 101",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 40, 38, 38)))),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CarouselSlider(
                  items: [
                    GestureDetector(
                      child: Container(
                        height: 800,
                        width: 200,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Image.asset(
                              "images/t1.png",
                              height: 120,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Carrier Scope".tr,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 40, 38, 38))),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFFCAA6DA),
                              Color(0xFFE4DAE9),
                            ],
                          ),
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
                      onTap: () {
                        // Navigator.pushNamedAndRemoveUntil(
                        //     context, blog1.idScreen, (route) => false);
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 800,
                        width: 200,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Image.asset(
                              "images/t1.png",
                              height: 120,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Farming and tech".tr,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 40, 38, 38))),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFFC9EDFF),
                              Color(0xFFFFFBA7),
                            ],
                          ),
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
                    GestureDetector(
                      child: Container(
                        height: 800,
                        width: 200,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Image.asset(
                              "images/t3.png",
                              height: 150,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Job Hunt".tr,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 40, 38, 38))),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFF316271),
                              Color(0xFFBFE2ED),
                            ],
                          ),
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
                  ],
                  options: CarouselOptions(
                    height: 250.0,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.6,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                //STOCKS
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text("Stocks & Market",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 40, 38, 38)))),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CarouselSlider(
                  items: [
                    GestureDetector(
                      child: Container(
                        height: 800,
                        width: 200,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Image.asset(
                              "images/t4.png",
                              height: 150,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Intra-Day Trading".tr,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF46183C))),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFF5AAAC3),
                              Color(0xFFE1DC70),
                            ],
                          ),
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
                      onTap: () {
                        // Navigator.pushNamedAndRemoveUntil(
                        //     context, blog2.idScreen, (route) => false);
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 800,
                        width: 200,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Image.asset(
                              "images/t5.png",
                              height: 150,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Fundamental analysis".tr,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 40, 38, 38))),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFF9A4988),
                              Color(0xFFF7B9E9),
                            ],
                          ),
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
                    GestureDetector(
                      child: Container(
                        height: 800,
                        width: 200,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Image.asset(
                              "images/t6.png",
                              height: 120,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Cryptocurrency".tr,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 40, 38, 38))),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFFC9EDFF),
                              Color(0xFF68B5DC),
                            ],
                          ),
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
                  ],
                  options: CarouselOptions(
                    height: 250.0,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.6,
                  ),
                ),

                //MONEY mAINTAINENCE
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text("Money Maintainence",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 40, 38, 38)))),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CarouselSlider(
                  items: [
                    GestureDetector(
                      child: Container(
                        height: 800,
                        width: 200,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Image.asset(
                              "images/t7.png",
                              height: 120,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "UPI & Digitransaction".tr,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 40, 38, 38))),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFF32C7F6),
                              Color(0xFFD38BFF),
                            ],
                          ),
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
                      onTap: () {
                        // Navigator.pushNamedAndRemoveUntil(
                        //     context, blog3.idScreen, (route) => false);
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 800,
                        width: 200,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Image.asset(
                              "images/t8.png",
                              height: 150,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Planning Money".tr,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 40, 38, 38))),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFF6EF7DE),
                              Color(0xFFDAC400),
                            ],
                          ),
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
                    GestureDetector(
                      child: Container(
                        height: 800,
                        width: 200,
                        child: Column(
                          children: [
                            Image.asset(
                              "images/t9.png",
                              height: 180,
                            ),
                            Text(
                              "Savings & investement".tr,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 40, 38, 38))),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFFE4B5FA),
                              Color(0xFFBB66E4),
                            ],
                          ),
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
                  ],
                  options: CarouselOptions(
                    height: 250.0,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.6,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}
