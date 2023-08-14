import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Empty extends StatelessWidget {
  const Empty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        width: double.infinity,
        height: 1,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),      color: Colors.grey[300],
        ),
      ),
    )
    ;
  }
}
