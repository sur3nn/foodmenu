part of 'filters_cubit.dart';

class FiltersCubitState {
  final Map<FilterType, bool> filters;

  FiltersCubitState({required this.filters});

  FiltersCubitState copyWith({Map<FilterType, bool>? filters}) {
    return FiltersCubitState(filters: filters ?? this.filters);
  }

  bool isSelected(FilterType type) => filters[type] ?? false;
}
