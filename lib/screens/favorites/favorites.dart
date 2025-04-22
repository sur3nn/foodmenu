import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmenu/cubits/favorites_cubit/favorites_cubit.dart';
import 'package:foodmenu/model/meals_model.dart';
import 'package:foodmenu/widgets/dish_item.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Favorites",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: BlocBuilder<FavoritesCubit, List<DummyMeals>>(
        builder: (context, state) {
          return ListView.separated(
              itemBuilder: (context, index) => DishItem(
                    data: state[index],
                  ),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: state.length);
        },
      ),
    );
  }
}
