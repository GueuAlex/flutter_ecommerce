import 'package:flutter/material.dart';

import '../../../models/product_items.dart';
import 'cart_controller.dart';

class CartProductCart extends StatelessWidget {
  final CartController controller;
  final ProductItems productItems;
  final int quantity;
  final int index;

  const CartProductCart({
    Key? key,
    required this.controller,
    required this.productItems,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 5, left: 5, bottom: 10),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(productItems.images[0]),
                    fit: BoxFit.contain)),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      productItems.smallTitle.toString(),
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black.withOpacity(0.9),
                          fontWeight: FontWeight.w700),
                    ),
                    IconButton(
                        onPressed: () {
                          controller.removeProduct(productItems);
                        },
                        icon: const Icon(
                          Icons.delete_forever,
                          color: Colors.redAccent,
                        ))
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    productItems.title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${productItems.oldPrix.toString()}F cfa',
                        style: const TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                        )),
                    Text(
                      '${productItems.actualPrix.toString()}F cfa',
                      style: const TextStyle(
                        color: Colors.pink,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
                          '- ${productItems.reduice.toString()}%',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 30,
                  width: 120,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 40,
                        color: Colors.grey,
                        child: GestureDetector(
                          onTap: () {
                            controller.removeProduct(productItems);
                          },
                          child: const Icon(Icons.remove),
                        ),
                      ),
                      Container(
                        //padding: const EdgeInsets.only(top: 2),
                        height: 30,
                        width: 40,
                        color: Colors.pink,
                        child: FittedBox(
                          child: Text(
                            '$quantity',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 40,
                        color: Colors.grey,
                        child: GestureDetector(
                          onTap: () {
                            controller.addProduct(productItems);
                          },
                          child: const Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
          /* IconButton(
                onPressed: () {
                  controller.removeProduct(productItems);
                },
                icon: const Icon(Icons.remove_circle)),
            Text('$quantity'),
            IconButton(
                onPressed: () {
                  controller.addProduct(productItems);
                },
                icon: const Icon(Icons.add_circle)), */
        ],
      ),
    );
  }
}
