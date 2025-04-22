import 'package:flutter/material.dart';
import 'package:foodmenu/model/bottom_options.dart';
import 'package:foodmenu/screens/favorites/favorites.dart';
import 'package:foodmenu/screens/meals/categories.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({super.key});

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  int selected = 0;
  List<Widget> screens = [Categories(), const Favorites()];
  List<BottomOption> options = [
    BottomOption(title: "Categories", icon: Icons.food_bank),
    BottomOption(title: "Favourites", icon: Icons.favorite)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selected,
        children: screens,
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
            children: List.generate(
          options.length,
          (index) => Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Column(
                children: [
                  Icon(
                    options[index].icon,
                    color: Colors.white,
                  ),
                  Text(
                    options[index].title,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
