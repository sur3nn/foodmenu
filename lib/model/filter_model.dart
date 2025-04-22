import 'package:foodmenu/utils/enums.dart';

class FilterModel {
  final String label;
  final String desc;
  final FilterType type;

  FilterModel({
    required this.label,
    required this.desc,
    required this.type,
  });
}
