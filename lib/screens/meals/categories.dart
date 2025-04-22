import 'package:flutter/material.dart';
import 'package:foodmenu/repository/repository.dart';
import 'package:foodmenu/screens/drawer/drawer.dart';
import 'package:foodmenu/model/category_model.dart';
import 'package:foodmenu/screens/meals/view_menu.dart';

class Categories extends StatelessWidget {
  Categories({super.key});
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    List<AvailableCategories> data = Repository().getCategories();

    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            scaffoldkey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
        centerTitle: true,
        title: const Text(
          "Categories",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      drawer: const AppDrawer(),
      body: GridView.builder(
          padding: const EdgeInsets.all(15),
          itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 0.5,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            final cat = data[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewMenu(
                              category: cat.id ?? "",
                            )));
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          getColorFromString(cat.color!),
                          Colors.black
                        ])),
                child: Text(
                  cat.title ?? "",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          }),
    );
  }

  Color getColorFromString(String colorName) {
    switch (colorName.toLowerCase()) {
      case 'purple':
        return Colors.purple;
      case 'red':
        return Colors.red;
      case 'orange':
        return Colors.orange;
      case 'amber':
        return Colors.amber;
      case 'blue':
        return Colors.blue;
      case 'green':
        return Colors.green;
      case 'lightblue':
        return Colors.lightBlue;
      case 'lightgreen':
        return Colors.lightGreen;
      case 'pink':
        return Colors.pink;
      case 'teal':
        return Colors.teal;
      default:
        return Colors.transparent;
    }
  }
}
