import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pragati/MainScreens/mainPage.dart';

class UPIREV extends StatefulWidget {
  static const String idScreen = "lcc";
  const UPIREV({super.key});

  @override
  State<UPIREV> createState() => _UPIREVState();
}

class _UPIREVState extends State<UPIREV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 228, 228, 228),
        title: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          onPressed: () => {
            Navigator.pushNamedAndRemoveUntil(
                context, MainScreen.idScreen, (route) => false),
          },
        ),
      ),
      body: Container(
        width: 500,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.centerLeft,
            colors: [
              Color.fromARGB(255, 207, 162, 235),
              Color.fromARGB(255, 144, 218, 241),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 23,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  " UPI: Revolutionizing\n Digital Payments in\n India",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "images/upi.png",
              height: 150,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  " In a world where digital transactions have\n become the norm, the Unified Payments\n Interface (UPI) has emerged as a game-\nchanger in India's financial landscape. This\n revolutionary system has simplified and \nstreamlined digital payments, making them\n accessible to millions. In this brief blog, we'll \nexplore the key features and impact of UPI.\n",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  " What is UPI?\n The Unified Payments Interface (UPI) is a\n real-time payment system developed by\n the National Payments Corporation of India. ",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
