import 'package:e_commerce2/modules/Home/presentation/Compnents/item.dart';
import 'package:flutter/material.dart';

class Itemofferslist extends StatelessWidget {
  const Itemofferslist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          primary: false,
          crossAxisCount: 2,
          mainAxisSpacing: 4,

        children:
          List.generate(4, (index) => ItemWidget(IMAGES: 'assets/laptopitem.png'))


      ),
    );
  }
}
