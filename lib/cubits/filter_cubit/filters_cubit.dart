import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmenu/utils/enums.dart';

part 'filters_cubit_state.dart';

class FiltersCubit extends Cubit<FiltersCubitState> {
  FiltersCubit()
      : super(FiltersCubitState(filters: {
          FilterType.gluten: false,
          FilterType.lactose: false,
          FilterType.veg: false,
          FilterType.vegan: false,
        }));

  void update(FilterType type, bool value) {
    final newFilter = Map<FilterType, bool>.from(state.filters);
    newFilter[type] = value;
    emit(FiltersCubitState(filters: newFilter));
  }
}
