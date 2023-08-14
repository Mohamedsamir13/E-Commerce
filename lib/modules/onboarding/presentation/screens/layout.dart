import 'package:e_commerce2/modules/Authuntcation/presentation/screens/login.dart';
import 'package:e_commerce2/modules/onboarding/presentation/Components/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LayOutScreen extends StatelessWidget {
  LayOutScreen({Key? key}) : super(key: key);
  List<Map<String, String>> data = [
    {
      "image": "assets/4.png",
      "title": "Store Offer Best Deatils",
      "subtitle":
          "shop out offers to get all you need with discount on our store "
    },
    {
      "image": "assets/5.png",
      "title": "Easy And Secure Payment",
      "subtitle": "Every Step in Your Payment High Secure data "
    },
    {
      "image": "assets/6.png",
      "title": "Very Fast And Easy Shipping",
      "subtitle": "Shipping to your adress bery fast and easy to get your order"
    }
  ];
  var pageController = PageController();

  _handleOnLastPage(BuildContext context) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (route) => false);
  }

  handleNextButton(BuildContext context) {
    if (pageController.page?.toInt() == data.length - 1) {
      _handleOnLastPage(context);
    } else {
      pageController.nextPage(
          duration: const Duration(milliseconds: 250), curve: Curves.linear);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white12,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemBuilder: (context, index) => OnboardingPage(
                  image: data[index]['image']!,
                  title: data[index]['title']!,
                  subtitle: data[index]['subtitle']!),
            ),
          ),
          SmoothPageIndicator(
              controller: pageController, // PageController
              count: data.length,
              effect: const WormEffect(), // your preferred effect
              onDotClicked: (index) {}),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      minimumSize: const Size(700, 50), //////// HERE
                    ),
                    onPressed: () => handleNextButton(context),
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                      onPressed: () {
                        _handleOnLastPage(context);
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.black,
                            color: Colors.black),
                      )),
                ),
                SizedBox(height: 40,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
borderRadius: BorderRadius.circular(10)
                  ),
                  width: 120,
                  height: 5,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
