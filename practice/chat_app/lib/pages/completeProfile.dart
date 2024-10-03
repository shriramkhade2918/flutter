import 'dart:developer';
import 'dart:io';

import 'package:chat_app/model/usermodel.dart';
import 'package:chat_app/pages/homepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class CompleteProfile extends StatefulWidget {
  final UserModel userModel;
  final User fireBaseUser;

  const CompleteProfile(
      {super.key, required this.userModel, required this.fireBaseUser});
  // const CompleteProfile({super.key,this.userModel,this.fireBaseUser});
  // super(Key:key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  File? imageFile;
  TextEditingController fullNameController = TextEditingController();

  void selectimage(ImageSource source) async {
    XFile? pikerFile = await ImagePicker().pickImage(source: source);

    if (pikerFile != null) {
      cropImage(pikerFile);
    }
  }

  void cropImage(XFile file) async {
    CroppedFile? croppedImage = await ImageCropper().cropImage(
      sourcePath: file.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
    );
    if (croppedImage != null) {
      setState(() {
        imageFile = File(croppedImage.path);
      });
    }
  }

  void checkValue() {
    String fullname = fullNameController.text.trim();

    if (fullname == "" || imageFile == null) {
      print("pleas fill all the things");
    } else {
      uploadData();
    }
  }

  void uploadData() async {
    UploadTask uploadTask = FirebaseStorage.instance
        .ref("profilepicture")
        .child(widget.userModel.id.toString())
        .putFile(imageFile as File);

    TaskSnapshot snapshot = await uploadTask;

    String imageurl = await snapshot.ref.getDownloadURL();
    String fullname = fullNameController.text.trim();
    widget.userModel.name = fullname;
    widget.userModel.profilepic = imageurl;

    await FirebaseFirestore.instance
        .collection("uses")
        .doc(widget.userModel.id)
        .set(widget.userModel.toMap())
        .then((value) {
     
      log("data uploaded");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(
              userModel: widget.userModel, firebaseUser: widget.fireBaseUser),
        ),
      );
    });
  }

  void showPhototosOption() {
    showDialog(
        // useSafeArea: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Upload profile picture"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    selectimage(ImageSource.gallery);
                  },
                  leading: Icon(Icons.photo_album),
                  title: Text("Select from galary"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);

                    selectimage(ImageSource.camera);
                  },
                  leading: Icon(Icons.camera_alt),
                  title: Text("Take aphoto"),
                ),
                //  ListTile(
                //   leading: Icon(Icons.camera_alt),
                //   title: Text("Select from galary"),
                // )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // var imageFile2 = imageFile;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Complete Profile"),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              CupertinoButton(
                onPressed: () {
                  showPhototosOption();
                },
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage:
                      (imageFile != null) ? FileImage(imageFile as File) : null,
                  child: imageFile == null
                      ? const Icon(
                          Icons.person,
                          size: 60,
                        )
                      : null,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: fullNameController,
                // obscureText: true,
                decoration: InputDecoration(labelText: " Full Name"),
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoButton(
                onPressed: () {
                  checkValue();
                },
                color: Theme.of(context).colorScheme.secondary,
                child: const Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
