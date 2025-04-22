import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmenu/cubits/filter_cubit/filters_cubit.dart';
import 'package:foodmenu/model/filter_model.dart';

class FilterSwitch extends StatelessWidget {
  final FilterModel model;
  final int index;

  const FilterSwitch({super.key, required this.model, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${model.label} Free",
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              model.desc,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            )
          ],
        ),
        BlocBuilder<FiltersCubit, FiltersCubitState>(
          buildWhen: (prev, curr) =>
              prev.filters[model.type] != curr.filters[model.type],
          builder: (context, state) {
            return Switch(
                value: state.isSelected(model.type),
                onChanged: (value) {
                  context.read<FiltersCubit>().update(model.type, value);
                });
          },
        )
      ],
    );
  }
}
