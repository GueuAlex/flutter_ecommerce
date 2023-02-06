import 'package:ecom_app/screens/product_item/product_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
//import 'package:stylish/constants.dart';
//import 'package:stylish/models/Product.dart';

//import '../../constants.dart';
import '../../models/Product.dart';
import '../cart/cart.dart';
import '../cart/widgets/cart_controller.dart';
//import 'components/color_dot.dart';

class DetailsScreen extends StatelessWidget {
  final CartController controller = Get.find();
  DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    product.image,
                  ),
                  fit: BoxFit.cover,
                )),
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
                    GestureDetector(
                      onTap: () {
                        Get.put(CartController());
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                Get.put(CartController());
                                //Get.to(Cart());
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ProductItemsPage(
                                        product: mode_product[index])));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    product.rubrique[index],
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 73, 72, 72),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Icon(
                                    Icons.chevron_right,
                                    size: 30,
                                    color: Color.fromARGB(255, 73, 72, 72),
                                  )
                                ],
                              ),
                            ),
                        separatorBuilder: (_, index) => const SizedBox(
                              height: 27,
                            ),
                        itemCount: product.rubrique.length),
                  ),
                ),
              ),

              //const SizedBox(height: defaultPadding * 1.5),
            ],
          ),
          Positioned(
            top: 260,
            left: MediaQuery.of(context).size.width / 3.6,
            child: Container(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 30),
              width: 180,
              height: 65,
              decoration: BoxDecoration(
                color: product.bgColor,
              ),
              child: Text(
                product.title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
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
    );
  }
}
