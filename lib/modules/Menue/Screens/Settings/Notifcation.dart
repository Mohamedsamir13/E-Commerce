import 'package:e_commerce2/modules/Home/presentation/Compnents/RowComponent.dart';
import 'package:e_commerce2/modules/Menue/Screens/Settings/mainsettings.dart';
import 'package:flutter/material.dart';

class Notifcations extends StatelessWidget {
  const Notifcations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Settings(),
                            ));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      )),
                  SizedBox(
                    width: 90,
                  ),
                  const Text(
                    'Notification',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const RowComponent(
                textRow: 'Sales',
                icon: Icon(
                  Icons.toggle_on,
                  color: Colors.blue,
                  size: 40,
                )),
            const SizedBox(
              height: 15,
            ),
            const RowComponent(
                textRow: 'New Arrivals',
                icon: Icon(
                  Icons.toggle_off,
                  color: Colors.grey,
                  size: 40,
                )),
            const SizedBox(
              height: 15,
            ),
            const RowComponent(
                textRow: 'New Updates',
                icon: Icon(
                  Icons.toggle_on,
                  color: Colors.blue,
                  size: 40,
                )),
          ],
        ),
      ),
    );
  }
}
