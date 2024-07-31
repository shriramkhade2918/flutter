import 'package:flutter/material.dart';

class ModelClass extends StatefulWidget {
  final String infoType;
  const ModelClass({
    required this.infoType,
    super.key,
  });
  @override
  State createState() => _ModelClassState();
}

class _ModelClassState extends State<ModelClass> {
  // String name="controlle${widget.infoType}";
  final TextEditingController controlle = TextEditingController();
  final GlobalKey formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Form(
          key: formkey,
          child: Column(
            children: [
              Text(
                widget.infoType,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              TextFormField(
                controller: controlle,
                validator: (value) {
                  if (controlle.text.isEmpty) {
                    return "Enter valid ${widget.infoType}";
                  }
                },
                decoration: InputDecoration(
                  hintText: "Enter ${widget.infoType}",
                  label: Text("Enter ${widget.infoType}"),
                  border: const OutlineInputBorder(),
                ),
                onSaved: (newValue) {
                //  bool formvalidation= formkey.currentState.;
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
