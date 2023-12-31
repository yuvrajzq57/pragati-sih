import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pragati/MainScreens/landingPage.dart';
import 'package:pragati/MainScreens/loginScreen.dart';
import 'package:pragati/MainScreens/mainPage.dart';

class GetStartedScreen extends StatelessWidget {
  static const String idScreen = "getStartedScreen";

  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'ಕನ್ನಡ', 'locale': Locale('kn', 'IN')},
    {'name': 'हिंदी', 'locale': Locale('hi', 'IN')},
    {'name': 'മലയാളം', 'locale': Locale('ml', 'IN')},
  ];

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text('Choose Your Language'),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Text(locale[index]['name']),
                        onTap: () {
                          updateLanguage(locale[index]['locale']);
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.blue,
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(28.0),
                ),
                const SizedBox(
                  height: 80.0,
                ),
                Text(
                  "pragati".tr,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF062833),
                      letterSpacing: 3,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                Image(
                  image: AssetImage('images/logo.png'),
                  height: 72,
                  width: 78,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Unlock Your Potential",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0D3C4B),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Text("changelang".tr),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 124, 197, 222),
                  ),
                  onPressed: () {
                    buildLanguageDialog(context);
                  },
                  child: Text('changelang'.tr),
                ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(25, 15, 15, 8),
                //   child: Row(
                //     children: [
                //       GestureDetector(
                //         child: Container(
                //           child: Column(
                //             children: [
                //               SizedBox(
                //                 height: 20,
                //               ),
                //               Padding(
                //                 padding:
                //                     const EdgeInsets.fromLTRB(2, 15, 0, 18),
                //                 child: Text(
                //                   "English",
                //                   style: GoogleFonts.poppins(
                //                     textStyle: TextStyle(
                //                         fontWeight: FontWeight.w700,
                //                         fontSize: 17,
                //                         color: Colors.white),
                //                   ),
                //                 ),
                //               ),

                //               // Image.asset(
                //               //   "images/mobile.png",
                //               //   height: 60,
                //               //   width: 60,
                //               // )
                //             ],
                //           ),
                //           height: 100,
                //           width: 120,
                //           decoration: BoxDecoration(
                //               boxShadow: [
                //                 BoxShadow(
                //                     blurRadius: 14.0,
                //                     color: Color.fromARGB(255, 198, 194, 194),
                //                     offset: Offset(
                //                       10,
                //                       10,
                //                     )),
                //               ],
                //               color: Color(0xFF5AAAC3),
                //               borderRadius:
                //                   BorderRadius.all(Radius.circular(20))),
                //         ),
                //         onTap: () {
                //           Navigator.pushNamedAndRemoveUntil(
                //               context,
                //               MainScreen.idScreen,
                //               (route) => false); //changes to be made
                //         },
                //       ),
                //       SizedBox(
                //         width: 45,
                //       ),
                //       GestureDetector(
                //         child: Container(
                //           child: Column(
                //             children: [
                //               SizedBox(
                //                 height: 20,
                //               ),
                //               Padding(
                //                 padding:
                //                     const EdgeInsets.fromLTRB(0, 15, 0, 18),
                //                 child: Text(
                //                   "Malayalam",
                //                   style: GoogleFonts.poppins(
                //                     textStyle: TextStyle(
                //                         fontWeight: FontWeight.w700,
                //                         fontSize: 17,
                //                         color: Colors.white),
                //                   ),
                //                 ),
                //               ),

                //               // Image.asset(
                //               //   "images/mobile.png",
                //               //   height: 60,
                //               //   width: 60,
                //               // )
                //             ],
                //           ),
                //           height: 100,
                //           width: 120,
                //           decoration: BoxDecoration(
                //               boxShadow: [
                //                 BoxShadow(
                //                     blurRadius: 14.0,
                //                     color: Color.fromARGB(255, 198, 194, 194),
                //                     offset: Offset(
                //                       10,
                //                       10,
                //                     )),
                //               ],
                //               color: Color(0xFF5AAAC3),
                //               borderRadius:
                //                   BorderRadius.all(Radius.circular(20))),
                //         ),
                //         onTap: () {
                //           Navigator.pushNamedAndRemoveUntil(
                //               context,
                //               MainScreen.idScreen,
                //               (route) => false); //changes to be made
                //         },
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: 60,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF062833),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, LoginScreen.idScreen, (route) => false);
                  },
                  child: Container(
                    height: 49.0,
                    width: 272,
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                      'get_start'.tr,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: "Brand Bold",
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
