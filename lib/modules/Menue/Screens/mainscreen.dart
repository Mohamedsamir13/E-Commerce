import 'package:e_commerce2/modules/Authuntcation/presentation/screens/login.dart';
import 'package:e_commerce2/modules/Home/presentation/Compnents/empty.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/homescreen.dart';
import 'package:e_commerce2/modules/Menue/Compnents/Rows.dart';
import 'package:e_commerce2/modules/Menue/Screens/Settings/mainsettings.dart';
import 'package:e_commerce2/modules/Menue/Screens/aboutus.dart';
import 'package:e_commerce2/modules/Menue/Screens/contactus.dart';
import 'package:e_commerce2/modules/Menue/Screens/deatils.dart';
import 'package:e_commerce2/modules/Menue/Screens/favorite.dart';
import 'package:e_commerce2/modules/Menue/Screens/helpandsupport.dart';
import 'package:e_commerce2/modules/Menue/Screens/location.dart';
import 'package:e_commerce2/modules/Menue/Screens/orders.dart';
import 'package:e_commerce2/modules/Menue/Screens/profilescreen.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 160,
              width: 280,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                        color: Colors.black                  ),
                  ),
                  const SizedBox(height: 5),
                  // Add some spacing between image and text
                  const Text(
                    'Are you sure you want to Log Out.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Empty(),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MenuScreen(),
                                  ));
                            },
                            child: const Text(
                              'cancel',
                              style: TextStyle(color: Colors.blue, fontSize: 20),
                            )),
                        Spacer(),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ));
                            },
                            child: const Text(
                              'Log Out',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                  // Add some spacing between image and text
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Close'),
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
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Menu',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Rows(
                  textRow: 'Profile',
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                  ),
                  route: Profile(
                      texts: 'Marwa Ahmed', email: 'Marwaahmed@gmail.com'),
                  images: "assets/Profile.png",
                ),
                const SizedBox(
                  height: 20,
                ),
                const Rows(
                    textRow: 'Settings',
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    ),
                    route: Settings(),
                    images: 'assets/Settings.png'),
                const SizedBox(
                  height: 20,
                ),
                const Rows(
                    textRow: 'Favorite List',
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    ),
                    route: FavoriteList(),
                    images: 'assets/FavoritesList.png'),
                const SizedBox(
                  height: 20,
                ),
                const Rows(
                    textRow: 'My Order',
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,

                    ),
                    route: Order(),
                    images: 'assets/myorder.png'),
                const SizedBox(
                  height: 20,
                ),
                const Rows(
                    textRow: 'Billing Details',
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    ),
                    route: BillingDeatils(),
                    images: 'assets/deatils.png'),
                const SizedBox(
                  height: 20,
                ),
                const Rows(
                    textRow: 'My Adress',
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    ),
                    route: Location(),
                    images: 'assets/locations.png'),
                const SizedBox(
                  height: 20,
                ),
                const Rows(
                    textRow: 'About Us',
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    ),
                    route: Aboutus(),
                    images: 'assets/aboutus.png'),
                const Empty(),
                const SizedBox(
                  height: 20,
                ),
                const Rows(
                    textRow: 'Contact Us',
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,

                    ),
                    route: Contactus(),
                    images: 'assets/contactus.png'),
                const SizedBox(
                  height: 20,
                ),
                const Rows(
                    textRow: 'Help & Support',
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    ),
                    route: HelpandSupport(),
                    images: 'assets/help.png'),
                SizedBox(
                  height: 10,
                ),
                Empty(),
                GestureDetector(
                  onTap: () {
                    showCustomDialog(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/LogOut.png',
                          width: 40,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'LogOut',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ));
  }
}
