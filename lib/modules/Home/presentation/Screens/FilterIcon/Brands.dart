import 'package:e_commerce2/modules/Home/presentation/Compnents/RowComponent.dart';
import 'package:e_commerce2/modules/Home/presentation/Compnents/empty.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/FilterIcon/filterscreen.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/searchScreen.dart';
import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  const Brand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
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
                    'Brands',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SearchScreen(),
                                ));
                          },
                          icon: const Icon(Icons.search)),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SearchScreen(),
                              ));
                        },
                        child: const Text('Search'),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              const RowComponent(
                textRow: 'All',
                icon: Icon(
                  Icons.check_box,
                  color: Colors.blue,
                ),

              ),
              const Empty(),
              const RowComponent(
                textRow: '2B',
                icon: Icon(
                  Icons.check_box,
                  color: Colors.blue,
                ),

              ),
              const Empty(),
              const RowComponent(
                textRow: '915 Generation',
                icon: Icon(
                  Icons.check_box,
                  color: Colors.blue,
                ),

              ),
              const Empty(),
              const RowComponent(
                textRow: 'Ahastyle',
                icon: Icon(
                  Icons.check_box,
                  color: Colors.blue,
                ),

              ),
              const Empty(),
              const RowComponent(
                textRow: '2B',

                icon: Icon(
                  Icons.check_box,
                  color: Colors.blue,
                ),
              ),
              const Empty(),
              const RowComponent(
                textRow: '915 Generation',
                icon: Icon(

                  Icons.check_box,
                  color: Colors.blue,
                ),

              ),
              const Empty(),
              const RowComponent(

                textRow: '915 Generation',
                icon: Icon(
                  Icons.check_box,
                  color: Colors.blue,
                ),
              ),
              const Empty(),
              const RowComponent(

                textRow: 'Ahastyle ',
                icon: Icon(
                  Icons.check_box,
                  color: Colors.blue,
                ),
              ),
              const Empty(),
              const RowComponent(
                textRow: '2B',
                icon: Icon(
                  Icons.check_box,
                  color: Colors.blue,
                ),
              ),
              const Empty(),
              const RowComponent(
                textRow: '915 Generation',
                icon: Icon(
                  Icons.check_box,
                  color: Colors.blue,
                ), route: Navigator(),
              ),
              const Empty(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF219EBC),
                    onPrimary: Colors.white,
                    shadowColor: Colors.greenAccent,
                    elevation: 3,
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    minimumSize: const Size(343, 48), //////// HERE
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FilterScreen(),
                        ));
                  },
                  child: const Text("Apply"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 150,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
