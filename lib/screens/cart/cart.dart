//import 'package:ecom_app/models/product_items.dart';
import 'package:ecom_app/screens/cart/widgets/cart_controller.dart';
import 'package:ecom_app/screens/cart/widgets/total.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/cart_product_cart.dart';
//import 'widgets/total.dart';

class Cart extends StatelessWidget {
  final CartController controller = Get.find();
  Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (() {
              Navigator.of(context).pop();
            }),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          elevation: 1,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'My Cart',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: controller.products.length > 0
            ? Column(
                children: [
                  SizedBox(
                    height: 600,
                    child: ListView.builder(
                        itemCount: controller.products.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CartProductCart(
                              controller: controller,
                              productItems:
                                  controller.products.keys.toList()[index],
                              quantity:
                                  controller.products.values.toList()[index],
                              index: index);
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(top: 10),
                            //width: 150,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Text(
                              'Valider le panier',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Total()
                      ],
                    ),
                  )
                ],
              )
            : const Center(
                child: Text(
                  'Votre panier est vide !',
                  style: TextStyle(fontSize: 25),
                ),
              ),
      ),
    );
  }
}
