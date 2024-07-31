import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ImageTogle(),
    );
  }
}

class ImageTogle extends StatefulWidget {
  const ImageTogle({super.key});

  @override
  State<ImageTogle> createState() => _ImageTogleState();
}

class _ImageTogleState extends State<ImageTogle> {
  int indexImage = 0;
  List<String> listimage = [
    "https://images.unsplash.com/photo-1551368321-dddf8a05c459?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8MSUyMDF8ZW58MHx8MHx8fDA%3D",
    "https://c8.alamy.com/comp/2A80YPD/blue-sneakers-on-a-background-of-yellow-autumn-leaves-11-aspect-ratio-2A80YPD.jpg",
    "https://media.istockphoto.com/id/625738570/photo/sitting-sad-and-alone.jpg?s=1024x1024&w=is&k=20&c=moTiRdQgP8yEONX6BrzXh2GSXHQI03BdVWCM1S_DxYA=",
    "https://thumbs.dreamstime.com/z/young-girl-brunette-jeans-shirt-sitting-chair-street-wood-background-girl-sitting-chair-street-wood-186368545.jpg",
    "https://c8.alamy.com/comp/W3M2A4/photo-of-a-pleased-happy-cute-young-student-girl-wearing-eyeglasses-sitting-on-bench-outdoors-in-nature-park-W3M2A4.jpg"
  ];
  void imageChange() {
    setState(() {
      indexImage = indexImage + 1;
      if (indexImage >= listimage.length) {
        indexImage = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ImageTogle"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                listimage[indexImage],
                height: 300,
                width: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    imageChange();
                  },
                  child: const Text("Next"))
            ],
          ),
        ));
  }
}
