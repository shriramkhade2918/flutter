import 'package:flutter/material.dart';
import 'package:playerinfo_inherited_widget/main.dart';

class DisplayInfo extends StatefulWidget {
  const DisplayInfo({super.key});

  @override
  State createState() => _DisplayInfoState();
}

class _DisplayInfoState extends State {
  @override
  Widget build(BuildContext context) {
    final LocalData = PlayerInfo.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Player Info"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Player Name :",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Text(
                LocalData.playerName,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "State :",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Text(
                LocalData.state,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Team Name :",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Text(
                LocalData.team,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              LocalData.team = "CSK";
              setState(() {
                
              });
            },
            child: const Text("Change Team "),
          )
        ],
      ),
    );
  }
}
