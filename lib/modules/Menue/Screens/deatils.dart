import 'package:e_commerce2/modules/Menue/Compnents/Rows.dart';
import 'package:e_commerce2/modules/Menue/Screens/mainscreen.dart';
import 'package:flutter/material.dart';

class BillingDeatils extends StatelessWidget {
  const BillingDeatils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

          appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
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
                  size: 15,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(
                width: 90,
              ),
              const Text(
                'Billing Details',
                style: TextStyle(fontSize: 20,color: Colors.blueGrey),
              )
            ],
          ),
          const SizedBox(height: 30,),
          Container(
            width: 350,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: const Rows(
              images: 'assets/cardlogo.png',
textRow: '************1234',
              icon:   Icon(Icons.password_outlined),

            ),

          ),
          const SizedBox(height: 15,),
          Container(
            width: 350,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: const Rows(
              images: 'assets/visa.png',
              textRow: '************1234',
              icon:   Icon(Icons.password_outlined),

            ),

          ),



        ],
      ),
    );
  }
}
