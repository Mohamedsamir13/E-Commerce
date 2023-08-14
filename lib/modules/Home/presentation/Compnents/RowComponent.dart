import 'package:e_commerce2/modules/Home/presentation/Screens/FilterIcon/Category.dart';
import 'package:flutter/material.dart';

class RowComponent extends StatelessWidget {
  const RowComponent({
    Key? key,
    required this.textRow,
    required this.icon,
    this.fontsize,
    this.fontWeight,
    this.route,
    this.context
  }) : super(key: key);

  @override
  final String textRow;
  final Widget icon;
  final fontsize;
  final fontWeight;
  final BuildContext? context;
  final Widget? route;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            textRow,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
          Spacer(),
          IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => route!),
            );
          }, icon: icon),
        ],
      ),
    );
  }
}
