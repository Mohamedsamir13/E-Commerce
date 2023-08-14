import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage(
      {Key? key,
        required this.image,
        required this.title,
        required this.subtitle})
      : super(key: key);
  final String image;
  final String title;
  final String subtitle;
  final _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body:Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
          Container(
            width: double.infinity,
            height: 250,
            clipBehavior: Clip.antiAlias,
            decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(40)),
            child: Image.asset(
              image,
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(title,style: const TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
          ),
          const SizedBox(height: 8,),
          Center(
            child: Text(subtitle,style: const TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}