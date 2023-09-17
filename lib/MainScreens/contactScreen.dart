import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pragati/MainScreens/mainPage.dart';

class ContactScreen extends StatelessWidget {
  static const String idScreen = "contact";

  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF062833),
        // title: Icon(
        //   Icons.arrow_back,
        //   color: Colors.white,
        // ),
        title: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFFFFFFFF),
          ),
          onPressed: () => {
            Navigator.pushNamedAndRemoveUntil(
                context, MainScreen.idScreen, (route) => false),
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Contact",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 30)),
                    ),
                    const SizedBox(
                      height: 37,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 1, 2, 3),
                child: Row(
                  children: [
                    const Icon(
                      Icons.phone_callback,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child: Container(
                        child: const Text(
                          "0797 9041 664",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      onTap: () async {
                        FlutterPhoneDirectCaller.callNumber("7979041664");
                      },
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 2, 3),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone_callback,
                      size: 35,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "1800 5277 777",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 2, 3),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 35,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "jevahanwins@gmail.com",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF062833),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

_callNumber() async {
  const number = '08592119XXXX'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
