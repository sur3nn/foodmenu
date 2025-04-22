import 'package:flutter/material.dart';
import 'package:foodmenu/model/meals_model.dart';

import 'package:foodmenu/screens/meals/view_item_details.dart';

class DishItem extends StatelessWidget {
  final DummyMeals data;
  const DishItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ViewItemDetails(
                      data: data,
                    )));
      },
      child: SizedBox(
        height: size.height / 4,
        width: size.width,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  data.imageUrl ?? "",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    data.title ?? "",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildDetails("${data.duration} min", Icons.timer),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: buildDetails(
                            data.complexity ?? "", Icons.shopping_bag),
                      ),
                      buildDetails(
                          data.affordability ?? "", Icons.attach_money),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildDetails(String data, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
        ),
        Text(
          data,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
