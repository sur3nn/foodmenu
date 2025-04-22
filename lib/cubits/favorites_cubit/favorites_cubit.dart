import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/meals_model.dart';

class FavoritesCubit extends Cubit<List<DummyMeals>> {
  FavoritesCubit() : super([]);

  void addItem(DummyMeals meal, BuildContext context) {
    final List<DummyMeals> data = state;
    if (!data.any((e) => e.id == meal.id)) {
      data.add(meal);
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Meals added in Favourite")));
      emit(data);
    }
  }
}
