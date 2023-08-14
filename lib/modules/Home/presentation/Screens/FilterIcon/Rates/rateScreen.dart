import 'package:e_commerce2/modules/Home/presentation/Compnents/empty.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/FilterIcon/Rates/components.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/FilterIcon/filterscreen.dart';
import 'package:flutter/material.dart';

class RateS extends StatelessWidget {
  const RateS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FilterScreen(),
                          ));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                    )),
                const SizedBox(
                  width: 110,
                ),
                const Text(
                  'Rate',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const RateComponent(
                icon: Icon(Icons.check_box),
                Images: 'assets/rating5.png',
                text: "(5185)"),
            const Empty(),
            const RateComponent(
              icon: Icon(Icons.check_box),
              Images: 'assets/rating4.png',
             text: ('(525)')),
            const Empty(),
            const RateComponent(
              icon: Icon(Icons.check_box),
              Images: 'assets/rating3.png', text: '(619)',
            ),
            const Empty(),
            const RateComponent(
              icon: Icon(Icons.check_box),
              Images: 'assets/rating2.png', text: '(515)',
            ),
            const Empty(),
            const RateComponent(
              icon: Icon(Icons.check_box),
              Images: 'assets/rating1.png', text: '(525)',
            ),
          ],
        ),
      ),
    );
  }
}
