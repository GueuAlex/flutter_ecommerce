import 'package:flutter/material.dart';
import 'widgets/new_arrival_products.dart';

class Mode extends StatefulWidget {
  Mode({super.key});

  @override
  State<Mode> createState() => _ModeState();
}

class _ModeState extends State<Mode> {
  List<String> modeCategorie = [
    'Bijoux & Montres',
    'Chaussures',
    'Lingerie & Bain',
    'Prêt-A-Porter',
    'Sport',
    'Maroquinerie & Bagagerie',
  ];

  int cuurentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 35,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          cuurentIndex = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink),
                            borderRadius: BorderRadius.circular(20),
                            color: cuurentIndex == index
                                ? Colors.pink
                                : Colors.white),
                        child: Text(
                          modeCategorie[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: cuurentIndex == index
                                  ? Colors.white
                                  : Colors.pink),
                        ),
                      ),
                    ),
                separatorBuilder: (_, index) => const SizedBox(
                      width: 10,
                    ),
                itemCount: modeCategorie.length),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(child: view(cuurentIndex)),
          )
        ],
      ),
    );
  }

  Widget? view(index) {
    if (index == 0) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "AUJOURD'HUI",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  letterSpacing: -1.4),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Les nouvelles marques qui defilent.",
              style: TextStyle(
                fontSize: 16,
                letterSpacing: -1.3,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          // Categories(),
          ModeNewArrivalProducts(),
        ],
      );
    } else {
      return const Center(
        child: Text('Coming soon'),
      );
    }
  }
}
