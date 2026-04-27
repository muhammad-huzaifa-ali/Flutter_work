import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FileImgWork extends StatefulWidget {
  const FileImgWork({super.key});

  @override
  State<FileImgWork> createState() => _FileImgWorkState();
}

class _FileImgWorkState extends State<FileImgWork> {
  File? image;

  // 📌 REAL FUNCTION
  Future<void> pickImage() async {
    final picker = ImagePicker();

    final pickedFile =
    await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path); // 🔥 Image.file yahan se connect hota hai
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Real Image.file Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // 📌 SHOW IMAGE
            image != null
                ? Image.file(
              image!,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            )
                : const Text("No Image Selected"),

            const SizedBox(height: 20),

            // 📌 BUTTON
            ElevatedButton(
              onPressed: pickImage,
              child: const Text("Pick Image"),
            ),
          ],
        ),
      ),
    );
  }
}