import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pragati/MainScreens/getStartedPage.dart';

class sideNavigationDrawer extends StatelessWidget {
  const sideNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 329.0,
      child: Drawer(
        child: ListView(children: [
          SizedBox(
            height: 165.0,
            child: DrawerHeader(
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("images/user.png"),
                    radius: 35.0,
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hellos",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF062833),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Text(
                        "Profile",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF062833),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const Divider(
            color: Color(0x000000ff),
          ),
          const SizedBox(
            height: 12.0,
          ),

          //Drawer body COntrollers
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Color(0xFF0D3C4B),
              size: 35,
            ),
            title: Text(
              "Settings",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Color(0xFF0D3C4B),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.phone,
              color: Color(0xFF0D3C4B),
              size: 35,
            ),
            title: Text(
              "Contact",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Color(0xFF0D3C4B),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.abc_rounded,
              color: Color(0xFF0D3C4B),
              size: 35,
            ),
            title: Text(
              "Extra Feature!",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Color(0xFF0D3C4B),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 270,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF062833),
                shape: const StadiumBorder(),
              ),
              child: Container(
                height: 50.0,
                width: 100.0,
                padding: const EdgeInsets.all(13.0),
                child: const Text(
                  "Logout",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Brand Bold",
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushNamedAndRemoveUntil(
                    context, GetStartedScreen.idScreen, (route) => false);
              },
            ),
          ),
        ]),
      ),
    );
  }
}
