import 'package:ecom_app/models/product_items.dart';
import 'package:ecom_app/screens/cart/widgets/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          mainAxisExtent: 250,
          childAspectRatio: 2,
        ),
        itemCount: itmes.length,
        itemBuilder: (_, index1) {
          return Column(
            children: [
              Expanded(
                child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: itmes[index1].images.length,
                    itemBuilder: (_, index) {
                      return Image.network(
                        itmes[index1].images.elementAt(index),
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.contain,
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itmes[index1].title,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.9),
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${itmes[index1].actualPrix.toString()}F CFA',
                          style: const TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              height: 2),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          height: 20,
                          width: 45,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 4, 165, 87),
                              borderRadius: BorderRadius.circular(3)),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              '- ${itmes[index1].reduice.toString()}%',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      '${itmes[index1].oldPrix.toString()}F CFA',
                      style: const TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      height: 37,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.pink),
                      child: GestureDetector(
                        onTap: () {
                          cartController.addProduct(itmes[index1]);
                        },
                        child: const Text(
                          'Achat express',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        });
  }
}
