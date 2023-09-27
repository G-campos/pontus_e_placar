import 'package:flutter/material.dart';

class SideTeamCard extends StatefulWidget {
  const SideTeamCard({super.key, required this.team_name});

  final String team_name;

  @override
  State<SideTeamCard> createState() => _SideTeamCardState();
}

class _SideTeamCardState extends State<SideTeamCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  '$widget.points',
                  style: TextStyle(fontSize: 45),
                ),
                Text(
                  'Time $widget.team_name Ganhou',
                  style: const TextStyle(fontSize: 50),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
