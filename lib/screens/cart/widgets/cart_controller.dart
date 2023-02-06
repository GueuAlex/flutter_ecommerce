import 'package:ecom_app/models/product_items.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  //add a dict to store the products in the cart.
  final _products = {}.obs;

  void addProduct(ProductItems productItems) {
    if (_products.containsKey(productItems)) {
      _products[productItems] += 1;
    } else {
      _products[productItems] = 1;
    }

    Get.snackbar('Produit ajouté', 'Le produit a été ajouter au panier',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3));
  }

//////////////////////////////////
  ///
  ///
  get products => _products;

///////////////////////////////////
  ///
  ///
  void removeProduct(ProductItems product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  /////////////////////////////////////
  ///
  ///
  get productSubtotal => _products.entries
      .map((product) => product.key.actualPrix * product.value)
      .toList();

  get total => _products.entries
      .map((product) => product.key.actualPrix * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toString();
}
