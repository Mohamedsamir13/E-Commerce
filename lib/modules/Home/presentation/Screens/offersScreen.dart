import 'package:e_commerce2/modules/Home/presentation/Compnents/OfferList.dart';
import 'package:e_commerce2/modules/Home/presentation/Compnents/item.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/FilterIcon/filterscreen.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/searchScreen.dart';
import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  OffersScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hot Offers',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(

                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 350,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchScreen(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.search),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchScreen(),
                                ),
                              );
                            },
                            child: const Text('Search'),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FilterScreen(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.filter_vintage_sharp,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    OfferList(
                      texts: const [
                        'All',
                        '50 % Off',
                        'Most Popular',
                        'New Arrivals',
                        'Price Low To High',
                        '50 % Offers',
                        'All',
                        'HotOffer',
                        '50 % Offers',
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ItemWidget(
                        IMAGES: 'assets/lapitem.png',
                      ),
                      ItemWidget(IMAGES: 'assets/phoneitem.png'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),

                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ItemWidget(
                        IMAGES: 'assets/cameraitem.png',
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

class OfferModel {
  final String name;

  OfferModel({
    required this.name,
  });
}
