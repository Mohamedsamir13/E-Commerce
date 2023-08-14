import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State {
  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                Text('Min'),
                SizedBox(
                  width: 30,
                ),
                Text('Max'),
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
                  child:  Text(
                    '\$ ${_currentSliderValue.round()}',
                    style: TextStyle(fontSize: 18),
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
                  child:  Text(
                    '\$ ${_currentSliderValue.round()}',
                    style: TextStyle(fontSize: 18),
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
