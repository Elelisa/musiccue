import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:posttest7_1915016075_elicaputri/detailsPage.dart';
import 'package:posttest7_1915016075_elicaputri/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Welcome",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 20, 187, 157),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text(
                "Home",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Get.to(() => HomePage());
              },
            ),
            ListTile(
              title: const Text(
                "Search",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                "Library",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            "Popular Singer",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              SingerContainer(
                lebar: 150,
                singerImage: "assets/tulus.jpg",
                singer: "Tulus",
              ),
              SingerContainer(
                lebar: 220,
                singerImage: "assets/bts.jpeg",
                singer: "BTS",
              ),
              SingerContainer(
                lebar: 263,
                singerImage: "assets/olivia.jpeg",
                singer: "Olivia Rodrigo",
              ),
              SingerContainer(
                lebar: 140,
                singerImage: "assets/IU.png",
                singer: "IU",
              ),
              SingerContainer(
                lebar: 150,
                singerImage: "assets/urs.jpg",
                singer: "NIKI",
              ),
            ],
          ),
        ),
        const Text(
          "Recently Played",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 5, top: 10, bottom: 20),
              child: Container(
                width: 50,
                height: 80,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/IU.png"),
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: const SongContainer(
                judul: "Through The Night - IU",
                lebarContainer: 140,
                tinggiMedia: 68,
              ),
              onTap: () {
                Get.to(
                  () => DetailsPage(
                    artist: "assets/IU.png",
                    judul: "Through The Night - IU",
                  ),
                );
              },
            ),
            const PlayButton(
              isActive: true,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: Text(
            "Recomended For You",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 5, bottom: 5),
                      child: Container(
                        width: 55,
                        height: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/summertime.jpg"),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: const SongContainer(
                        judul: "Every Summertime - NIKI",
                        lebarContainer: 145,
                        tinggiMedia: 60,
                      ),
                      onTap: () {
                        Get.to(() => DetailsPage(
                              artist: "assets/summertime.jpg",
                              judul: "Every Summertime - NIKI",
                            ));
                      },
                    ),
                    const PlayButton(
                      isActive: false,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 5, bottom: 5),
                      child: Container(
                        width: 50,
                        height: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/fabio.jpg"),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: const SongContainer(
                        judul: "Bertahan Untuk Terluka - Fabio Asher",
                        lebarContainer: 140,
                        tinggiMedia: 60,
                      ),
                      onTap: () {
                        Get.to(
                          () => DetailsPage(
                            artist: "assets/fabio.jpg",
                            judul: "Bertahan Untuk Terluka - Fabio Asher",
                          ),
                        );
                      },
                    ),
                    const PlayButton(
                      isActive: false,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 5, bottom: 5),
                      child: Container(
                        width: 50,
                        height: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/jln.jpg"),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: const SongContainer(
                        judul: "Jalan Tengah - Naura Ayu",
                        lebarContainer: 140,
                        tinggiMedia: 60,
                      ),
                      onTap: () {
                        Get.to(
                          () => DetailsPage(
                            artist: "assets/jln.jpg",
                            judul: "Jalan Tengah - Naura Ayu",
                          ),
                        );
                      },
                    ),
                    const PlayButton(
                      isActive: false,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 5, bottom: 5),
                      child: Container(
                        width: 50,
                        height: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/be.png"),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: const SongContainer(
                        judul: "Telepathy - BTS",
                        lebarContainer: 140,
                        tinggiMedia: 60,
                      ),
                      onTap: () {
                        Get.to(
                          () => DetailsPage(
                            artist: "assets/be.png",
                            judul: "Telepathy - BTS",
                          ),
                        );
                      },
                    ),
                    const PlayButton(
                      isActive: false,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 5, bottom: 5),
                      child: Container(
                        width: 50,
                        height: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/urs.jpg"),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: const SongContainer(
                        judul: "URS - NIKI",
                        lebarContainer: 140,
                        tinggiMedia: 60,
                      ),
                      onTap: () {
                        Get.to(
                          () => DetailsPage(
                            artist: "assets/urs.jpg",
                            judul: "URS - NIKI",
                          ),
                        );
                      },
                    ),
                    const PlayButton(
                      isActive: false,
                    ),
                  ],
                ),
              ],
            )
          ],
        ))
      ]),
      backgroundColor: Colors.black87,
    );
  }
}

class SingerContainer extends StatelessWidget {
  const SingerContainer(
      {Key? key,
      required this.lebar,
      required this.singerImage,
      required this.singer})
      : super(key: key);

  final double lebar;
  final String singer;
  final String singerImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, bottom: 25),
      child: Container(
        height: 150,
        width: lebar,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(singerImage),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 120, right: 20),
          child: Text(
            singer,
            textAlign: TextAlign.end,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class SongContainer extends StatelessWidget {
  const SongContainer(
      {Key? key,
      this.lebarContainer,
      required this.tinggiMedia,
      required this.judul})
      : super(key: key);

  final lebarContainer;
  final double tinggiMedia;
  final String judul;

  @override
  Widget build(BuildContext context) {
    var lebarMedia = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        right: 5,
        bottom: 20,
      ),
      child: HoverContainer(
        width: lebarMedia - lebarContainer,
        height: tinggiMedia,
        hoverDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black38,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            bottom: 20,
          ),
          child: Text(
            judul,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key, required this.isActive}) : super(key: key);

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        right: 10,
        bottom: 25,
      ),
      child: HoverContainer(
        width: 60,
        height: 60,
        hoverDecoration: BoxDecoration(
          color: const Color.fromARGB(55, 0, 101, 47),
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: isActive
                ? const AssetImage("assets/pause.png")
                : const AssetImage("assets/play.png"),
          ),
        ),
        decoration: BoxDecoration(
          gradient: const RadialGradient(colors: [
            Color.fromARGB(255, 0, 201, 121),
            Color.fromARGB(255, 0, 181, 85)
          ]),
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: isActive
                ? const AssetImage("assets/pause.png")
                : const AssetImage("assets/play.png"),
          ),
        ),
      ),
    );
  }
}
