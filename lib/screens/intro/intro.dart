import 'package:ecom_app/models/intro_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../cart/widgets/cart_controller.dart';
import '../home/home_screen.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  // final IntroContent content = IntroContent();
  List<IntroContent> contents = IntroContent.contents;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(contents[currentIndex].image),
              fit: BoxFit.cover)),
      child: Container(
        color: Colors.black.withOpacity(0.5),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 2,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/ivory-coast.png'),
                          const SizedBox(
                            width: 7,
                          ),
                          const Text(
                            'Côte d\'Ivoiree',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const Text(
                        '|\t Qui sommes-nous?',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 2,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Explore",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.w400, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 300,
              ),
              Expanded(
                child: PageView.builder(
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: contents.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Bienvenue',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                contents[index].text,
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        contents.length, (index) => buildDot(index, context)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.put(CartController());
                      Get.to(HomeScreen());
                      /* Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen())); */
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 13),
                      height: 45,
                      width: MediaQuery.of(context).size.width - 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.pink),
                      child: const Text(
                        'S\'inscrire',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.put(CartController());
                      Get.to(HomeScreen());
                      /*  Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen())); */
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 13),
                      height: 45,
                      width: MediaQuery.of(context).size.width - 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white),
                      child: const Text(
                        'Se connecter',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      width: currentIndex == index ? 25 : 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.pink),
    );
  }
}
