import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmenu/cubits/filter_cubit/filters_cubit.dart';
import 'package:foodmenu/model/filter_model.dart';
import 'package:foodmenu/utils/enums.dart';
import 'package:foodmenu/widgets/filter_switches.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FilterModel> labels = [
      FilterModel(
          label: 'Gluten',
          desc: "only gluten free meals",
          type: FilterType.gluten),
      FilterModel(
          label: 'Lactose',
          desc: "only lactose free meals",
          type: FilterType.lactose),
      FilterModel(
          label: 'Veg', desc: "only Veg free meals", type: FilterType.veg),
      FilterModel(
          label: 'Vegan',
          desc: "only Vegan free meals",
          type: FilterType.vegan),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const Text("Your Filter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: labels.length,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: FilterSwitch(
                    index: index,
                    model: labels[index],
                  ),
                )),
      ),
    );
  }
}
