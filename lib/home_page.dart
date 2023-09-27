import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pointsTeamA = 0;
  int _pointsTeamB = 0;

  void _incrementPointsTeamA() {
    setState(() {
      _pointsTeamA++;
    });
  }

  void _decrementPointsTeamA() {
    setState(() {
      _pointsTeamA--;
    });
  }

  void _incrementPointsTeamB() {
    setState(() {
      _pointsTeamB++;
    });
  }

  void _decrementPointsTeamB() {
    setState(() {
      _pointsTeamB--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Time A',
                  style: TextStyle(fontSize: 45),
                ),
                Text(
                  '$_pointsTeamA Pontos',
                  style: const TextStyle(fontSize: 50),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      iconSize: 60,
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        _incrementPointsTeamA();
                      },
                    ),
                    IconButton(
                      iconSize: 60,
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        _decrementPointsTeamA();
                      },
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  iconSize: 40,
                  icon: const Icon(Icons.doorbell),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 40,
                  icon: const Icon(Icons.compare_arrows),
                  onPressed: () {},
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Time B',
                  style: TextStyle(fontSize: 45),
                ),
                Text(
                  '$_pointsTeamB Pontos',
                  style: const TextStyle(fontSize: 50),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      iconSize: 60,
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        _incrementPointsTeamB();
                      },
                    ),
                    IconButton(
                      iconSize: 60,
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        _decrementPointsTeamB();
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
