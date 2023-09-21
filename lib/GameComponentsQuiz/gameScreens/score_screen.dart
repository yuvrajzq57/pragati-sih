import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pragati/GameComponentsQuiz/Components/colors.dart';
import 'package:pragati/GameComponentsQuiz/Components/question_controller.dart';
import 'package:pragati/MainScreens/gamesScreen.dart';

class ScoreScreen extends StatelessWidget {
  static const String idScreen = "scorescreen";
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("images/bg.png", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 3),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, GamesScreen.idScreen, (route) => false);
                },
                child: Text(
                  "GO BACK",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
