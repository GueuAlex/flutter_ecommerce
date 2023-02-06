import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;
  final List<String> rubrique;

  Product(
      {required this.image,
      required this.title,
      required this.price,
      this.bgColor = const Color(0xFFEFEFF2),
      this.rubrique = const []});
}

List<Product> demo_product = [
  Product(
    image: "assets/images/cover1.jpg",
    title: "Long Sleeve Shirts",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/cover2.jpg",
    title: "Casual Henley Shirts",
    price: 99,
  ),
  Product(
    image: "assets/images/cover3.jpg",
    title: "Curved Hem Shirts",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/cover5.jpg",
    title: "Casual Nolin",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];

List<Product> mode_product = [
  Product(
    image: "assets/images/bijoux1.jpg",
    title: "Golden-Style",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
    rubrique: [
      'Bracelets',
      'Boucles d\'oreilles',
      'Colliers',
      'Bagues',
      'Sets de bijoux',
    ],
  ),
  Product(
    image: "assets/images/montre1.jpg",
    title: "Casual Henley Shirts",
    price: 99,
    rubrique: [
      'Rolex',
      'Casio',
    ],
  ),
  Product(
    image: "assets/images/bijoux2.jpg",
    title: "Curved Hem Shirts",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/montre2.jpg",
    title: "Casual Nolin",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/bijoux3.jpg",
    title: "Casual Nolin",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];
