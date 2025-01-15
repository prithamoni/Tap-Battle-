import 'package:flutter/material.dart';

void main() {
  runApp(TapBattleGame());
}

class TapBattleGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tap Battle Game'),
        ),
        body: TapBattleScreen(),
      ),
    );
  }
}

class TapBattleScreen extends StatefulWidget {
  @override
  _TapBattleScreenState createState() => _TapBattleScreenState();
}

class _TapBattleScreenState extends State<TapBattleScreen> {
  int leftScore = 0;
  int rightScore = 0;

  void _increaseLeftScore() {
    setState(() {
      leftScore++;
    });
  }

  void _increaseRightScore() {
    setState(() {
      rightScore++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: _increaseLeftScore,
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Left Score: $leftScore',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: _increaseRightScore,
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  'Right Score: $rightScore',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

