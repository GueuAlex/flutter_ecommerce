import 'package:ecom_app/screens/cart/widgets/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Total extends StatelessWidget {
  final CartController controller = Get.find();
  Total({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Total',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 15,
        ),
        FittedBox(
          child: Text(
            '${controller.total} F CFA',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
