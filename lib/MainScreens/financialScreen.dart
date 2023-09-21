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
            child: Container(
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
                                            fontSize: 20,
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
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          width: 200,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 221, 230, 238),
                                Color.fromARGB(255, 145, 226, 238),
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
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          width: 200,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 221, 230, 238),
                                Color.fromARGB(255, 202, 238, 145),
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
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          width: 200,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 221, 230, 238),
                                Color.fromARGB(255, 238, 196, 145),
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
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          width: 200,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 221, 230, 238),
                                Color.fromARGB(255, 145, 237, 163),
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
                      height: 154.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
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
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          width: 200,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 221, 230, 238),
                                Color.fromARGB(255, 238, 196, 145),
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
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          width: 200,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 221, 230, 238),
                                Color.fromARGB(255, 188, 234, 139),
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
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          width: 200,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 221, 230, 238),
                                Color.fromARGB(255, 137, 208, 227),
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
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          width: 200,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 221, 230, 238),
                                Color.fromARGB(255, 229, 145, 238),
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
                      height: 154.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
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
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          width: 200,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 221, 230, 238),
                                Color.fromARGB(255, 238, 196, 145),
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
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          width: 200,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 221, 230, 238),
                                Color.fromARGB(255, 188, 234, 139),
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
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          width: 200,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 221, 230, 238),
                                Color.fromARGB(255, 137, 208, 227),
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
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          width: 200,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 221, 230, 238),
                                Color.fromARGB(255, 229, 145, 238),
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
                      height: 154.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      viewportFraction: 0.6,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
