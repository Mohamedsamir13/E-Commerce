import 'package:e_commerce2/modules/Home/presentation/Screens/FilterIcon/filterscreen.dart';
import 'package:flutter/material.dart';

class PriceScreen extends StatefulWidget {
   PriceScreen({Key? key}) : super(key: key);

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
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
                  width: 100,
                ),
                const Text(
                  'Price',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Slider(
              value: _currentSliderValue,
              min: 0,
              max: 100,
              divisions: 10,
              // Optional
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Center(child: Text('Min',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blueGrey),)),
                SizedBox(
                  width: 200,
                ),
                Center(child: Text('Max',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blueGrey),)),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 160,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(9)
                  ),
                  child:  Center(
                    child: Text(
                      '\$ ${_currentSliderValue.round()}',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 160,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(9)
                  ),
                  child:  Center(

                    child: Text(
                      '\$ ${_currentSliderValue.round()}',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
