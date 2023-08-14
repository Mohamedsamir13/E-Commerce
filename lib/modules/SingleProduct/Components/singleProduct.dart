import 'package:e_commerce2/modules/Home/presentation/Compnents/item.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/Cart_Screen/cartscreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SingleProductCom extends StatelessWidget {
  SingleProductCom({
    Key? key,
    required this.image,
    required this.text,
    required this.price,
    this.discount,
    this.model,
  }) : super(key: key);
  final String? image;
  final String? text;
  final String? price;
  final String? model;
  final String? discount;
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
 int x=1;

  @override
  Widget build(BuildContext context) {
    var pageController = PageController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 200,
                  height: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[100]),
                  child: Image.asset(
                    image!,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 343,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[100]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            text!,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueGrey,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            price!,
                            style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            discount!,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset('assets/stars.png'),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        model!,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset('assets/free.png'),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Free Returns',
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                          const SizedBox(width: 30),
                          Image.asset('assets/trusted.png'),
                          const Text(
                            'Trusted Shipping',
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Get Free Returns',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 30),
                          Text(
                            'We Ensure Secure Payment',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 343,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                clipBehavior: Clip.antiAlias,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'About Product',
                          style: TextStyle(color: Colors.blue),
                        )),
                    const SizedBox(
                      width: 100,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Review',
                          style: TextStyle(color: Colors.grey)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'About Product',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'G15 5511 Gaming Laptop 11Th Intel Core I7-11800H '
                '8-Cores, 16GB RAM, 512GB SSD, NVIDIA Geforce'
                ' RTX3050 4GB GDDR6 Graphics, 15.6" FHD 120 Hz,'
                ' Orange Backlit Keyboard UB English/Arabic'
                ' Shadow Grey',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    'Similar Product',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View all',
                        style: TextStyle(color: Colors.blue),
                      )),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.blue,
                    size: 15,
                  )
                ],
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ItemWidget(IMAGES: 'assets/lapitem.png'),
                    ItemWidget(IMAGES: 'assets/phoneitem.png'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        x++;

                      },
                      child: const Icon(
                        Icons.add,
                        size: 20,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child:  Text(
                        '$x',
                        style: const TextStyle(fontSize: 20),
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        x+=1;
                      },
                      child: const Icon(
                        Icons.minimize,
                        size: 20,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
                      },
                      child: const Text(
                        'Add to card',
                        style: TextStyle(fontSize: 20),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
