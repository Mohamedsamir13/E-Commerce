import 'package:flutter/material.dart';

class Cartitem extends StatelessWidget {
  const Cartitem(
      {Key? key,
      required this.Images,
      required this.texts,
      required this.Price,
      required this.discount})
      : super(key: key);
  final String Images;
  final String texts;
  final String Price;
  final String discount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white24,
        height: 110,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  Images,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  texts!,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '\$$Price',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '\$$discount',
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough),
                    )
                  ],
                ),
SizedBox(height: 10,),
                Row(
                  children: const [

                         Icon(
                          Icons.favorite_outline,
                          color: Colors.yellow,
                          size: 23,

                        ),
                    Text(
                      'Add to Wishlist',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                     Icon(
                          Icons.delete_outline_sharp,
                          color: Colors.grey,
                          size: 20,
                        ),
                    Text('Delete',style: TextStyle(color: Colors.grey),)
                  ],
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
