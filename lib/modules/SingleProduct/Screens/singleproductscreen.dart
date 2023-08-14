import 'package:e_commerce2/modules/Home/presentation/Screens/offersScreen.dart';
import 'package:e_commerce2/modules/SingleProduct/Components/singleProduct.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SPSCREEN extends StatelessWidget {

  SPSCREEN({Key? key}) : super(key: key);
  List<Map<String, String>> data = [
    {
      "image": "assets/singleproduct1.png",
    },
    {
      "image": "assets/singleproduct2.png",
    },
    {
      "image": "assets/singleproduct3.png",
    }
  ];
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OffersScreen(),
                              ));
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        )),
                    const SizedBox(width: 60,),
                    const Text(
                      'Product Details',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    clipBehavior: Clip.antiAlias,
                    itemBuilder: (context, index) => SingleProductCom(
                        image: data[index]['image']!,
                        text: 'LapTop Ag40 Corei7',
                        price: '330\$',
                        discount: '400',
                        model: 'Model:G15-5511-I7/5511-G15-E001-GRY'),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),


              ],
            ),
          )),
    );
  }
}
