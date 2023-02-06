import 'package:flutter/material.dart';
//import 'package:stylish/models/Product.dart';
//import 'package:stylish/screens/details/details_screen.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../details/details_screen.dart';
import '../../home/components/product_card.dart';

class ModeNewArrivalProducts extends StatelessWidget {
  const ModeNewArrivalProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.all(0),
                child: ProductCard(
                  title: mode_product[index].title,
                  image: mode_product[index].image,
                  price: mode_product[index].price,
                  bgColor: mode_product[index].bgColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(product: mode_product[index]),
                        ));
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
