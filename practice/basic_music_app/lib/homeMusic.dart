import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MusicApp extends StatefulWidget {
  const MusicApp({super.key});

  @override
  State createState() => MusicAppState();
}

class MusicAppState extends State {
  final audioPlayer = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Music App"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 500,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    "assets/images/DSC_7266.JPG",
                    fit: BoxFit.cover,
                  )),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text("First Song"),
          const SizedBox(
            height: 15,
          ),
          Slider(
            min: 0,
            max: duration.inSeconds.toDouble(),
            value: position.inSeconds.toDouble(),
            onChanged: (value) {},
          ),
          // Row(
          //   children: [Text("${formatTime(position)}")],
          // ),
          const SizedBox(
            height: 15,
          ),
          IconButton(
            onPressed: () {
              flag = !flag;
              setState(() {
                // if (flag) {
                //   await audioPlayer.pause();
                // } else {
                //   String url = "https://pixabay.com/music/pop-bechain-hu-acoustic-version-198550/";
                //   await audioPlayer.play();
                // }
              });
            },
            icon: flag == false
                ? const Icon(Icons.play_arrow_rounded)
                : const Icon(Icons.pause),
          )
        ],
      ),
    );
  }
}
