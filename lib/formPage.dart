import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016075_elicaputri/main.dart';

String nama = "", genre = "", artist = "";

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final controllerNama = TextEditingController();
  final controllerGenre = TextEditingController();
  final controllerArtist = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Elica Putri - Music Player")),
        backgroundColor: Color.fromARGB(255, 20, 187, 157),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: controllerNama,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Nama",
                labelText: "Nama",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: controllerGenre,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Genre Musik Favorit?",
                labelText: "Genre Musik Favorit?",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: controllerArtist,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Penyanyi Favorit?",
                labelText: "Penyanyi Favorit?",
              ),
            ),
          ),
          ElevatedButton(
              onPressed: (() {
                setState(() {
                  nama = controllerNama.value.text;
                  genre = controllerGenre.value.text;
                  artist = controllerArtist.value.text;
                  CustomAlert(
                    context,
                    "Selamat datang di Music Player!\nGenre pilihan kamu adalah $genre, \nPenyanyi pilihan $artist",
                  );
                });
              }),
              child: const Text("Selesai")),
        ],
      ),
    );
  }
}

Future<dynamic> CustomAlert(BuildContext context, String pesan) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.black54,
        title: Text(
          "Halo $nama!",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        content: Text(
          pesan,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.to(() => HomePage());
            },
            child: const Text("OK"),
          ),
        ],
      );
    },
  );
}
