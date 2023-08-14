import 'package:e_commerce2/modules/Home/data/Models/homeModel.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/homescreen.dart';
import 'package:e_commerce2/modules/SingleProduct/Screens/singleproductscreen.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({Key? key, required this.IMAGES}) : super(key: key);

  final String IMAGES;

  @override
  Widget build(BuildContext context) {
    return 

          Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
    margin:  const EdgeInsets.symmetric(horizontal: 5),
            width: 160,



            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow:  [
                BoxShadow(

                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 1,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8)
                    ),
                    height: 150,
                    width: 254,
                    child: AspectRatio(
                      aspectRatio: 1,

                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SPSCREEN(),));
                        },
                        child: Image.asset(
                          IMAGES,
                          filterQuality: FilterQuality. high,
                          fit: BoxFit.cover,

                        ),
                      ),
                    ),

                  ),
                  Image.asset(
                    'assets/stars.png',
                    filterQuality: FilterQuality. high,
                    fit: BoxFit.cover,

                  ),
                  const SizedBox(height: 5,),
                  const Text(
                    "Lap Top Ag50 Core i7",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Lorem Dipsum Dolor sit ,Sed "
                        "Diam Nonumy",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "330\$",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "330\$",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  )
                ],
              ),
            ),
    ),
          );

  }
}
