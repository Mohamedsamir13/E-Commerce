import 'package:e_commerce2/modules/Home/presentation/Compnents/RowComponent.dart';
import 'package:e_commerce2/modules/Home/presentation/Compnents/empty.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/FilterIcon/Brands.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/FilterIcon/Category.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/FilterIcon/Rates/rateScreen.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/PriceIcon/priceScreen.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/offersScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
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
                            builder: (context) => OffersScreen(),
                          ));
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                const SizedBox(width: 120),
                Center(
                  child: const Text(
                    'Filter',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey),
                  ),
                ),
                const SizedBox(width: 120),
                const Text(
                  'Reset',
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            RowComponent(
              route: CategoryS(),
              textRow: "Category",
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 18,
              ),
            ),
            Empty(),
             RowComponent(
                textRow: "Brand",
                 route: Brand(),
                 icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                )),
            const Empty(),
            const RowComponent(
                textRow: "Rate",
                route: RateS(),
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                )),
            const Empty(),
             RowComponent(
                textRow: "Price",
                  route: PriceScreen(),
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                )),
            Empty(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF219EBC),
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape:
                      const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  minimumSize: const Size(343, 48), //////// HERE
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OffersScreen(),
                      ));
                },
                child: const Text("Apply"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
