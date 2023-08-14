import 'package:e_commerce2/modules/Home/presentation/Screens/Cart_Screen/cartItem.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/Cart_Screen/checkOutScreen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Cart',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Cartitem(
                    Images: 'assets/cartItem.png',
                    discount: '\$52.15',
                    Price: '\$32.15',
                    texts: 'LapTop Ag50 Core i7',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Cartitem(
                    Images: 'assets/cartitem2.png',
                    discount: '\$52.15',
                    Price: '\$32.15',
                    texts: 'LapTop Ag50 Core i7',
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                padding: EdgeInsets.all(6), // Set padding for the container
                child: Stack(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter text',
                        // Add label text for the TextFormField
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.zero, // Set circular border radius
                        ),
                      ),
                    ),
                    Positioned(
                      // Position the ElevatedButton at the bottom right corner
                      bottom: 8,
                      right: 10,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add button onPressed functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          // Set background color for the button
                          textStyle: const TextStyle(
                              fontSize:
                                  16), // Set text style for the button's child text
                        ),
                        child: const Text(
                            'Add'), // You can replace this with any child widget
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                height: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Subtotal (6 items)',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(),
                          Text(
                            '\$300',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Shipping Fee',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(),
                          Text(
                            '\$20',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Discount',
                            style: TextStyle(color: Colors.blue),
                          ),
                          Spacer(),
                          Text(
                            '\$-30',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Total',
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Text(
                            '\$320',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF219EBC),
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: const Size(343, 48), //////// HERE
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut(),));
                },
                child: const Text("Checkout"),
              )),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
