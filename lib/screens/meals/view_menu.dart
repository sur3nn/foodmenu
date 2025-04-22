import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmenu/cubits/filter_cubit/filters_cubit.dart';
import 'package:foodmenu/model/meals_model.dart';
import 'package:foodmenu/repository/repository.dart';
import 'package:foodmenu/utils/enums.dart';
import 'package:foodmenu/widgets/dish_item.dart';

class ViewMenu extends StatelessWidget {
  final String category;
  const ViewMenu({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final Map<FilterType, bool> filter =
        context.read<FiltersCubit>().state.filters;

    final currentMeals = Repository()
        .getMeals()
        .where((e) =>
            e.categories?.contains(category) == true &&
            e.isGlutenFree == filter[FilterType.gluten] &&
            e.isLactoseFree == filter[FilterType.lactose] &&
            e.isVegetarian == filter[FilterType.veg] &&
            e.isVegan == filter[FilterType.vegan])
        .toList();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text(
          "Quick & Easy",
        ),
      ),
      body: ListView.separated(
          itemCount: currentMeals.length,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            final DummyMeals data = currentMeals[index];
            return DishItem(
              data: data,
            );
          }),
    );
  }
}
