import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //buildHeader(context),
            builMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget builMenuItems(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icons/home.svg",
          ),
          title: const Text(
            'Accueil',
            style: TextStyle(color: Colors.pink),
          ),
          onTap: () {},
        ),
        const Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icons/circle-user-regular.svg",
            width: 27,
            height: 27,
          ),
          title: const Text('Mon compte'),
          onTap: () {},
        ),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icons/box-check.svg",
            width: 25,
            height: 25,
          ),
          title: const Text('Mes commandes'),
          onTap: () {},
        ),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icons/bell-ring.svg",
            width: 25,
            height: 25,
          ),
          title: const Text('Mes communications'),
          onTap: () {},
        ),
        const Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icons/life-ring.svg",
            width: 25,
            height: 25,
          ),
          title: const Text('Besoin d\'aide ?'),
          onTap: () {},
        ),
        const Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icons/user-add.svg",
            width: 25,
            height: 25,
          ),
          title: const Text('Parrainage'),
          onTap: () {},
        ),
        const Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icons/exclamation.svg",
            width: 25,
            height: 25,
          ),
          title: const Text('A propos de nous'),
          onTap: () {},
        ),
        const Divider(
          color: Colors.grey,
          height: 30,
        ),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icons/power.svg",
            width: 25,
            height: 25,
          ),
          title: const Text('Déconnexion'),
          onTap: () {},
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Nos engagements RSE\nMentions légales\nConditions générales',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width - 150,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/ivory-coast.png',
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Côte d\'Ivoire')
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
