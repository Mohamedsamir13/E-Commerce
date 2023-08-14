import 'package:e_commerce2/modules/Home/presentation/Screens/offersScreen.dart';
import 'package:flutter/material.dart';

class OfferList extends StatelessWidget {

  OfferList({Key? key, required this.texts,  });

  final List texts;



  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: ListView.builder(
              itemBuilder: (context, index) => Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 90,
                    decoration:  BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      color: Colors.grey[200],
                    ),
                    child: Center(
                        child: Text(
                          texts[index],
                          style:
                          const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              ),
              scrollDirection: Axis.horizontal,
              itemCount: texts.length,
              shrinkWrap: true,
            ),
          ),
        ),
      ],
    );
  }
}

