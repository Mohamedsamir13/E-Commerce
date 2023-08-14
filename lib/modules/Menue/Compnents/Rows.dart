import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
  const Rows(
      {Key? key,
      required this.textRow,
      required this.icon,
      this.fontsize,
      this.fontWeight,
      this.route,
      this.context,
       this.images})
      : super(key: key);

  @override
  final String textRow;
  final String? images;
  final Widget icon;
  final fontsize;
  final fontWeight;
  final BuildContext? context;
  final Widget? route;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route!),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(images!),
            const SizedBox(width: 10,),
            Text(
              textRow,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
            Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => route!),
                  );
                },
                icon: icon,),
          ],
        ),
      ),
    );
  }
}
