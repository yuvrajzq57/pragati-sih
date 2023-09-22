import 'package:flutter/material.dart';
import 'package:pragati/MainScreens/mainPage.dart';
import 'package:pragati/utilities/jobsBlock.dart';

class GovtJobs extends StatefulWidget {
  static const String idScreen = "gjob";
  const GovtJobs({super.key});

  @override
  State<GovtJobs> createState() => _GovtJobsState();
}

class _GovtJobsState extends State<GovtJobs> {
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
          child: Container(
            child: Column(children: [
              Jobs(),
              Jobs(),
              Jobs(),
            ]),
          ),
        ));
  }
}
