import 'package:flutter/material.dart';

class CircleCategory extends StatelessWidget {
  const CircleCategory({
    Key? key,
    required this.images,
    required this.text,
  }) : super(key: key);
  final List images;
  final List text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 140
          ,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 44,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.fill,
                          width: 65,
                        ),
                      ),
                    ),

                    Text(text[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xFF023047)),)
                  ],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                shrinkWrap: true,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
