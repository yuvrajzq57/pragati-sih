import 'package:flutter/material.dart';
import 'dart:async';

class MemoryMatchingGame extends StatefulWidget {
  static const String idScreen = "memorymatch";
  @override
  _MemoryMatchingGameState createState() => _MemoryMatchingGameState();
}

class _MemoryMatchingGameState extends State<MemoryMatchingGame> {
  List<String> cardValues = [
    'Cow',
    'Chicken',
    'Tractor',
    'Barn',
    'Horse',
    'Hay',
    'Cow',
    'Chicken',
    'Tractor',
    'Barn',
    'Horse',
    'Hay',
  ];

  List<bool> cardFlips = List<bool>.filled(12, false);
  int previousIndex = -1;
  int currentPair = 0;
  bool isShowing = false;

  @override
  void initState() {
    super.initState();
    cardValues.shuffle();
  }

  void _onCardTap(int index) {
    if (!isShowing && !cardFlips[index]) {
      setState(() {
        cardFlips[index] = true;
        if (previousIndex != -1) {
          isShowing = true;
          if (cardValues[previousIndex] == cardValues[index]) {
            currentPair++;
            if (currentPair == cardValues.length ~/ 2) {
              _showGameEndDialog();
            }
            isShowing = false;
          } else {
            Timer(Duration(seconds: 1), () {
              cardFlips[previousIndex] = false;
              cardFlips[index] = false;
              isShowing = false;
            });
          }
          previousIndex = -1;
        } else {
          previousIndex = index;
        }
      });
    }
  }

  void _showGameEndDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Congratulations!'),
          content: Text('You matched all the cards!'),
          actions: <Widget>[
            TextButton(
              child: Text('Play Again'),
              onPressed: () {
                setState(() {
                  cardFlips = List<bool>.filled(12, false);
                  cardValues.shuffle();
                  currentPair = 0;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memory Matching Game'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _onCardTap(index);
            },
            child: Card(
              color: cardFlips[index] ? Colors.green : Colors.blue,
              child: Center(
                child: Text(
                  cardFlips[index] ? cardValues[index] : 'Tap to reveal',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: cardValues.length,
      ),
    );
  }
}
