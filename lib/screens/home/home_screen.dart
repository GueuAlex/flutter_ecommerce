import 'package:ecom_app/screens/Mode/mode.dart';
import 'package:ecom_app/screens/side_bar/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../cart/cart.dart';
import '../cart/widgets/cart_controller.dart';

import 'components/new_arrival_products.dart';

class HomeScreen extends StatelessWidget {
  final CartController controller = Get.find();
  HomeScreen({Key? key}) : super(key: key);

  static const List<String> navItem = [
    'Accueil',
    'Mode',
    'Maison',
    'Voyage',
    'Beauté',
    'Vin & Gastronomie',
    'Enfant',
    'Sport',
    'Super Surface',
    'Loisir'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: navItem.length,
      child: Stack(
        children: [
          Container(
            //padding: const EdgeInsets.only(top: 5),
            color: Colors.white,
            child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                leading: Builder(
                  builder: (context) {
                    return IconButton(
                      onPressed: () {
                        return Scaffold.of(context).openDrawer();
                      },
                      icon: SvgPicture.asset("assets/icons/menu.svg"),
                    );
                  },
                ),
                centerTitle: true,
                title: Text(
                  "Explore",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                bottom: TabBar(
                  indicatorColor: Colors.pink,
                  //indicatorPadding: const EdgeInsets.all(10),

                  isScrollable: true,
                  tabs: navItem.map<Widget>((e) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text(
                        e,
                        style: const TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),
                ),
                actions: [
                  IconButton(
                    icon: SvgPicture.asset(
                      "assets/icons/Search.svg",
                      width: 27,
                      height: 27,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                      "assets/icons/shopping-basket.svg",
                    ),
                    onPressed: () {
                      Get.to(Cart());
                      Get.put(CartController());
                    },
                  ),
                ],
              ),
              drawer: const NavigationDrawer(),
              body: TabBarView(
                children: <Widget>[
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "NOUVEAUTES DU JOUR",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                letterSpacing: -1.8),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Les ventes qui ouvrent aujourd'hui.",
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: -1.6,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 16,
                        ),
                        // Categories(),
                        NewArrivalProducts(),
                        // PopularProducts(),
                      ],
                    ),
                  ),
                  Mode(),
                  const Center(
                    child: Text(
                      'Coming soon',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Coming soon',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Coming soon',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Coming soon',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Coming soon',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Coming soon',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Coming soon',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Coming soon',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: SvgPicture.asset('assets/icons/settings-sliders.svg')),
            ),
          ),
          Positioned(
            top: 40,
            right: 5,
            child: Container(
              //padding: const EdgeInsets.all(2),
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: controller.products.length > 0
                    ? Colors.red
                    : Colors.black.withOpacity(0),
              ),
              child: FittedBox(
                child: Text(
                  controller.products.length.toString(),
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
