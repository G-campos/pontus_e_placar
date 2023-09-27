import 'package:flutter/material.dart';

class SideTeamCard extends StatefulWidget {
  const SideTeamCard({super.key, required this.title});

  final String title;

  @override
  State<SideTeamCard> createState() => _SideTeamCardState();
}

class _SideTeamCardState extends State<SideTeamCard> {
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
