import 'package:flutter/material.dart';

class QuizeApp1 extends StatefulWidget {
  const QuizeApp1({super.key});

  @override
  State<StatefulWidget> createState() => _QuizeAppState();
}

// ignore: camel_case_types
class questionModel {
  final String? question;
  final List<String>? options;
  final int? answer;
  const questionModel({this.question, this.options, this.answer});
}

class _QuizeAppState extends State {
  int questionScaffold = -1;
  int questionINdex = 0;
  int langIndex = -1;

  List questionList = [
    //first java
    [
      const questionModel(
        question: "Who is the developer of  the Java Programing Language?",
        options: [
          "Dannis Ritchie",
          "james Goslin",
          "Bjarna Stroustrup",
          "Jebs Bezos"
        ],
        answer: 1,
      ),
      const questionModel(
        question: "What is the file Extension for java Executable code?",
        options: [" .java ", " .class ", " .exe ", " .gpg"],
        answer: 1,
      ),
      const questionModel(
        question: "Which one is not part of Execution System?",
        options: ["Interpeter", "JNI", "JIT", "Garbage Collector"],
        answer: 1,
      ),
      const questionModel(
        question: "Which one is the not part of JVM Architecture?",
        options: [
          "Classloader SubSystem",
          "Native Method Librery",
          " .class file",
          "javac Compiler"
        ],
        answer: 3,
      ),
      const questionModel(
        question: "What is Old Name of java language?",
        options: ["Java2", "oak", "Java", "Nothing"],
        answer: 1,
      ),
    ],
    //second JvaScript
    [
      const questionModel(
        question: "Javascript is an _______ language?",
        options: [
          "Object-Oriented",
          "Object-Based",
          "Procedural",
          "None of the above"
        ],
        answer: 0,
      ),
      const questionModel(
        question:
            "Which of the following keywords is used to define a variable in Javascript?",
        options: ["var", "let", "Both A & B", "Can not Say"],
        answer: 2,
      ),
      const questionModel(
        question: "How can a datatype be declared to be a constant type?",
        options: ["constant", "var", "let", "const"],
        answer: 3,
      ),
      const questionModel(
        question: "Which of the following are closures in Javascript?",
        options: ["Variables", "Functions", "Objects", "All of the Above"],
        answer: 3,
      ),
      const questionModel(
        question: "Which of the following is not a Javascript framework?",
        options: ["Node", "Cassandra", "React", "Vue"],
        answer: 1,
      ),
    ],
    //Flutter
    [
      const questionModel(
        question:
            " Which programming language is used for Flutter development?",
        options: ["Java", "Swift", "Dart", " Python"],
        answer: 2,
      ),
      const questionModel(
        question: "Which widget is used to create a button in Flutter?",
        options: ["Text", "Image", " IconButton", "RaisedButton"],
        answer: 3,
      ),
      const questionModel(
        question:
            "Which widget is used to create a text input field in Flutter?",
        options: ["TextField", "Text", "TextInput", " InputField"],
        answer: 0,
      ),
      const questionModel(
        question: "Which widget is used to create a drawer in Flutter?",
        options: [
          "DrawerWidget",
          " DrawerLayout",
          " Drawer",
          " NavigationDrawer"
        ],
        answer: 2,
      ),
      const questionModel(
        question:
            "Which widget is used to create a text input field in Flutter?",
        options: ["TextField", "InputField", " TextInput", "TextWidget"],
        answer: 0,
      ),
    ],
    //Dart
    [
      const questionModel(
        question: " Dart is Originaly developed by?",
        options: ["Microsoft", "Google", "IBM", "Facebook"],
        answer: 1,
      ),
      const questionModel(
        question: "Which of these is not a keyword in dart?",
        options: ["factory", "yeild", "export", "scan"],
        answer: 3,
      ),
      const questionModel(
        question: "Dart has Multiple Interface?",
        options: ["True", "False ", "Cant be true or false", "Can not Say"],
        answer: 0,
      ),
      const questionModel(
        question: "Dart programing run in ____ models?",
        options: ["2", " 3", "4", "5"],
        answer: 0,
      ),
      const questionModel(
        question: "Dart is Object oriented Language?",
        options: ["Yes", "No", "Can be Yes Or No", "Can Not Say"],
        answer: 1,
      ),
    ],
    //c lang
    [
      const questionModel(
        question:
            "Which operator is used to continue the definition of macro in the next line?",
        options: [" #", "##", " |", "\\"],
        answer: 3,
      ),
      const questionModel(
        question: " Identify the C compiler of UNIX?",
        options: [" gcc", " cc", "Borland", " vc++"],
        answer: 1,
      ),
      const questionModel(
        question: "Single Line Comment // is also called.?",
        options: [
          "C++ Style Comment",
          "Java Style Comment",
          " PHP Style Commente",
          "All the above"
        ],
        answer: 3,
      ),
      const questionModel(
        question: "Find an integer constant?",
        options: ["3.145", " 34", "125", "None of the above"],
        answer: 1,
      ),
      const questionModel(
        question: "Each statement in a C program should end with.?",
        options: [
          "Semicolon ;",
          "Colon :",
          "Period . (dot symbol)",
          "None of the above."
        ],
        answer: 0,
      ),
    ],
    //c++
    [
      const questionModel(
        question:
            "Identify the correct extension of the user-defined header file in C++?",
        options: [" .cpp", " .hg", " .h", ".hf"],
        answer: 2,
      ),
      const questionModel(
        question: " Identify the incorrect constructor type?",
        options: [
          " Friend Constructor",
          " Default Constructor",
          "Parameterized Constructor",
          " Copy Constructor"
        ],
        answer: 0,
      ),
      const questionModel(
        question: "C++ uses which approach.?",
        options: ["right-left", "Top-dowm", "left-right", "bottom-up"],
        answer: 3,
      ),
      const questionModel(
        question: "Which of the following is 'address of operator'",
        options: [" * ", " & ", " [] ", " && "],
        answer: 1,
      ),
      const questionModel(
        question: "When can an inline function be expanded?",
        options: [
          "Runtime",
          "Compile time",
          "Never gets expanded",
          "All of the above."
        ],
        answer: 1,
      ),
    ],
    //HTML
    [
      const questionModel(
        question: "What does the abbreviation HTML stand for?",
        options: [
          "HyperText Markup Language",
          "HighText Markup Language",
          "HyperText Markdown Language",
          "None of the above"
        ],
        answer: 0,
      ),
      const questionModel(
        question: " How to create an ordered list in HTML?",
        options: [" <ul>", " <ol>", "<href>", " <b>"],
        answer: 1,
      ),
      const questionModel(
        question: "HTML files are saved by default with the extension?",
        options: [" .html", ".h", ".ht", "None of the above"],
        answer: 0,
      ),
      const questionModel(
        question:
            "What are the attributes used to change the size of an image?",
        options: [
          " Width and Height ",
          "Big and Small",
          " Top and bottom ",
          "None of the above"
        ],
        answer: 0,
      ),
      const questionModel(
        question: "WWhat tag is used to render an image on a webpage?",
        options: ["img", "src", "image", "None of the above."],
        answer: 1,
      ),
    ],
    //CSS
    [
      const questionModel(
        question:
            "Which of the following tag is used to embed css in html page?",
        options: ["<css>", " <!DOCTYPE html>", "<script>", " <style>"],
        answer: 3,
      ),
      const questionModel(
        question:
            " Which of the following CSS selectors are used to specify a group of elements?",
        options: ["  tag", "  id", " class", " both class and tag"],
        answer: 1,
      ),
      const questionModel(
        question:
            "Which of the following CSS framework is used to create a responsive design?",
        options: [" django", "rails", " larawell", " bootstrap"],
        answer: 3,
      ),
      const questionModel(
        question:
            "Which of the following type of HTML tag is used to define an internal style sheet?",
        options: ["<style> ", " <link>", "  <class>", " <script>"],
        answer: 0,
      ),
      const questionModel(
        question:
            "Which of the following are the CSS Extension Prefixes for Webkit?",
        options: ["-chrome", " -webkit", "-o-", "-web"],
        answer: 1,
      ),
    ],
    //Python
    [
      const questionModel(
        question: "Who developed Python Programming Language?",
        options: [
          "Wick van Rossum",
          "  Rasmus Lerdorf",
          "Guido van Rossum",
          " Niene Stom"
        ],
        answer: 2,
      ),
      const questionModel(
        question: " Is Python case sensitive when dealing with identifiers?",
        options: [
          "  no",
          " yes",
          " machine dependent",
          " none of the mentioned"
        ],
        answer: 1,
      ),
      const questionModel(
        question: "All keywords in Python are in _________?",
        options: [
          " Capitalized",
          " lower case",
          " UPPER CASE",
          "None of the mentioned"
        ],
        answer: 3,
      ),
      const questionModel(
        question: "Which keyword is used for function in Python language?",
        options: [" Function", " def", " Fun", "  Define"],
        answer: 1,
      ),
      const questionModel(
        question:
            "Which of the following character is used to give single-line comments in Python?",
        options: [" //", " #", " !", "/*"],
        answer: 1,
      ),
    ],
    // Spring boot
    [
      const questionModel(
        question: "Spring Boot is used for developing?",
        options: [
          "Web applications",
          " Distributed applications",
          "Microservices",
          " All of the above"
        ],
        answer: 3,
      ),
      const questionModel(
        question:
            " How can a Spring Boot application be packaged and distributed?",
        options: [
          " As a JAR file",
          " As a WAR file",
          " As a ZIP file",
          " All of the above"
        ],
        answer: 3,
      ),
      const questionModel(
        question:
            " Which Spring annotation is used to handle HTTP POST requests?",
        options: [
          " @GetMapping",
          "@PostMapping",
          " @CreateMapping",
          "@PutMapping"
        ],
        answer: 1,
      ),
      const questionModel(
        question: "Which is the default HTML template in Spring Boot?",
        options: [" JSP", " Freemarker", " Thymeleaf", "  Groovy"],
        answer: 2,
      ),
      const questionModel(
        question:
            "What is the default Logging implementation offered by Spring Boot?",
        options: [
          "By using Log4j",
          " By using Logback",
          " By using SLF4J ",
          "By using JUL"
        ],
        answer: 1,
      ),
    ],
  ];
  int selectedIndex = -1;
  int correctAnswer = 0;
  void questionValidity() {
    if (selectedIndex == -1) {
      return;
    }
    if (selectedIndex == questionList[langIndex][questionINdex].answer) {
      correctAnswer += 1;
    }
    questionINdex += 1;
    if (selectedIndex != -1) {
      if (questionINdex == questionList[langIndex].length) {
        questionScaffold = 0;
      }
      setState(() {
        selectedIndex = -1;
      });
    }
  }

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
    if (selectedIndex != -1) {
      if (buttonIndex == questionList[langIndex][questionINdex].answer) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectedIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  Scaffold quizeScaffold() {
    if (questionScaffold == 1) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizeApp",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color: Colors.orange),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 85, 113, 128),
        ),
        body: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 229, 209, 35),
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black, offset: Offset(5, 5))
                ]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Question : ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "${questionINdex + 1}/${questionList[langIndex].length}",
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 400,
                  height: 3,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  child: Text(
                    "${questionList[langIndex][questionINdex].question}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: 420,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 94, 22, 104),
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(color: Colors.black, offset: Offset(5, 5))
                  ]),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 60,
                    width: 380,
                    child: ElevatedButton(
                      onPressed: () {
                        if (selectedIndex == -1) {
                          selectedIndex = 0;
                          setState(() {});
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: checkAnswer(0),
                      ),
                      child: Text(
                          "A. ${questionList[langIndex][questionINdex].options[0]}"),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: 60,
                    width: 380,
                    child: ElevatedButton(
                      onPressed: () {
                        if (selectedIndex == -1) {
                          selectedIndex = 1;
                          setState(() {});
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: checkAnswer(1),
                      ),
                      child: Text(
                          "B. ${questionList[langIndex][questionINdex].options[1]}"),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: 60,
                    width: 380,
                    child: ElevatedButton(
                      onPressed: () {
                        if (selectedIndex == -1) {
                          selectedIndex = 2;
                          setState(() {});
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: checkAnswer(2),
                      ),
                      child: Text(
                          "C. ${questionList[langIndex][questionINdex].options[2]}"),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: 60,
                    width: 380,
                    child: ElevatedButton(
                      onPressed: () {
                        if (selectedIndex == -1) {
                          selectedIndex = 3;
                          setState(() {});
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: checkAnswer(3),
                      ),
                      child: Text(
                          "D. ${questionList[langIndex][questionINdex].options[3]}"),
                    ),
                  ),
                ],
              )),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 244, 209, 103),
          onPressed: () {
            questionValidity();
          },
          child: const Icon(
            Icons.forward,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 85, 113, 128),
      );
    } else if (questionScaffold == 0) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 232, 156),
          title: const Text(
            "QuizeApp",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 80, 49, 2)),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          height: 550,
          width: 340,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color.fromARGB(255, 102, 43, 43),
                width: 5,
              ),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.black,
                    offset: Offset(10, 10)),
                BoxShadow(
                    color: Color.fromARGB(255, 71, 31, 31),
                    offset: Offset(7, 7)),
              ],
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "images/trophy.jpg",
                height: 250,
                width: 200,
              ),
              const Text(
                "Congratulation!!!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Your Score",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "$correctAnswer/${questionList[langIndex].length}",
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.green),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      selectedIndex = -1;
                      questionINdex = 0;
                      questionScaffold = -2;
                      correctAnswer = 0;
                      setState(() {});
                    },
                    child: const Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      selectedIndex = -1;
                      questionINdex = 0;
                      questionScaffold = 1;
                      correctAnswer = 0;
                      setState(() {});
                    },
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  )
                ],
              )
            ],
          ),
        )),
        backgroundColor: Colors.amber,
      );
    } else if (questionScaffold == -1) {
      return Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Image.asset("images/startImage.jpg"),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                  height: 80,
                  width: 150,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 45, 203, 50)),
                          shape: MaterialStatePropertyAll(CircleBorder(
                              side: BorderSide.none, eccentricity: 1))),
                      onPressed: () {
                        // questionINdex = 0;
                        questionScaffold = -2;

                        setState(() {});
                      },
                      child: const Text(
                        "Start",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ))),
            ],
          ),
        ),
        backgroundColor: Colors.black,
      );
    } else {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 255, 232, 156),
            title: const Text(
              "Quiz App",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.orange),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //first button java
                      Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black,
                                  offset: Offset(10, 10)),
                              BoxShadow(
                                  color: Color.fromARGB(255, 62, 35, 35),
                                  offset: Offset(3, 4))
                            ],
                            border: Border.all(
                                color: const Color.fromARGB(255, 111, 73, 73),
                                width: 3)),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            langIndex = 0;
                            questionScaffold = 1;
                            setState(() {});
                          },
                          child: Image.asset(
                            "images/java.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      //second burron javaCript
                      Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black,
                                  offset: Offset(10, 10)),
                              BoxShadow(
                                  color: Color.fromARGB(255, 62, 35, 35),
                                  offset: Offset(3, 4))
                            ],
                            border: Border.all(
                                color: const Color.fromARGB(255, 111, 73, 73),
                                width: 3)),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            langIndex = 1;
                            questionScaffold = 1;

                            setState(() {});
                          },
                          child: Image.asset("images/javaScript.png"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //third button Flutter
                      Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black,
                                  offset: Offset(10, 10)),
                              BoxShadow(
                                  color: Color.fromARGB(255, 62, 35, 35),
                                  offset: Offset(3, 4))
                            ],
                            border: Border.all(
                                color: const Color.fromARGB(255, 111, 73, 73),
                                width: 3)),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            langIndex = 2;
                            questionScaffold = 1;
                            setState(() {});
                          },
                          child: Image.asset("images/flutter.jpg"),
                        ),
                      ),
                      //fourth button Dart
                      Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black,
                                  offset: Offset(10, 10)),
                              BoxShadow(
                                  color: Color.fromARGB(255, 62, 35, 35),
                                  offset: Offset(3, 4))
                            ],
                            border: Border.all(
                                color: const Color.fromARGB(255, 111, 73, 73),
                                width: 3)),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            langIndex = 3;
                            questionScaffold = 1;
                            setState(() {});
                          },
                          child: Image.asset("images/dart.jpg"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //fifth button c
                      Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black,
                                  offset: Offset(10, 10)),
                              BoxShadow(
                                  color: Color.fromARGB(255, 62, 35, 35),
                                  offset: Offset(3, 4))
                            ],
                            border: Border.all(
                                color: const Color.fromARGB(255, 111, 73, 73),
                                width: 3)),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            langIndex = 4;
                            questionScaffold = 1;
                            setState(() {});
                          },
                          child: Image.asset("images/clang.webp"),
                        ),
                      ),
                      //Six button c++;
                      Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black,
                                  offset: Offset(10, 10)),
                              BoxShadow(
                                  color: Color.fromARGB(255, 62, 35, 35),
                                  offset: Offset(3, 4))
                            ],
                            border: Border.all(
                                color: const Color.fromARGB(255, 111, 73, 73),
                                width: 3)),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            langIndex = 5;
                            questionScaffold = 1;
                            setState(() {});
                          },
                          child: Image.asset("images/cpp.png"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //seventh button HTML
                      Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black,
                                  offset: Offset(10, 10)),
                              BoxShadow(
                                  color: Color.fromARGB(255, 62, 35, 35),
                                  offset: Offset(3, 4))
                            ],
                            border: Border.all(
                                color: const Color.fromARGB(255, 111, 73, 73),
                                width: 3)),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            langIndex = 6;
                            questionScaffold = 1;
                            setState(() {});
                          },
                          child: Image.asset("images/html.png"),
                        ),
                      ),
                      //eigth button CSS
                      Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black,
                                  offset: Offset(10, 10)),
                              BoxShadow(
                                  color: Color.fromARGB(255, 62, 35, 35),
                                  offset: Offset(3, 4))
                            ],
                            border: Border.all(
                                color: const Color.fromARGB(255, 111, 73, 73),
                                width: 3)),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            langIndex = 7;
                            questionScaffold = 1;
                            setState(() {});
                          },
                          child: Image.asset("images/css.webp"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //nine button Python
                      Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black,
                                  offset: Offset(10, 10)),
                              BoxShadow(
                                  color: Color.fromARGB(255, 62, 35, 35),
                                  offset: Offset(3, 4))
                            ],
                            border: Border.all(
                                color: const Color.fromARGB(255, 111, 73, 73),
                                width: 3)),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            langIndex = 8;
                            questionScaffold = 1;
                            setState(() {});
                          },
                          child: Image.asset("images/python.png"),
                        ),
                      ),
                      // ten button Spring boot
                      Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black,
                                  offset: Offset(10, 10)),
                              BoxShadow(
                                  color: Color.fromARGB(255, 62, 35, 35),
                                  offset: Offset(3, 4))
                            ],
                            border: Border.all(
                                color: const Color.fromARGB(255, 111, 73, 73),
                                width: 3)),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            langIndex = 9;
                            questionScaffold = 1;
                            setState(() {});
                          },
                          child: Image.asset("images/sprintboot.png"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 158, 174, 183));
    }
  }

  @override
  Widget build(BuildContext context) {
    return quizeScaffold();
  }
}
