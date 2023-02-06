class ProductItems {
  final double actualPrix;
  final double oldPrix;
  final String title;
  final int reduice;
  final List<String> images;
  final String smallTitle;

  ProductItems({
    required this.actualPrix,
    required this.oldPrix,
    required this.title,
    required this.reduice,
    this.images = const [],
    this.smallTitle = '',
  });
}

List<ProductItems> itmes = [
  ProductItems(
    actualPrix: 15000,
    oldPrix: 58600,
    title: 'LOUISA SECRET Bracelet Femme Argent 925 Infini',
    smallTitle: 'LOUISA SECRET Bracelet',
    reduice: 75,
    images: [
      'https://m.media-amazon.com/images/I/61Pd6mzLvdL._AC_UY625_.jpg',
      'https://m.media-amazon.com/images/I/51PvGu-VwHL._AC_SY625._SX._UX._SY._UY_.jpg',
      'https://m.media-amazon.com/images/I/61FwQejOkIL._AC_SY625._SX._UX._SY._UY_.jpg'
    ],
  ),
  ProductItems(
    actualPrix: 200000,
    oldPrix: 500000,
    title: 'Bracelet diamants en or blanc',
    smallTitle: 'Bracelet diamants',
    reduice: 50,
    images: [
      'https://m.media-amazon.com/images/I/71zAGUbIBfL._AC_UX569_.jpg',
      'https://m.media-amazon.com/images/I/71R6xYGk2EL._AC_UX569_.jpg',
      'https://m.media-amazon.com/images/I/91AgwgnJ1TL._AC_UX569_.jpg'
    ],
  ),
  ProductItems(
    actualPrix: 400000,
    oldPrix: 590000,
    title: 'Impressionnant bracelet pour homme en or jaune 18 carats',
    reduice: 17,
    smallTitle: 'Impressionnant bracelet',
    images: [
      'https://m.media-amazon.com/images/I/81qkm1G7JuL._AC_UY625_.jpg',
      'https://m.media-amazon.com/images/I/81S4+Efwe5L._AC_UY625_.jpg',
      'https://m.media-amazon.com/images/I/91JBfBqdgbL._AC_UY625_.jpg'
    ],
  ),
  ProductItems(
    actualPrix: 20470,
    oldPrix: 58600,
    smallTitle: 'Beau bracelet',
    title: 'Beau bracelet en or blanc de 18 carats',
    reduice: 60,
    images: [
      'https://m.media-amazon.com/images/I/71UzbbhOM3L._AC_UY625_.jpg',
      'https://m.media-amazon.com/images/I/81ZlDWE2yPL._AC_UY625_.jpg',
      'https://m.media-amazon.com/images/I/71OnipBGIML._AC_UY625_.jpg'
    ],
  ),
  ProductItems(
    actualPrix: 2500,
    oldPrix: 5000,
    title: ' Bracelet Charms Femme - Argent Sterling 925',
    reduice: 50,
    smallTitle: 'Bracelet Charms',
    images: [
      'https://m.media-amazon.com/images/I/61RAIJYf52L._AC_UY625_.jpg',
      'https://m.media-amazon.com/images/I/51fhJLL2akL._AC_UY625_.jpg',
      'https://m.media-amazon.com/images/I/61+cE6ty7FL._AC_UY625_.jpg'
    ],
  ),
  ProductItems(
    actualPrix: 20470,
    oldPrix: 58600,
    title: 'Never Say Never Bracelet en or jaune 18 carats',
    reduice: 65,
    smallTitle: 'Never Say Never',
    images: [
      'https://m.media-amazon.com/images/I/71M9nIqJbtL._AC_UX569_.jpg',
      'https://m.media-amazon.com/images/I/71p5QzKikJL._AC_UX569_.jpg',
      'https://m.media-amazon.com/images/I/716+3MH1rrL._AC_UX569_.jpg'
    ],
  ),
  ProductItems(
    actualPrix: 20470,
    oldPrix: 58600,
    title: 'Nato Cuff - Bracelet Wrap double tour Nylon',
    reduice: 65,
    smallTitle: 'Nato Cuff',
    images: [
      'https://m.media-amazon.com/images/I/51s8N2E5klL._AC_UX569_.jpg',
      'https://m.media-amazon.com/images/I/61KTKWzf1ZL._AC_UX569_.jpg',
      'https://m.media-amazon.com/images/I/814s7ZECMXL._AC_UX679_.jpg'
    ],
  ),
  ProductItems(
    actualPrix: 20470,
    oldPrix: 58600,
    title: 'Bracelet en cuir pour homme',
    reduice: 65,
    smallTitle: 'Bracelet en cuir',
    images: [
      'https://m.media-amazon.com/images/I/71tJK99QvUL._AC_UX569_.jpg',
      'https://m.media-amazon.com/images/I/51r8MIkuyFL._AC_UX679_.jpg',
      'https://m.media-amazon.com/images/I/71isdFPl8hL._AC_UX569_.jpg'
    ],
  ),
];
