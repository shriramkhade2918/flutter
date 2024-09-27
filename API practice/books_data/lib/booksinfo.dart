import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BooksData extends StatefulWidget {
  const BooksData({super.key});

  @override
  State createState() => BooksDataState();
}

class BooksDataState extends State {
  List booksData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BOOKS API"),
      ),
      body: ListView.builder(
          itemCount: booksData.length,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 236, 213, 147)),
                  child: Column(
                    children: [
                      Text("Id : ${booksData[index]["id"]}"),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Name : ${booksData[index]["name"]}"),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("type : ${booksData[index]["type"]}"),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Available : ${booksData[index]["available"]}"),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottumsheet();
        },
      ),
    );
  }

  showModalBottumsheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    // height: 10,
                    width: double.infinity,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      getBooksData();
                    },
                    child: const Text("Get"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // postBooksData();
                    },
                    child: const Text("post"),
                  )
                ],
              ),
            ));
  }

  getBooksData() async {
    Uri url = Uri.parse("https://simple-books-api.glitch.me/books");

    http.Response response = await http.get(url);

    // print(response);
    var bookData = json.decode(response.body);
    print(bookData);
    setState(() {
      booksData = bookData;
    });
  }
}
