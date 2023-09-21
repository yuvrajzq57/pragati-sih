import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pragati/GameComponentsQuiz/Components/question_controller.dart';
import 'package:pragati/GameComponentsQuiz/gameScreens/body.dart';

class QuizScreen extends StatelessWidget {
  static const String idScreen = "quizscreen";
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          ElevatedButton(
              onPressed: _controller.nextQuestion, child: const Text("Skip")),
        ],
      ),
      body: Body(),
    );
  }
}
