import 'package:flutter/material.dart';
import 'package:foodmenu/screens/filter/filter.dart';
import 'package:foodmenu/widgets/drawer_heading.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.horizontal(right: Radius.circular(10))),
      child: Column(
        children: [
          const DrawerHeading(),
          const SizedBox(height: 10),
          buildDrawerItem(
              ontap: () => Navigator.pop(context),
              icon: Icons.food_bank,
              title: "Meals"),
          buildDrawerItem(
              ontap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Filter())),
              icon: Icons.food_bank,
              title: "Filter"),
        ],
      ),
    );
  }

  ListTile buildDrawerItem(
      {required void Function() ontap,
      required IconData icon,
      required String title}) {
    return ListTile(
      onTap: ontap,
      leading: Icon(icon),
      title: Text(
        title,
      ),
    );
  }
}
