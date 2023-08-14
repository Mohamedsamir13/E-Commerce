import 'package:e_commerce2/modules/Home/presentation/Screens/Cart_Screen/cartscreen.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/categorScreen.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/homescreen.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/offersScreen.dart';
import 'package:e_commerce2/modules/Menue/Screens/mainscreen.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
   LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;

  Widget screen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
            switch (index) {
              case 0:

                screen =HomePage();
                break;
              case 1:
                screen = const CategoryScreen();
                break;
              case 2:
                screen = OffersScreen();
                break;
              case 3:
                screen=const CartScreen();
                break;
              default:
                screen=const MenuScreen();
            }
          });
        },
        items: const [
          BottomNavigationBarItem(

              icon: Icon(Icons.add_home_outlined),
              label: "Home",
              backgroundColor: Colors.brown),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Categories",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.coffee_maker_rounded), label: "Offers"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
        ],
      ),


      body: screen,
    );
  }
}
