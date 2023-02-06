class IntroContent {
  String image;
  String text;

  IntroContent({
    required this.image,
    required this.text,
  });

  static List<IntroContent> contents = [
    IntroContent(
        image: 'assets/images/intro1.jpg',
        text:
            'Découvrez chaque jour des produits de grandes marques. Jusqu\'à -70% de reduction.'),
    IntroContent(
        image: 'assets/images/intr3.jpg',
        text:
            'Rendez-vous deux fois par jour, à 7h et 19h pour découvrir de nouvelles ventes.'),
    IntroContent(
        image: 'assets/images/intro4.jpg',
        text:
            '\t Mode, maison, gastronomie...\nretrouver vos marques préférées'),
  ];
}
