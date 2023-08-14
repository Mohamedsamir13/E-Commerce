import 'package:e_commerce2/modules/Menue/Compnents/Rows.dart';
import 'package:e_commerce2/modules/Menue/Screens/mainscreen.dart';
import 'package:flutter/material.dart';

class HelpandSupport extends StatelessWidget {
  const HelpandSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
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
                          builder: (context) => MenuScreen(),
                        ));
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  width: 85,
                ),
                const Text(
                  'Help & Support',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF023047),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color(0xFFF6F4F0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      'Refund Status: Common Questions',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF023047)),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_up_rounded,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'You need an account for most activities on our'
                ' platform, including to purchase and access content'
                ' or to submit content for publication. When setting up'
                ' and maintaining your account, you must provide and continue to provide'
                ' accurate and complete information, including a valid email address.',
                style: TextStyle(color: Color(0xFF5B5B5B),fontWeight: FontWeight.normal,fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color(0xFFF6F4F0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      'Refund Status: Common Questions',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF023047)),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color(0xFFF6F4F0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      'Refund Status: Common Questions',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF023047)),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color(0xFFF6F4F0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      'Refund Status: Common Questions',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF023047)),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                width: 150,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                        10)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
