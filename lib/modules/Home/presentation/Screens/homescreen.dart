import 'package:e_commerce2/modules/Home/controller/cubit.dart';
import 'package:e_commerce2/modules/Home/presentation/Compnents/circleAvtar.dart';
import 'package:e_commerce2/modules/Home/presentation/Compnents/item.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/categorScreen.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/offersScreen.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/searchScreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int currentIndex = 0;
  Widget screen = HomePage();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  height: 40,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchScreen(),
                                ));
                          },
                          icon: const Icon(Icons.search)),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(),
                              ));
                        },
                        child: const Text('Search'),
                      )
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.location_on_outlined, color: Colors.black),
                    Text(
                      'Deliver to makram Nasr-city_Cairo',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )
                  ],
                ),
              ),
              Center(
                child: Container(
                  color: Colors.grey[300],
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "BLACK FRIDAYS !",
                              style: TextStyle(color: Colors.amber),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                                "SALE 50% OFF \n ALL ELECTRONIC PRODUCTS"),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xFF219EBC),
                                onPrimary: Colors.white,
                                shadowColor: Colors.greenAccent,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                minimumSize: const Size(
                                    120, 40), //////// HERE
                              ),
                              onPressed: () {},
                              child: const Text("Explore now >>"),
                            ),
                          ],
                        ),
                      ),
                      Image.asset("assets/7.png"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                        fontSize: 20),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const CategoryScreen(),));
                      },
                      child: const Text(
                        'View all',
                        style: TextStyle(color: Colors.blue),
                      )),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.blue,
                    size: 14,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(children: [],)
                ],
              ),
              const CircleCategory(
                text: ["Laptops", "Mobiles", "Music", "Headphones"],

                images: [
                  'assets/phone.png',
                  "assets/lap.png",
                  'assets/music.png',
                  'assets/audio2.png'
                ],
              ),
              SizedBox(
                height: 20,
              ),

              const CircleCategory(
                text: ["Accessories", "Wearables", "Cameras", "Audio"],

                images: [
                  'assets/keyboard.png',
                  "assets/microphone.png",
                  'assets/camera.png',
                  'assets/audio.png'
                ],

              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Most popular Product',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                        fontSize: 20),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => OffersScreen(),));
                      },
                      child: const Text(
                        'View all',
                        style: TextStyle(color: Colors.blue),
                      )),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.blue,
                    size: 14,
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ItemWidget(
                      IMAGES: 'assets/lapitem.png',
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ItemWidget(IMAGES: 'assets/phoneitem.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    color: Colors.grey[300],
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "BLACK FRIDAYS !",
                                style: TextStyle(color: Colors.amber),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                  "SALE 50% OFF \n ALL ELECTRONIC PRODUCTS"),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF219EBC),
                                  onPrimary: Colors.white,
                                  shadowColor: Colors.greenAccent,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          5.0)),
                                  minimumSize:
                                  const Size(120, 40), //////// HERE
                                ),
                                onPressed: () {},
                                child: const Text("Explore now >>"),
                              ),
                            ],
                          ),
                        ),
                        Image.asset("assets/shape.png"),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ItemWidget(
                        IMAGES: 'assets/lapitem.png',
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      ItemWidget(IMAGES: 'assets/phoneitem.png'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
