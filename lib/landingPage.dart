import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:posttest7_1915016075_elicaputri/formPage.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 150,
                width: lebar,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Welcome to Music Player!\nTemukan genre musik favorit kamu hanya di music player!\nNikmati lagu dari artist populer seluruh dunia kapanpun dan dimanapun.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color.fromARGB(255, 8, 70, 59),
                      Color.fromARGB(255, 18, 152, 127),
                    ],
                  ),
                ),
              ),
              MyGenres(
                genre: "POP",
                tinggiContainer: 270,
                lebarContainer: lebar,
                gambar: "assets/genre/landscape6.png",
              ),
              MyGenres(
                genre: "ROCK",
                tinggiContainer: 310,
                lebarContainer: lebar,
                gambar: "assets/genre/landscape9.jpg",
              ),
              MyGenres(
                genre: "CLASSIC",
                tinggiContainer: 330,
                lebarContainer: lebar,
                gambar: "assets/genre/landscape7.jpg",
              ),
              MyGenres(
                genre: "EDM",
                tinggiContainer: 280,
                lebarContainer: lebar,
                gambar: "assets/genre/landscape8.jpg",
              ),
              GestureDetector(
                child: HoverContainer(
                  height: 70,
                  width: lebar,
                  decoration: const BoxDecoration(
                    color: Colors.black87,
                  ),
                  hoverDecoration: const BoxDecoration(
                    color: Colors.black54,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text(
                      "Masuk ke Music Player",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Get.to(() => FormPage());
                },
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.black87,
    );
  }
}

class MyGenres extends StatelessWidget {
  const MyGenres({
    Key? key,
    this.lebarContainer,
    required this.genre,
    this.gambar,
    required this.tinggiContainer,
  }) : super(key: key);

  final double tinggiContainer;
  final lebarContainer;
  final String genre;
  final gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: tinggiContainer,
      width: lebarContainer,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(gambar),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 200, right: 20),
        child: Text(
          genre,
          textAlign: TextAlign.end,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
