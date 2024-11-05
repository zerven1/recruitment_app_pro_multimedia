import 'package:flutter/material.dart';
import 'package:recruitment_app_pro_multimedia/screens/recomended_section/components/recomended_list_widget.dart';

/// Recomended item model to create default data
class RecomendedItem {
  RecomendedItem({
    required this.title,
    this.icon = const Icon(
      Icons.favorite_border_outlined,
      color: Colors.white,
    ),
    this.backgroundColor = Colors.blue,
    this.height = RecomendedListItemHeight.big,
    this.backgroundImagePath,
  });

  final String title;
  final Widget icon;
  final Color backgroundColor;
  final RecomendedListItemHeight height;
  final String? backgroundImagePath;
}
