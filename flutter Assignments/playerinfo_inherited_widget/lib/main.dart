import 'package:flutter/material.dart';
import 'package:playerinfo_inherited_widget/displayInfo.dart';

void main() {
  runApp(const MyApp());
}

class PlayerInfo extends InheritedWidget {
  String playerName;
  String state;
  String team;
  PlayerInfo({
    super.key,
    required this.playerName,
    required this.state,
    required this.team,
    required super.child,
  });

  static PlayerInfo of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(PlayerInfo oldWidget) {
    return playerName != oldWidget.playerName ||
        state != oldWidget.state ||
        team != oldWidget.state;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayerInfo(
      playerName: "",
      state: "",
      team: "",
      child: const MaterialApp(
        home: PlayerData(),
      ),
    );
  }
}

class PlayerData extends StatefulWidget {
  const PlayerData({super.key});

  @override
  State createState() => _PlayerDataState();
}

class _PlayerDataState extends State<PlayerData> {
  final TextEditingController name = TextEditingController();
  final TextEditingController state = TextEditingController();
  final TextEditingController team = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final localData = PlayerInfo.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Player Information"),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("player Name "),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: name,
              validator: (value) {
                if (name.text.isEmpty) {
                  return "Enter the player Name";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "enter PlayerName",
                  label: Text("Enter PlayerName")),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("State Name "),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: state,
              validator: (value) {
                if (state.text.isEmpty) {
                  return "Enter the State Name";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "enter StateName",
                  label: Text("Enter StateName")),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(" Team Name "),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: team,
              validator: (value) {
                if (team.text.isEmpty) {
                  return "Enter the TeamName";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "enter TeamName",
                  label: Text("Enter TeamName")),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    bool controlerValid = _formkey.currentState!.validate();
                    if (name.text.isNotEmpty &&
                        state.text.isNotEmpty &&
                        team.text.isNotEmpty) {
                      localData.playerName = name.text.trim();
                      localData.state = state.text.trim();
                      localData.team = state.text.trim();
                      name.clear();
                      team.clear();
                      state.clear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const DisplayInfo())),
                      );
                    }
                    // setState(() {});
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    alignment: Alignment.center,
                    color: Colors.green,
                    child: const Text(
                      "Add",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
