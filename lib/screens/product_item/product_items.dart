import 'package:ecom_app/models/Product.dart';
import 'package:ecom_app/screens/cart/cart.dart';
import 'package:ecom_app/screens/cart/widgets/cart_controller.dart';
import 'package:ecom_app/screens/product_item/widgets/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProductItemsPage extends StatelessWidget {
  final CartController controller = Get.find();
  ProductItemsPage({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        product.title,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(Cart());
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset(
                              'assets/icons/shopping-basket.svg'),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/rectangle.svg',
                            height: 30,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset(
                            'assets/icons/menu1.svg',
                            height: 20,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset(
                            'assets/icons/menu2.svg',
                            height: 25,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'Trier par ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '|\t Filtre',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const Expanded(
                    child: SingleChildScrollView(
                  child: Padding(
                      padding:
                          EdgeInsets.only(right: 5.0, left: 5.0, bottom: 5.0),
                      child: Catalog()),
                ))
              ],
            ),
            Positioned(
              top: 40,
              right: 13,
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
      ),
    );
  }
}
