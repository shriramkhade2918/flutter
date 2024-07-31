import 'package:flutter/material.dart';

class DyanamicListView extends StatefulWidget {
  const DyanamicListView({super.key});

  @override
  State<DyanamicListView> createState() => _DyanamicListViewState();
}

class _DyanamicListViewState extends State<DyanamicListView> {
  List<String> imageList = [
    "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg",
    "https://images.ctfassets.net/hrltx12pl8hq/3Z1N8LpxtXNQhBD5EnIg8X/975e2497dc598bb64fde390592ae1133/spring-images-min.jpg",
    "https://img.freepik.com/free-photo/digital-painting-mountain-with-colorful-tree-foreground_1340-25699.jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1699401600&semt=ais"
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dyanamic-List-View"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(imageList[index]),
            );
          }),
    );
  }
}
