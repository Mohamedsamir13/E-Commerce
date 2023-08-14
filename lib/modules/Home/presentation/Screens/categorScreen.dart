import 'package:e_commerce2/modules/Home/presentation/Compnents/circleAvtar.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
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
                                  minimumSize: const Size(120, 40), //////// HERE
                                ),
                                onPressed: () {},
                                child: const Text("Explore now >>"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset("assets/10.png"),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleCategory(
                  text: ["Mobiles","Laptops","Music","Headphones"],

                  images: [
                    'assets/phone.png',
                    "assets/lap.png",
                    'assets/music.png',
                    'assets/audio.png'
                  ],
                ),
              ),
              SizedBox(height: 10,
              ),
              CircleCategory(
                text: ["Accessories","Wearables","Cameras","Audio"],

                images: [
                  'assets/keyboard.png',
                  "assets/microphone.png",
                  'assets/camera.png',
                  'assets/audio.png'
                ],
              ),
              SizedBox(height: 10,
              ),
              CircleCategory(
                text: ["Mobiles","Laptops","Music","Headphones"],

                images: [
                  'assets/phone.png',
                  "assets/lap.png",
                  'assets/music.png',
                  'assets/audio.png'
                ],
              ),

              SizedBox(height: 10,
              ),
              CircleCategory(

                 text: ["Accessories","Wearables","Cameras","Audio"],

                images: [
                  'assets/keyboard.png',
                  "assets/microphone.png",
                  'assets/camera.png',
                  'assets/audio.png'
                ],
              ),
              SizedBox(height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
