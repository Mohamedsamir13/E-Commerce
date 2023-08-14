import 'package:e_commerce2/modules/Home/presentation/Compnents/empty.dart';
import 'package:e_commerce2/modules/Menue/Compnents/Rows.dart';
import 'package:e_commerce2/modules/Menue/Screens/Settings/Notifcation.dart';
import 'package:e_commerce2/modules/Menue/Screens/Settings/changePassword.dart';
import 'package:e_commerce2/modules/Menue/Screens/mainscreen.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Change Language',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'English',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                        fontSize: 14),
                  ),
                  Spacer(),
                  Icon(Icons.check_box),
                ],
              ),
              Empty(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'العربيه',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                        fontSize: 14),
                  ),
                  Spacer(),
                  Icon(Icons.check_box),
                ],
              ),
              // Add your image here

              // Add some spacing between image and text
            ],
          ),
          actions: [
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                  width: 110,
                ),
                const Text(
                  'Settings',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Rows(
                textRow: 'Notifications',
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                route: Notifcations(),
                images: 'assets/Notifications.png'),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  showCustomDialog(context);
                },
                child: Row(
                  children: [
                    Image.asset('assets/Language.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Language',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Rows(
              textRow: 'Change Your Password',
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
              route: ChnagePassword(),
              images: 'assets/Language.png',
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Delete Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
