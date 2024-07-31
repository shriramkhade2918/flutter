import 'package:flutter/material.dart';
class QuizeApp extends StatefulWidget {
  const QuizeApp({super.key});

  @override
  State createState() => _QuizeAppState();
}

class _QuizeAppState extends State {
  bool quizeScaffold = true;
  int questionIndex = 0;
  int selectedIndex = -1;
  int correctCount = 0;
  List<Map> quizeList = [
    {
      "Question": "Who is founder of Apple?",
      "options": ["Steve Jobs", "Larry Page", "Elon Musk", "Jebs Bezos"],
      "Answer": 0,
    },
    {
      "Question": "Who is founder of Amazon?",
      "options": ["Steve Jobs", "Larry Page", "Elon Musk", "Jebs Bezos"],
      "Answer": 3,
    },
    {
      "Question": "Who is founder of Google?",
      "options": ["Steve Jobs", "Larry Page", "Elon Musk", "Jebs Bezos"],
      "Answer": 1,
    },
    {
      "Question": "Who is founder of Tesla?",
      "options": ["Steve Jobs", "Larry Page", "Elon Musk", "Jebs Bezos"],
      "Answer": 2,
    },
    {
      "Question": "Who is founder of SpaceX?",
      "options": ["Steve Jobs", "Larry Page", "Elon Musk", "Jebs Bezos"],
      "Answer": 2,
    }
  ];
  void nextQuestion() {
    if (selectedIndex == quizeList[questionIndex]["Answer"]) {
      correctCount += 1;
    }
    if (selectedIndex != -1) {
      questionIndex += 1;
    }
    if (questionIndex == quizeList.length) {
      quizeScaffold = false;
    }
    setState(() {
      selectedIndex = -1;
    });
  }

  MaterialStateProperty<Color?>? checkAnswer(int buttonIndex) {
    if (selectedIndex != -1) {
      if (buttonIndex == quizeList[questionIndex]["Answer"]) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (selectedIndex == buttonIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  Scaffold returnScaffold() {
    if (quizeScaffold == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizeApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${quizeList.length}",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Text(
                quizeList[questionIndex]["Question"],
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  selectedIndex = 0;
                  setState(() {});
                },
                child: Text(
                  "A. ${quizeList[questionIndex]["options"][0]}",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  selectedIndex = 1;
                  setState(() {});
                },
                child: Text("B. ${quizeList[questionIndex]["options"][1]}"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  selectedIndex = 2;
                  setState(() {});
                },
                child: Text("C. ${quizeList[questionIndex]["options"][2]}"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  selectedIndex = 3;
                  setState(() {});
                },
                child: Text("D. ${quizeList[questionIndex]["options"][3]}"),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            
            nextQuestion();
          },
          child: const Icon(Icons.forward),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizeApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.network(
              "https://img.freepik.com/premium-psd/gold-trophy-cup-isolated-transparent-background-png_888962-456.jpg?size=338&ext=jpg&ga=GA1.1.672697106.1707609600&semt=ais",
              height: 200,
              width: 250,
            ),
            const SizedBox(
              child: Text(
                "Congratulation!!!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const SizedBox(
              child: Text(
                "Your Score",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Text(
                "$correctCount/${quizeList.length}",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  selectedIndex = -1;
                  quizeScaffold = true;
                  correctCount = 0;
                  questionIndex = 0;
                  setState(() {});
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(color: Colors.red),
                ))
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return returnScaffold();
  }
}
