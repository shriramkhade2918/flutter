
import 'package:flutter/material.dart';
class question extends StatelessWidget {
  const question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 30,
          width: 100,
          decoration:const  BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40))
          ),
          child: ElevatedButton(
            style:const ButtonStyle(
              shadowColor: MaterialStatePropertyAll(
                Colors.red,

              ),
             // shape: MaterialStatePropertyAll() 
              ),
            
            onPressed: () {},
            child: const Text("button"),
          ),
        ),
      ),
    );
  }
}
