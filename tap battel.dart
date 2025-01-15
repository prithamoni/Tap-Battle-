
import 'package:flutter/material.dart';

void main() {
  runApp(TapBattleApp());
}

class TapBattleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tap Battle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TapBattleScreen(),
    );
  }
}

class TapBattleScreen extends StatefulWidget {
  @override
  _TapBattleScreenState createState() => _TapBattleScreenState();
}

class _TapBattleScreenState extends State<TapBattleScreen> {
  int player1Score = 0;
  int player2Score = 0;

  void _incrementPlayer1Score() {
    setState(() {
      player1Score++;
    });
  }

  void _incrementPlayer2Score() {
    setState(() {
      player2Score++;
    });
  }

  void _resetScores() {
    setState(() {
      player1Score = 0;
      player2Score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tap Battle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Player 1: $player1Score',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Player 2: $player2Score',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _incrementPlayer1Score,
                  child: Text('Player 1 Tap'),
                ),
                ElevatedButton(
                  onPressed: _incrementPlayer2Score,
                  child: Text('Player 2 Tap'),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _resetScores,
              child: Text('Reset Scores'),
            ),
          ],
        ),
      ),
    );
  }
}
