import 'package:flutter/material.dart';

class RateComponent extends StatelessWidget {
  const RateComponent({Key? key, required this.icon, required this.Images, required this.text,}) : super(key: key);
  final Widget icon;
  final String Images;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(Images),
          SizedBox(width: 5,),
          Text(text,style: TextStyle(color: Colors.grey),),
          Spacer(),
          IconButton(onPressed: () {

          }, icon: icon,color: Colors.blue,),
        ],
      ),
    );
  }
}
