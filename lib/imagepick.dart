import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImagePick extends StatefulWidget {
  const ImagePick({Key? key}) : super(key: key);

  @override
  State<ImagePick> createState() => _ImagePickState();
}

class _ImagePickState extends State<ImagePick> {

  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);

    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Picker"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                MaterialButton(
                    color: Colors.grey,
                    child: const Text("Pick Image from Gallery",),
                    onPressed: () {
                      pickImage();
                    }
                ),
                MaterialButton(
                    color: Colors.grey,
                    child: const Text("Pick Image from Camera",),
                    onPressed: () {
                      pickImageC();
                    }
                ),
                SizedBox(height: 20,),
                Container(
                    padding: EdgeInsets.all(20),
                    child: image != null ? Image.file(image!): Text("No image selected")
                )
              ],
            ),
          ),
        )
    );
  }
}