import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Jobs extends StatelessWidget {
  const Jobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 223, 149, 144),
          boxShadow: [
            BoxShadow(
                blurRadius: 14.0,
                color: Color.fromARGB(255, 183, 182, 182),
                offset: Offset(
                  0,
                  0,
                )),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        height: 120,
        width: 500,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "TyperWriter",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFFFFFF),
                        textBaseline: TextBaseline.ideographic),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "A job vacancy for typewriter \nin XYZ Company",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFFFFF),
                        textBaseline: TextBaseline.ideographic),
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
